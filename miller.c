#include "miller.h"

void efp6_to_Jacefp(efp_jacobian_t *ANS,efp6_t *A){ 
  fp_set(&ANS->x,&A->x.x0.x1);
  fp_set(&ANS->y,&A->y.x1.x1);
  fp_set_ui(&ANS->z, 1);
  ANS->infinity = 0;
}

void efp6_to_efp(efp_t *ANS,efp6_t *A){ 
  fp_set(&ANS->x,&A->x.x0.x1);
  fp_set(&ANS->y,&A->y.x1.x1);
  ANS->infinity = A->infinity;
}

//double line 
void ff_lttp(fp6_t *f, efp_jacobian_t *S, efp_t *P){
  fp6_sqr(f,f);

  static fp_t tmp1_fp, tmp2_fp,tmp3_fp;
  static fp_t t1,t2,t3;
  static fp_t nextX,nextY,nextZ;

  static fp6_t tmp1_fp6;

  fp_sqr(&t1,&S->y);

  fp_mul(&t2,&S->x,&t1);
  fp_mul_ui(&t2,&t2,4);

  fp_sqr(&t3,&S->x);
  fp_mul_ui(&t3,&t3,3);

  fp_sqr(&nextX,&t3);
  fp_mul_ui(&tmp1_fp,&t2,2);
  fp_sub(&nextX,&nextX,&tmp1_fp);

  fp_sub(&nextY,&t2,&nextX);
  fp_mul(&nextY,&nextY,&t3);
  fp_sqr(&tmp1_fp,&t1);
  fp_mul_ui(&tmp1_fp,&tmp1_fp,8);
  fp_sub(&nextY,&nextY,&tmp1_fp);

  fp_mul_ui(&nextZ,&S->y,2);
  fp_mul(&nextZ,&nextZ,&S->z);

  fp_sqr(&tmp1_fp,&S->z);
  fp_mul(&tmp1_fp6.x1.x1,&nextZ,&tmp1_fp); //tmp1_fp = rambda_d
  fp_mul_base_inv(&tmp1_fp6.x1.x1,&tmp1_fp6.x1.x1);
  // fp6_mul(md,md,&tmp1_fp6); //can be lighter

  fp_mul(&tmp1_fp6.x1.x1,&tmp1_fp6.x1.x1,&P->y);

  fp_mul_ui(&tmp2_fp,&t1,2);
  fp_mul(&tmp3_fp,&t3,&S->x);
  fp_sub(&tmp1_fp6.x0.x0,&tmp3_fp,&tmp2_fp);

  fp_mul(&tmp1_fp6.x0.x2,&t3,&P->x);
  fp_mul(&tmp1_fp6.x0.x2,&tmp1_fp6.x0.x2,&tmp1_fp);
  fp_set_neg(&tmp1_fp6.x0.x2,&tmp1_fp6.x0.x2);
  fp_mul_base_inv(&tmp1_fp6.x0.x2,&tmp1_fp6.x0.x2);

  fp6_mul(f,f,&tmp1_fp6);

  fp_set(&S->x,&nextX);
  fp_set(&S->y,&nextY);
  fp_set(&S->z,&nextZ);
}

//add line
void ff_ltqp(fp6_t *f, efp_jacobian_t *S, efp_t *Q,efp_t *P){
  static fp_t tmp1_fp, tmp2_fp,tmp3_fp;
  static fp_t t1,t2,t3,t4,t5;
  static fp_t nextX,nextY,nextZ;

  static fp6_t tmp1_fp6;

  fp_sqr(&tmp1_fp,&S->z);
  fp_mul(&t1,&Q->x,&tmp1_fp);
  fp_sub(&t1,&t1,&S->x);

  fp_mul(&tmp1_fp,&tmp1_fp,&S->z);
  fp_mul(&t2,&tmp1_fp,&Q->y);
  fp_sub(&t2,&t2,&S->y);

  fp_sqr(&t3,&t1);

  fp_mul(&t4,&t1,&t3);

  fp_mul(&t5,&S->x,&t3);

  fp_sqr(&tmp1_fp,&t2);
  fp_mul_ui(&tmp2_fp,&t5,2);
  fp_add(&tmp2_fp,&tmp2_fp,&t4);
  fp_sub(&nextX,&tmp1_fp,&tmp2_fp);

  fp_sub(&nextY,&t5,&nextX);
  fp_mul(&nextY,&nextY,&t2);
  fp_mul(&tmp1_fp,&t4,&S->y);
  fp_sub(&nextY,&nextY,&tmp1_fp);

  fp_mul(&nextZ,&S->z,&t1);

  fp_set(&tmp1_fp6.x1.x2,&nextZ);
  fp_mul_base_inv(&tmp1_fp6.x1.x2,&tmp1_fp6.x1.x2);
  // fp6_mul(md,md,&tmp1_fp6);

  fp_mul(&tmp1_fp6.x1.x2,&tmp1_fp6.x1.x2,&P->y);

  fp_mul(&tmp1_fp6.x0.x0,&t2,&P->x);
  fp_set_neg(&tmp1_fp6.x0.x0,&tmp1_fp6.x0.x0);

  fp_mul(&tmp1_fp,&t2,&Q->x);
  fp_mul(&tmp2_fp,&nextZ,&Q->y);
  fp_sub(&tmp1_fp6.x0.x1,&tmp1_fp,&tmp2_fp);

  fp6_mul(f,f,&tmp1_fp6);

  fp_set(&S->x,&nextX);
  fp_set(&S->y,&nextY);
  fp_set(&S->z,&nextZ);
}

void miller_ate(fp6_t *f,efp6_t *P,efp6_t *Q){
    static efp_t mapped_P,mapped_Q;
    static efp_jacobian_t S;

    fp6_set_ui_ui(f,0);
    fp_set_ui(&f->x0.x0,1);

    fp_set(&mapped_P.x,&P->x.x0.x0);
    fp_set(&mapped_P.y,&P->y.x0.x0);
    mapped_P.infinity = 0;

    efp6_to_efp(&mapped_Q,Q);//twist

    efp6_to_Jacefp(&S,Q);

    mp_bitcnt_t i;
    for(i=(mpz_sizeinbase(miller_loop_s,2)-2);i!=-1;i--){
      ff_lttp(f,&S,&mapped_P);
      if(mpz_tstbit(miller_loop_s,i)==1){
        ff_ltqp(f,&S,&mapped_Q,&mapped_P);
      }
    }
}

// void miller_ate_7sparse(fp6_t *f,efp6_t *P,efp6_t *Q){
//   static efp_t mapped_P;
//   static efp3_t mapped_Q,T;

//   fp6_set_ui_ui(f,0);
//   fp_set_ui(&f->x0.x0,1);
//   efp6_to_efp(&mapped_P,P);
//   efp6_to_efp3(&mapped_Q,Q);
//   Pseudo_7sparse_mapping(&mapped_P,&mapped_Q);
//   efp3_set(&T,&mapped_Q);

//   mp_bitcnt_t i;
//   for(i=(mpz_sizeinbase(miller_loop_s,2)-2);i!=-1;i--){
//     //printf("%ld ",i);
//     ff_lttp_7sparse(f,&T,&mapped_P);
//     //if(tmp_T.infinity==1)  printf("無限遠点 (Miller_twist)\n");
//     if(mpz_tstbit(miller_loop_s,i)==1){
//       f_ltqp_7sparse(f,&T,&mapped_Q,&mapped_P);
//       //if(tmp_T.infinity==1)  printf("無限遠点 bit=1(Miller_twist)\n");
//     }
//   }
//   //efp3_println("T :",&T);
// }

// void ff_lttp_6sparse(fp6_t *f,efp3_t *T,efp_t *P){
//   //f = f^2 * lT,T(P), T = 2T を返す
//   static fp3_t tmp1,tmp2;
//   static fp3_t tmp_A,tmp_B;
//   static fp6_t tmp_f,tmp_l;
//   static efp_t tmp_P;
//   static efp3_t tmp_T;

//   if(T->infinity==1){
//     printf("Tが無限遠点(lttp_6sparse)\n");
//     //lT,T(P)=1である
//     fp6_sqr(f,f);
//     //T->infinity=1;
//     return;
//   }
//   //分母が0になるとき
//   if(fp3_cmp_zero(&T->y)==0){
//     printf("分母が0(lttp_6sparse)\n");
//     fp6_set_ui_ui(&tmp_l,0);
//     fp_set(&tmp_l.x0.x0,&P->x);
//     fp3_sub(&tmp_l.x0,&tmp_l.x0,&T->x);
//     fp6_sqr(f,f);
//     fp6_mul_6sparse(f,f,&tmp_l);
//     T->infinity=1;
//     return;
//   }

//   efp_set(&tmp_P,P);
//   efp3_set(&tmp_T,T);
//   fp6_set(&tmp_f,f);

//   //Aの計算: (3*xT^2 + (a*z^-2))/(2*yT)
//   fp3_sqr(&tmp2,&tmp_T.x);
//   fp3_add(&tmp1,&tmp2,&tmp2);
//   fp3_add(&tmp1,&tmp1,&tmp2);
//   fp_add(&tmp1.x5,&tmp1.x5,&curve_a_twist_x3);
//   fp3_add(&tmp2,&tmp_T.y,&tmp_T.y);
//   fp3_inv(&tmp2,&tmp2);
//   fp3_mul(&tmp_A,&tmp1,&tmp2);
//   //Bの計算: A*xT - yT
//   fp3_mul(&tmp_B,&tmp_A,&tmp_T.x);
//   fp3_sub(&tmp_B,&tmp_B,&tmp_T.y);

//   //Line計算
//   //lT,T(P)の計算,lT,T(P) = yP - z^(1/2)*A*xP + z^(3/2)*B
//   //上の式から、lT,Q(P) = yP - β*A*xP + β*α*B
//   //よって、yPは基底１の係数、 -A*xPは基底βの係数、　α*Bは基底βの係数
//   //よって、yPは基底１の係数、 α*B - A*xPは基底βの係数
//   fp6_set_ui_ui(&tmp_l,0);
//   fp_set(&tmp_l.x0.x0,&tmp_P.y);
//   //tmp1 = α*B
//   fp_mul_base(&tmp1.x0,&tmp_B.x6);
//   fp_set(&tmp1.x1,&tmp_B.x0);
//   fp_set(&tmp1.x2,&tmp_B.x1);
//   fp_set(&tmp1.x3,&tmp_B.x2);
//   fp_set(&tmp1.x4,&tmp_B.x3);
//   fp_set(&tmp1.x5,&tmp_B.x4);
//   fp_set(&tmp1.x6,&tmp_B.x5);
//   //tmp2 = A*xP
//   fp_mul(&tmp2.x0,&tmp_A.x0,&tmp_P.x);
//   fp_mul(&tmp2.x1,&tmp_A.x1,&tmp_P.x);
//   fp_mul(&tmp2.x2,&tmp_A.x2,&tmp_P.x);
//   fp_mul(&tmp2.x3,&tmp_A.x3,&tmp_P.x);
//   fp_mul(&tmp2.x4,&tmp_A.x4,&tmp_P.x);
//   fp_mul(&tmp2.x5,&tmp_A.x5,&tmp_P.x);
//   fp_mul(&tmp2.x6,&tmp_A.x6,&tmp_P.x);
//   fp3_sub(&tmp_l.x1,&tmp1,&tmp2);

//   //f = f^2 * lT,T(P)の計算
//   fp6_sqr(&tmp_f,&tmp_f);
//   fp6_mul_6sparse(&tmp_f,&tmp_f,&tmp_l);

//   //楕円二倍算
//   fp3_sqr(&tmp1,&tmp_A);
//   fp3_sub(&tmp1,&tmp1,&tmp_T.x);
//   fp3_sub(&tmp1,&tmp1,&tmp_T.x);
//   fp3_sub(&tmp2,&tmp_T.x,&tmp1);
//   fp3_mul(&tmp2,&tmp2,&tmp_A);
//   fp3_sub(&tmp2,&tmp2,&tmp_T.y);

//   //結果を格納
//   fp6_set(f,&tmp_f);
//   fp3_set(&T->x,&tmp1);
//   fp3_set(&T->y,&tmp2);
// }

// void ff_lttp_7sparse(fp6_t *f,efp3_t *T,efp_t *P){
//   //f = f^2 * lT,T(P), T = 2T を返す
//   static fp3_t tmp1,tmp2;
//   static fp3_t tmp_A,tmp_B;
//   static fp6_t tmp_f,tmp_l;
//   static efp_t tmp_P;
//   static efp3_t tmp_T;

//   if(T->infinity==1){
//     printf("Tが無限遠点(lttp_7sparse)\n");
//     //lT,T(P)=1である
//     fp6_sqr(f,f);
//     //T->infinity=1;
//     return;
//   }
//   //分母が0になるとき
//   if(fp3_cmp_zero(&T->y)==0){
//     printf("分母が0(lttp_7sparse)\n");
//     fp6_set_ui_ui(&tmp_l,0);
//     fp_set(&tmp_l.x0.x0,&P->x);
//     fp3_sub(&tmp_l.x0,&tmp_l.x0,&T->x);
//     fp6_sqr(f,f);
//     fp6_mul_6sparse(f,f,&tmp_l);
//     T->infinity=1;
//     return;
//   }

//   efp_set(&tmp_P,P);
//   efp3_set(&tmp_T,T);
//   fp6_set(&tmp_f,f);

//   //Aの計算: (3*xT^2 + curve_a_7sparse_x3)/(2*yT)
//   fp3_sqr(&tmp2,&tmp_T.x);
//   fp3_add(&tmp1,&tmp2,&tmp2);
//   fp3_add(&tmp1,&tmp1,&tmp2);
//   fp_add(&tmp1.x5,&tmp1.x5,&curve_a_7sparse_x3);
//   fp3_add(&tmp2,&tmp_T.y,&tmp_T.y);
//   fp3_inv(&tmp2,&tmp2);
//   fp3_mul(&tmp_A,&tmp1,&tmp2);
//   //Bの計算: A*xT - yT
//   fp3_mul(&tmp_B,&tmp_A,&tmp_T.x);
//   fp3_sub(&tmp_B,&tmp_B,&tmp_T.y);

//   //Line計算
//   //lT,T(P)の計算,lT,T(P) = 1 - z^(1/2)*A + z^(3/2)*B*line_7sparse_x0
//   //上の式から、lT,Q(P) = 1 - β*A + β*α*B*line_7sparse_x0
//   //よって、1は基底１の係数、 -Aは基底βの係数、　α*B*line_7sparse_x0は基底βの係数
//   //よって、1は基底１の係数、 α*B*line_7sparse_x0 - Aは基底βの係数
//   fp6_set_ui_ui(&tmp_l,0);
//   fp_set_ui(&tmp_l.x0.x0,1);
//   //tmp1 = α*B*line_7sparse_x0
//   fp_mul(&tmp1.x0,&tmp_B.x6,&line_7sparse_x0);
//   fp_mul_base(&tmp1.x0,&tmp1.x0);
//   fp_mul(&tmp1.x1,&tmp_B.x0,&line_7sparse_x0);
//   fp_mul(&tmp1.x2,&tmp_B.x1,&line_7sparse_x0);
//   fp_mul(&tmp1.x3,&tmp_B.x2,&line_7sparse_x0);
//   fp_mul(&tmp1.x4,&tmp_B.x3,&line_7sparse_x0);
//   fp_mul(&tmp1.x5,&tmp_B.x4,&line_7sparse_x0);
//   fp_mul(&tmp1.x6,&tmp_B.x5,&line_7sparse_x0);
//   fp3_sub(&tmp_l.x1,&tmp1,&tmp_A);

//   //f = f^2 * lT,T(P)の計算
//   fp6_sqr(&tmp_f,&tmp_f);
//   fp6_mul_7sparse(&tmp_f,&tmp_f,&tmp_l);

//   //楕円二倍算
//   fp3_sqr(&tmp1,&tmp_A);
//   fp3_sub(&tmp1,&tmp1,&tmp_T.x);
//   fp3_sub(&tmp1,&tmp1,&tmp_T.x);
//   fp3_sub(&tmp2,&tmp_T.x,&tmp1);
//   fp3_mul(&tmp2,&tmp2,&tmp_A);
//   fp3_sub(&tmp2,&tmp2,&tmp_T.y);

//   //結果を格納
//   fp6_set(f,&tmp_f);
//   fp3_set(&T->x,&tmp1);
//   fp3_set(&T->y,&tmp2);
// }

// void f_ltqp_6sparse(fp6_t *f,efp3_t *T,efp3_t *Q,efp_t *P){
//   //f = f * lT,Q(P), T = T + Q を返す
//   static fp3_t tmp1,tmp2;
//   static fp3_t tmp_A,tmp_B;
//   static fp6_t tmp_f,tmp_l;
//   static efp_t tmp_P;
//   static efp3_t tmp_T,tmp_Q;

//   if(T->infinity==1){
//     printf("Tが無限遠点(ltqp_6sparse)\n");
//     //lT,Q(P)=1である
//     //T->infinity=1;
//     return;
//   }
//   //分母が0になるとき
//   if(fp3_cmp(&Q->x,&T->x)==0){
//     if(fp3_cmp_zero(&T->y)==0  || fp3_cmp(&Q->y,&T->y)!=0){
//       printf("分母が0(ltqp_6sparse)\n");
//       fp6_set_ui_ui(&tmp_l,0);
//       fp_set(&tmp_l.x0.x0,&P->x);
//       fp3_sub(&tmp_l.x0,&tmp_l.x0,&T->x);
//       fp6_mul_6sparse(f,f,&tmp_l);
//       //P+P'=O
//       T->infinity=1;
//     }
//     else{
//       //T+T=2P
//       ff_lttp_6sparse(f,T,P);
//     }
//     return;
//   }

//   efp_set(&tmp_P,P);
//   efp3_set(&tmp_T,T);
//   efp3_set(&tmp_Q,Q);
//   fp6_set(&tmp_f,f);

//   //Aの計算: (yQ-yT)/(xQ-xT)
//   fp3_sub(&tmp1,&tmp_Q.y,&tmp_T.y);
//   fp3_sub(&tmp2,&tmp_Q.x,&tmp_T.x);
//   fp3_inv(&tmp2,&tmp2);
//   fp3_mul(&tmp_A,&tmp1,&tmp2);
//   //Bの計算: A*xT - yT
//   fp3_mul(&tmp_B,&tmp_A,&tmp_T.x);
//   fp3_sub(&tmp_B,&tmp_B,&tmp_T.y);

//   //Line計算
//   //lT,Q(P)の計算,lT,Q(P) = yP - z^(1/2)*A*xP + z^(3/2)*B
//   //上の式から、lT,Q(P) = yP - β*A*xP + β*α*B
//   //よって、yPは基底１の係数、 -A*xPは基底βの係数、　α*Bは基底βの係数
//   //よって、yPは基底１の係数、 α*B - A*xPは基底βの係数
//   fp6_set_ui_ui(&tmp_l,0);
//   fp_set(&tmp_l.x0.x0,&tmp_P.y);
//   //tmp1 = α*B
//   fp_mul_base(&tmp1.x0,&tmp_B.x6);
//   fp_set(&tmp1.x1,&tmp_B.x0);
//   fp_set(&tmp1.x2,&tmp_B.x1);
//   fp_set(&tmp1.x3,&tmp_B.x2);
//   fp_set(&tmp1.x4,&tmp_B.x3);
//   fp_set(&tmp1.x5,&tmp_B.x4);
//   fp_set(&tmp1.x6,&tmp_B.x5);
//   //tmp2 = A*xP
//   fp_mul(&tmp2.x0,&tmp_A.x0,&tmp_P.x);
//   fp_mul(&tmp2.x1,&tmp_A.x1,&tmp_P.x);
//   fp_mul(&tmp2.x2,&tmp_A.x2,&tmp_P.x);
//   fp_mul(&tmp2.x3,&tmp_A.x3,&tmp_P.x);
//   fp_mul(&tmp2.x4,&tmp_A.x4,&tmp_P.x);
//   fp_mul(&tmp2.x5,&tmp_A.x5,&tmp_P.x);
//   fp_mul(&tmp2.x6,&tmp_A.x6,&tmp_P.x);
//   fp3_sub(&tmp_l.x1,&tmp1,&tmp2);

//   //f = f * lT,Q(P)の計算
//   fp6_mul_6sparse(&tmp_f,&tmp_f,&tmp_l);

//   //楕円加算
//   fp3_sqr(&tmp1,&tmp_A);
//   fp3_sub(&tmp1,&tmp1,&tmp_T.x);
//   fp3_sub(&tmp1,&tmp1,&tmp_Q.x);
//   fp3_sub(&tmp2,&tmp_T.x,&tmp1);
//   fp3_mul(&tmp2,&tmp2,&tmp_A);
//   fp3_sub(&tmp2,&tmp2,&tmp_T.y);

//   //結果を格納
//   fp6_set(f,&tmp_f);
//   fp3_set(&T->x,&tmp1);
//   fp3_set(&T->y,&tmp2);
// }

// void f_ltqp_7sparse(fp6_t *f,efp3_t *T,efp3_t *Q,efp_t *P){
//   //f = f * lT,Q(P), T = T + Q を返す
//   static fp3_t tmp1,tmp2;
//   static fp3_t tmp_A,tmp_B;
//   static fp6_t tmp_f,tmp_l;
//   static efp_t tmp_P;
//   static efp3_t tmp_T,tmp_Q;

//   if(T->infinity==1){
//     printf("Tが無限遠点(ltqp_7sparse)\n");
//     //lT,Q(P)=1である
//     //T->infinity=1;
//     return;
//   }
//   //分母が0になるとき
//   if(fp3_cmp(&Q->x,&T->x)==0){
//     if(fp3_cmp_zero(&T->y)==0  || fp3_cmp(&Q->y,&T->y)!=0){
//       printf("分母が0(ltqp_7sparse)\n");
//       fp6_set_ui_ui(&tmp_l,0);
//       fp_set(&tmp_l.x0.x0,&P->x);
//       fp3_sub(&tmp_l.x0,&tmp_l.x0,&T->x);
//       fp6_mul_7sparse(f,f,&tmp_l);
//       //P+P'=O
//       T->infinity=1;
//     }
//     else{
//       //T+T=2P
//       ff_lttp_7sparse(f,T,P);
//     }
//     return;
//   }

//   efp_set(&tmp_P,P);
//   efp3_set(&tmp_T,T);
//   efp3_set(&tmp_Q,Q);
//   fp6_set(&tmp_f,f);

//   //Aの計算: (yQ-yT)/(xQ-xT)
//   fp3_sub(&tmp1,&tmp_Q.y,&tmp_T.y);
//   fp3_sub(&tmp2,&tmp_Q.x,&tmp_T.x);
//   fp3_inv(&tmp2,&tmp2);
//   fp3_mul(&tmp_A,&tmp1,&tmp2);
//   //Bの計算: A*xT - yT
//   fp3_mul(&tmp_B,&tmp_A,&tmp_T.x);
//   fp3_sub(&tmp_B,&tmp_B,&tmp_T.y);

//   //Line計算
//   //lT,Q(P)の計算,lT,Q(P) = 1 - z^(1/2)*A + z^(3/2)*B*line_7sparse_x0
//   //上の式から、lT,Q(P) = 1 - β*A + β*α*B*line_7sparse_x0
//   //よって、1は基底１の係数、 -Aは基底βの係数、　α*B*line_7sparse_x0は基底βの係数
//   //よって、1は基底１の係数、 α*B*line_7sparse_x0 - Aは基底βの係数
//   fp6_set_ui_ui(&tmp_l,0);
//   fp_set_ui(&tmp_l.x0.x0,1);
//   //tmp1 = α*B*line_7sparse_x0
//   fp_mul(&tmp1.x0,&tmp_B.x6,&line_7sparse_x0);
//   fp_mul_base(&tmp1.x0,&tmp1.x0);
//   fp_mul(&tmp1.x1,&tmp_B.x0,&line_7sparse_x0);
//   fp_mul(&tmp1.x2,&tmp_B.x1,&line_7sparse_x0);
//   fp_mul(&tmp1.x3,&tmp_B.x2,&line_7sparse_x0);
//   fp_mul(&tmp1.x4,&tmp_B.x3,&line_7sparse_x0);
//   fp_mul(&tmp1.x5,&tmp_B.x4,&line_7sparse_x0);
//   fp_mul(&tmp1.x6,&tmp_B.x5,&line_7sparse_x0);
//   fp3_sub(&tmp_l.x1,&tmp1,&tmp_A);

//   //f = f * lT,Q(P)の計算
//   fp6_mul_7sparse(&tmp_f,&tmp_f,&tmp_l);

//   //楕円加算
//   fp3_sqr(&tmp1,&tmp_A);
//   fp3_sub(&tmp1,&tmp1,&tmp_T.x);
//   fp3_sub(&tmp1,&tmp1,&tmp_Q.x);
//   fp3_sub(&tmp2,&tmp_T.x,&tmp1);
//   fp3_mul(&tmp2,&tmp2,&tmp_A);
//   fp3_sub(&tmp2,&tmp2,&tmp_T.y);

//   //結果を格納
//   fp6_set(f,&tmp_f);
//   fp3_set(&T->x,&tmp1);
//   fp3_set(&T->y,&tmp2);
// }

// void Pseudo_7sparse_mapping(efp_t *P,efp3_t *Q){
//   efp_t tmp_P;
//   efp3_t tmp_Q;
//   fp_t tmp1,tmp2,tmp3,tmp4;
//   fp_init(&tmp1);
//   fp_init(&tmp2);
//   fp_init(&tmp3);
//   fp_init(&tmp4);
//   efp_set(&tmp_P,P);
//   efp3_set(&tmp_Q,Q);

//   fp_mul(&tmp1,&tmp_P.x,&tmp_P.y);
//   fp_inv(&tmp1,&tmp1);
//   fp_sqr(&tmp2,&tmp_P.x);
//   fp_mul(&tmp2,&tmp2,&tmp1);
//   fp_mul(&tmp3,&tmp1,&tmp_P.y);
//   fp_sqr(&tmp4,&tmp2);

//   //P_hat(x_p_hat,y_p_hat) = (x_p^3*y_p^-2,x_p^3*y_p^-2)
//   fp_mul(&P->x,&tmp_P.x,&tmp4);
//   fp_set(&P->y,&P->x);
//   //Q_hat(x_q_hat,y_q_hat) = (x_p^2*y_p^-2*x_q,x_p^3*y_p^-3*y_q)
//   fp_mul(&Q->x.x0,&tmp_Q.x.x0,&tmp4);
//   fp_mul(&Q->x.x1,&tmp_Q.x.x1,&tmp4);
//   fp_mul(&Q->x.x2,&tmp_Q.x.x2,&tmp4);
//   fp_mul(&Q->x.x3,&tmp_Q.x.x3,&tmp4);
//   fp_mul(&Q->x.x4,&tmp_Q.x.x4,&tmp4);
//   fp_mul(&Q->x.x5,&tmp_Q.x.x5,&tmp4);
//   fp_mul(&Q->x.x6,&tmp_Q.x.x6,&tmp4);
//   fp_mul(&tmp1,&tmp2,&tmp4);
//   fp_mul(&Q->y.x0,&tmp_Q.y.x0,&tmp1);
//   fp_mul(&Q->y.x1,&tmp_Q.y.x1,&tmp1);
//   fp_mul(&Q->y.x2,&tmp_Q.y.x2,&tmp1);
//   fp_mul(&Q->y.x3,&tmp_Q.y.x3,&tmp1);
//   fp_mul(&Q->y.x4,&tmp_Q.y.x4,&tmp1);
//   fp_mul(&Q->y.x5,&tmp_Q.y.x5,&tmp1);
//   fp_mul(&Q->y.x6,&tmp_Q.y.x6,&tmp1);
//   //7sparse乗算をするときに使う (xP^-3)*(yP^2)
//   fp_mul(&line_7sparse_x0,&tmp3,&tmp_P.y);
//   fp_sqr(&line_7sparse_x0,&line_7sparse_x0);
//   fp_mul(&line_7sparse_x0,&line_7sparse_x0,&tmp3);

//   //(ツイスト曲線の(az^-2))*(xP^4)*(yP^-4)
//   fp_sqr(&curve_a_7sparse_x3,&tmp4);
//   fp_mul(&curve_a_7sparse_x3,&curve_a_7sparse_x3,&curve_a_twist_x3);
// }

// void fp6_mul_6sparse(fp6_t *ANS,fp6_t *A,fp6_t *B_6sparse){
//   static fp6_t tmp_A,tmp_B;
//   static fp3_t tmp1,tmp2,tmp3;
//   fp6_set(&tmp_A,A);
//   fp6_set(&tmp_B,B_6sparse);

//   fp3_add(&tmp1,&tmp_A.x0,&tmp_A.x1);
//   fp_add(&tmp2.x0,&tmp_B.x0.x0,&tmp_B.x1.x0);
//   fp_set(&tmp2.x1,&tmp_B.x1.x1);
//   fp_set(&tmp2.x2,&tmp_B.x1.x2);
//   fp_set(&tmp2.x3,&tmp_B.x1.x3);
//   fp_set(&tmp2.x4,&tmp_B.x1.x4);
//   fp_set(&tmp2.x5,&tmp_B.x1.x5);
//   fp_set(&tmp2.x6,&tmp_B.x1.x6);
//   fp3_mul(&tmp3,&tmp1,&tmp2);
//   fp_mul(&tmp1.x0,&tmp_A.x0.x0,&tmp_B.x0.x0);
//   fp_mul(&tmp1.x1,&tmp_A.x0.x1,&tmp_B.x0.x0);
//   fp_mul(&tmp1.x2,&tmp_A.x0.x2,&tmp_B.x0.x0);
//   fp_mul(&tmp1.x3,&tmp_A.x0.x3,&tmp_B.x0.x0);
//   fp_mul(&tmp1.x4,&tmp_A.x0.x4,&tmp_B.x0.x0);
//   fp_mul(&tmp1.x5,&tmp_A.x0.x5,&tmp_B.x0.x0);
//   fp_mul(&tmp1.x6,&tmp_A.x0.x6,&tmp_B.x0.x0);
//   fp3_mul(&tmp2,&tmp_A.x1,&tmp_B.x1);

//   fp3_sub(&ANS->x1,&tmp3,&tmp1);
//   fp3_sub(&ANS->x1,&ANS->x1,&tmp2);

//   fp_mul_base(&tmp3.x0,&tmp2.x6);
//   fp_set(&tmp3.x1,&tmp2.x0);
//   fp_set(&tmp3.x2,&tmp2.x1);
//   fp_set(&tmp3.x3,&tmp2.x2);
//   fp_set(&tmp3.x4,&tmp2.x3);
//   fp_set(&tmp3.x5,&tmp2.x4);
//   fp_set(&tmp3.x6,&tmp2.x5);
//   fp3_add(&ANS->x0,&tmp1,&tmp3);
// }

// void fp6_mul_7sparse(fp6_t *ANS,fp6_t *A,fp6_t *B_7sparse){
//   static fp6_t tmp_A,tmp_B;
//   static fp3_t tmp1,tmp2;
//   fp6_set(&tmp_A,A);
//   fp6_set(&tmp_B,B_7sparse);

//   fp3_mul(&tmp1,&tmp_A.x1,&tmp_B.x1);
//   fp_mul_base(&tmp2.x0,&tmp1.x6);
//   fp_set(&tmp2.x1,&tmp1.x0);
//   fp_set(&tmp2.x2,&tmp1.x1);
//   fp_set(&tmp2.x3,&tmp1.x2);
//   fp_set(&tmp2.x4,&tmp1.x3);
//   fp_set(&tmp2.x5,&tmp1.x4);
//   fp_set(&tmp2.x6,&tmp1.x5);
//   fp3_add(&ANS->x0,&tmp_A.x0,&tmp2);

//   fp3_mul(&tmp1,&tmp_A.x0,&tmp_B.x1);
//   fp3_add(&ANS->x1,&tmp_A.x1,&tmp1);
// }

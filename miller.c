#include "miller.h"

void efp14_to_efp(efp_t *ANS,efp14_t *A){
  ANS->infinity=A->infinity;
  fp_set(&ANS->x,&A->x.x0.x0);
  fp_set(&ANS->y,&A->y.x0.x0);
}

void efp_to_efp14(efp14_t *ANS,efp_t *A){
  ANS->infinity=A->infinity;
  fp14_set_ui_ui(&ANS->x,0);
  fp14_set_ui_ui(&ANS->y,0);
  fp_set(&ANS->x.x0.x0,&A->x);
  fp_set(&ANS->y.x0.x0,&A->y);
}

void efp14_to_efp7(efp7_t *ANS,efp14_t *A){
  ANS->infinity=A->infinity;
  fp_set(&ANS->x.x0,&A->x.x0.x1);
  fp_set(&ANS->x.x1,&A->x.x0.x2);
  fp_set(&ANS->x.x2,&A->x.x0.x3);
  fp_set(&ANS->x.x3,&A->x.x0.x4);
  fp_set(&ANS->x.x4,&A->x.x0.x5);
  fp_set(&ANS->x.x5,&A->x.x0.x6);
  fp_mul(&ANS->x.x6,&A->x.x0.x0,&base_c_inv);

  fp_set(&ANS->y.x0,&A->y.x1.x1);
  fp_set(&ANS->y.x1,&A->y.x1.x2);
  fp_set(&ANS->y.x2,&A->y.x1.x3);
  fp_set(&ANS->y.x3,&A->y.x1.x4);
  fp_set(&ANS->y.x4,&A->y.x1.x5);
  fp_set(&ANS->y.x5,&A->y.x1.x6);
  fp_mul(&ANS->y.x6,&A->y.x1.x0,&base_c_inv);
}

void efp7_to_efp14(efp14_t *ANS,efp7_t *A){
  ANS->infinity=A->infinity;
  fp_mul_base(&ANS->x.x0.x0,&A->x.x6);
  fp_set(&ANS->x.x0.x1,&A->x.x0);
  fp_set(&ANS->x.x0.x2,&A->x.x1);
  fp_set(&ANS->x.x0.x3,&A->x.x2);
  fp_set(&ANS->x.x0.x4,&A->x.x3);
  fp_set(&ANS->x.x0.x5,&A->x.x4);
  fp_set(&ANS->x.x0.x6,&A->x.x5);

  fp7_set_ui_ui(&ANS->x.x1,0);
  fp7_set_ui_ui(&ANS->y.x0,0);
  fp_mul_base(&ANS->y.x1.x0,&A->y.x6);
  fp_set(&ANS->y.x1.x1,&A->y.x0);
  fp_set(&ANS->y.x1.x2,&A->y.x1);
  fp_set(&ANS->y.x1.x3,&A->y.x2);
  fp_set(&ANS->y.x1.x4,&A->y.x3);
  fp_set(&ANS->y.x1.x5,&A->y.x4);
  fp_set(&ANS->y.x1.x6,&A->y.x5);
}

void ff_lttp_6sparse(fp14_t *f,efp7_t *T,efp_t *P){
  //f = f^2 * lT,T(P), T = 2T を返す
  static fp7_t tmp1,tmp2;
  static fp7_t tmp_A,tmp_B;
  static fp14_t tmp_f,tmp_l;
  static efp_t tmp_P;
  static efp7_t tmp_T;

  if(T->infinity==1){
    printf("Tが無限遠点(lttp_6sparse)\n");
    //lT,T(P)=1である
    fp14_sqr(f,f);
    //T->infinity=1;
    return;
  }
  //分母が0になるとき
  if(fp7_cmp_zero(&T->y)==0){
    printf("分母が0(lttp_6sparse)\n");
    fp14_set_ui_ui(&tmp_l,0);
    fp_set(&tmp_l.x0.x0,&P->x);
    fp7_sub(&tmp_l.x0,&tmp_l.x0,&T->x);
    fp14_sqr(f,f);
    fp14_mul_6sparse(f,f,&tmp_l);
    T->infinity=1;
    return;
  }

  efp_set(&tmp_P,P);
  efp7_set(&tmp_T,T);
  fp14_set(&tmp_f,f);

  //Aの計算: (3*xT^2 + (a*z^-2))/(2*yT)
  fp7_sqr(&tmp2,&tmp_T.x);
  fp7_add(&tmp1,&tmp2,&tmp2);
  fp7_add(&tmp1,&tmp1,&tmp2);
  fp_add(&tmp1.x5,&tmp1.x5,&curve_a_twist_x3);
  fp7_add(&tmp2,&tmp_T.y,&tmp_T.y);
  fp7_inv(&tmp2,&tmp2);
  fp7_mul(&tmp_A,&tmp1,&tmp2);
  //Bの計算: A*xT - yT
  fp7_mul(&tmp_B,&tmp_A,&tmp_T.x);
  fp7_sub(&tmp_B,&tmp_B,&tmp_T.y);

  //Line計算
  //lT,T(P)の計算,lT,T(P) = yP - z^(1/2)*A*xP + z^(3/2)*B
  //上の式から、lT,Q(P) = yP - β*A*xP + β*α*B
  //よって、yPは基底１の係数、 -A*xPは基底βの係数、　α*Bは基底βの係数
  //よって、yPは基底１の係数、 α*B - A*xPは基底βの係数
  fp14_set_ui_ui(&tmp_l,0);
  fp_set(&tmp_l.x0.x0,&tmp_P.y);
  //tmp1 = α*B
  fp_mul_base(&tmp1.x0,&tmp_B.x6);
  fp_set(&tmp1.x1,&tmp_B.x0);
  fp_set(&tmp1.x2,&tmp_B.x1);
  fp_set(&tmp1.x3,&tmp_B.x2);
  fp_set(&tmp1.x4,&tmp_B.x3);
  fp_set(&tmp1.x5,&tmp_B.x4);
  fp_set(&tmp1.x6,&tmp_B.x5);
  //tmp2 = A*xP
  fp_mul(&tmp2.x0,&tmp_A.x0,&tmp_P.x);
  fp_mul(&tmp2.x1,&tmp_A.x1,&tmp_P.x);
  fp_mul(&tmp2.x2,&tmp_A.x2,&tmp_P.x);
  fp_mul(&tmp2.x3,&tmp_A.x3,&tmp_P.x);
  fp_mul(&tmp2.x4,&tmp_A.x4,&tmp_P.x);
  fp_mul(&tmp2.x5,&tmp_A.x5,&tmp_P.x);
  fp_mul(&tmp2.x6,&tmp_A.x6,&tmp_P.x);
  fp7_sub(&tmp_l.x1,&tmp1,&tmp2);

  //f = f^2 * lT,T(P)の計算
  fp14_sqr(&tmp_f,&tmp_f);
  fp14_mul_6sparse(&tmp_f,&tmp_f,&tmp_l);

  //楕円二倍算
  fp7_sqr(&tmp1,&tmp_A);
  fp7_sub(&tmp1,&tmp1,&tmp_T.x);
  fp7_sub(&tmp1,&tmp1,&tmp_T.x);
  fp7_sub(&tmp2,&tmp_T.x,&tmp1);
  fp7_mul(&tmp2,&tmp2,&tmp_A);
  fp7_sub(&tmp2,&tmp2,&tmp_T.y);

  //結果を格納
  fp14_set(f,&tmp_f);
  fp7_set(&T->x,&tmp1);
  fp7_set(&T->y,&tmp2);
}

void ff_lttp_7sparse(fp14_t *f,efp7_t *T,efp_t *P){
  //f = f^2 * lT,T(P), T = 2T を返す
  static fp7_t tmp1,tmp2;
  static fp7_t tmp_A,tmp_B;
  static fp14_t tmp_f,tmp_l;
  static efp_t tmp_P;
  static efp7_t tmp_T;

  if(T->infinity==1){
    printf("Tが無限遠点(lttp_7sparse)\n");
    //lT,T(P)=1である
    fp14_sqr(f,f);
    //T->infinity=1;
    return;
  }
  //分母が0になるとき
  if(fp7_cmp_zero(&T->y)==0){
    printf("分母が0(lttp_7sparse)\n");
    fp14_set_ui_ui(&tmp_l,0);
    fp_set(&tmp_l.x0.x0,&P->x);
    fp7_sub(&tmp_l.x0,&tmp_l.x0,&T->x);
    fp14_sqr(f,f);
    fp14_mul_6sparse(f,f,&tmp_l);
    T->infinity=1;
    return;
  }

  efp_set(&tmp_P,P);
  efp7_set(&tmp_T,T);
  fp14_set(&tmp_f,f);

  //Aの計算: (3*xT^2 + curve_a_7sparse_x3)/(2*yT)
  fp7_sqr(&tmp2,&tmp_T.x);
  fp7_add(&tmp1,&tmp2,&tmp2);
  fp7_add(&tmp1,&tmp1,&tmp2);
  fp_add(&tmp1.x5,&tmp1.x5,&curve_a_7sparse_x3);
  fp7_add(&tmp2,&tmp_T.y,&tmp_T.y);
  fp7_inv(&tmp2,&tmp2);
  fp7_mul(&tmp_A,&tmp1,&tmp2);
  //Bの計算: A*xT - yT
  fp7_mul(&tmp_B,&tmp_A,&tmp_T.x);
  fp7_sub(&tmp_B,&tmp_B,&tmp_T.y);

  //Line計算
  //lT,T(P)の計算,lT,T(P) = 1 - z^(1/2)*A + z^(3/2)*B*line_7sparse_x0
  //上の式から、lT,Q(P) = 1 - β*A + β*α*B*line_7sparse_x0
  //よって、1は基底１の係数、 -Aは基底βの係数、　α*B*line_7sparse_x0は基底βの係数
  //よって、1は基底１の係数、 α*B*line_7sparse_x0 - Aは基底βの係数
  fp14_set_ui_ui(&tmp_l,0);
  fp_set_ui(&tmp_l.x0.x0,1);
  //tmp1 = α*B*line_7sparse_x0
  fp_mul(&tmp1.x0,&tmp_B.x6,&line_7sparse_x0);
  fp_mul_base(&tmp1.x0,&tmp1.x0);
  fp_mul(&tmp1.x1,&tmp_B.x0,&line_7sparse_x0);
  fp_mul(&tmp1.x2,&tmp_B.x1,&line_7sparse_x0);
  fp_mul(&tmp1.x3,&tmp_B.x2,&line_7sparse_x0);
  fp_mul(&tmp1.x4,&tmp_B.x3,&line_7sparse_x0);
  fp_mul(&tmp1.x5,&tmp_B.x4,&line_7sparse_x0);
  fp_mul(&tmp1.x6,&tmp_B.x5,&line_7sparse_x0);
  fp7_sub(&tmp_l.x1,&tmp1,&tmp_A);

  //f = f^2 * lT,T(P)の計算
  fp14_sqr(&tmp_f,&tmp_f);
  fp14_mul_7sparse(&tmp_f,&tmp_f,&tmp_l);

  //楕円二倍算
  fp7_sqr(&tmp1,&tmp_A);
  fp7_sub(&tmp1,&tmp1,&tmp_T.x);
  fp7_sub(&tmp1,&tmp1,&tmp_T.x);
  fp7_sub(&tmp2,&tmp_T.x,&tmp1);
  fp7_mul(&tmp2,&tmp2,&tmp_A);
  fp7_sub(&tmp2,&tmp2,&tmp_T.y);

  //結果を格納
  fp14_set(f,&tmp_f);
  fp7_set(&T->x,&tmp1);
  fp7_set(&T->y,&tmp2);
}

void f_ltqp_6sparse(fp14_t *f,efp7_t *T,efp7_t *Q,efp_t *P){
  //f = f * lT,Q(P), T = T + Q を返す
  static fp7_t tmp1,tmp2;
  static fp7_t tmp_A,tmp_B;
  static fp14_t tmp_f,tmp_l;
  static efp_t tmp_P;
  static efp7_t tmp_T,tmp_Q;

  if(T->infinity==1){
    printf("Tが無限遠点(ltqp_6sparse)\n");
    //lT,Q(P)=1である
    //T->infinity=1;
    return;
  }
  //分母が0になるとき
  if(fp7_cmp(&Q->x,&T->x)==0){
    if(fp7_cmp_zero(&T->y)==0  || fp7_cmp(&Q->y,&T->y)!=0){
      printf("分母が0(ltqp_6sparse)\n");
      fp14_set_ui_ui(&tmp_l,0);
      fp_set(&tmp_l.x0.x0,&P->x);
      fp7_sub(&tmp_l.x0,&tmp_l.x0,&T->x);
      fp14_mul_6sparse(f,f,&tmp_l);
      //P+P'=O
      T->infinity=1;
    }
    else{
      //T+T=2P
      ff_lttp_6sparse(f,T,P);
    }
    return;
  }

  efp_set(&tmp_P,P);
  efp7_set(&tmp_T,T);
  efp7_set(&tmp_Q,Q);
  fp14_set(&tmp_f,f);

  //Aの計算: (yQ-yT)/(xQ-xT)
  fp7_sub(&tmp1,&tmp_Q.y,&tmp_T.y);
  fp7_sub(&tmp2,&tmp_Q.x,&tmp_T.x);
  fp7_inv(&tmp2,&tmp2);
  fp7_mul(&tmp_A,&tmp1,&tmp2);
  //Bの計算: A*xT - yT
  fp7_mul(&tmp_B,&tmp_A,&tmp_T.x);
  fp7_sub(&tmp_B,&tmp_B,&tmp_T.y);

  //Line計算
  //lT,Q(P)の計算,lT,Q(P) = yP - z^(1/2)*A*xP + z^(3/2)*B
  //上の式から、lT,Q(P) = yP - β*A*xP + β*α*B
  //よって、yPは基底１の係数、 -A*xPは基底βの係数、　α*Bは基底βの係数
  //よって、yPは基底１の係数、 α*B - A*xPは基底βの係数
  fp14_set_ui_ui(&tmp_l,0);
  fp_set(&tmp_l.x0.x0,&tmp_P.y);
  //tmp1 = α*B
  fp_mul_base(&tmp1.x0,&tmp_B.x6);
  fp_set(&tmp1.x1,&tmp_B.x0);
  fp_set(&tmp1.x2,&tmp_B.x1);
  fp_set(&tmp1.x3,&tmp_B.x2);
  fp_set(&tmp1.x4,&tmp_B.x3);
  fp_set(&tmp1.x5,&tmp_B.x4);
  fp_set(&tmp1.x6,&tmp_B.x5);
  //tmp2 = A*xP
  fp_mul(&tmp2.x0,&tmp_A.x0,&tmp_P.x);
  fp_mul(&tmp2.x1,&tmp_A.x1,&tmp_P.x);
  fp_mul(&tmp2.x2,&tmp_A.x2,&tmp_P.x);
  fp_mul(&tmp2.x3,&tmp_A.x3,&tmp_P.x);
  fp_mul(&tmp2.x4,&tmp_A.x4,&tmp_P.x);
  fp_mul(&tmp2.x5,&tmp_A.x5,&tmp_P.x);
  fp_mul(&tmp2.x6,&tmp_A.x6,&tmp_P.x);
  fp7_sub(&tmp_l.x1,&tmp1,&tmp2);

  //f = f * lT,Q(P)の計算
  fp14_mul_6sparse(&tmp_f,&tmp_f,&tmp_l);

  //楕円加算
  fp7_sqr(&tmp1,&tmp_A);
  fp7_sub(&tmp1,&tmp1,&tmp_T.x);
  fp7_sub(&tmp1,&tmp1,&tmp_Q.x);
  fp7_sub(&tmp2,&tmp_T.x,&tmp1);
  fp7_mul(&tmp2,&tmp2,&tmp_A);
  fp7_sub(&tmp2,&tmp2,&tmp_T.y);

  //結果を格納
  fp14_set(f,&tmp_f);
  fp7_set(&T->x,&tmp1);
  fp7_set(&T->y,&tmp2);
}

void f_ltqp_7sparse(fp14_t *f,efp7_t *T,efp7_t *Q,efp_t *P){
  //f = f * lT,Q(P), T = T + Q を返す
  static fp7_t tmp1,tmp2;
  static fp7_t tmp_A,tmp_B;
  static fp14_t tmp_f,tmp_l;
  static efp_t tmp_P;
  static efp7_t tmp_T,tmp_Q;

  if(T->infinity==1){
    printf("Tが無限遠点(ltqp_7sparse)\n");
    //lT,Q(P)=1である
    //T->infinity=1;
    return;
  }
  //分母が0になるとき
  if(fp7_cmp(&Q->x,&T->x)==0){
    if(fp7_cmp_zero(&T->y)==0  || fp7_cmp(&Q->y,&T->y)!=0){
      printf("分母が0(ltqp_7sparse)\n");
      fp14_set_ui_ui(&tmp_l,0);
      fp_set(&tmp_l.x0.x0,&P->x);
      fp7_sub(&tmp_l.x0,&tmp_l.x0,&T->x);
      fp14_mul_7sparse(f,f,&tmp_l);
      //P+P'=O
      T->infinity=1;
    }
    else{
      //T+T=2P
      ff_lttp_7sparse(f,T,P);
    }
    return;
  }

  efp_set(&tmp_P,P);
  efp7_set(&tmp_T,T);
  efp7_set(&tmp_Q,Q);
  fp14_set(&tmp_f,f);

  //Aの計算: (yQ-yT)/(xQ-xT)
  fp7_sub(&tmp1,&tmp_Q.y,&tmp_T.y);
  fp7_sub(&tmp2,&tmp_Q.x,&tmp_T.x);
  fp7_inv(&tmp2,&tmp2);
  fp7_mul(&tmp_A,&tmp1,&tmp2);
  //Bの計算: A*xT - yT
  fp7_mul(&tmp_B,&tmp_A,&tmp_T.x);
  fp7_sub(&tmp_B,&tmp_B,&tmp_T.y);

  //Line計算
  //lT,Q(P)の計算,lT,Q(P) = 1 - z^(1/2)*A + z^(3/2)*B*line_7sparse_x0
  //上の式から、lT,Q(P) = 1 - β*A + β*α*B*line_7sparse_x0
  //よって、1は基底１の係数、 -Aは基底βの係数、　α*B*line_7sparse_x0は基底βの係数
  //よって、1は基底１の係数、 α*B*line_7sparse_x0 - Aは基底βの係数
  fp14_set_ui_ui(&tmp_l,0);
  fp_set_ui(&tmp_l.x0.x0,1);
  //tmp1 = α*B*line_7sparse_x0
  fp_mul(&tmp1.x0,&tmp_B.x6,&line_7sparse_x0);
  fp_mul_base(&tmp1.x0,&tmp1.x0);
  fp_mul(&tmp1.x1,&tmp_B.x0,&line_7sparse_x0);
  fp_mul(&tmp1.x2,&tmp_B.x1,&line_7sparse_x0);
  fp_mul(&tmp1.x3,&tmp_B.x2,&line_7sparse_x0);
  fp_mul(&tmp1.x4,&tmp_B.x3,&line_7sparse_x0);
  fp_mul(&tmp1.x5,&tmp_B.x4,&line_7sparse_x0);
  fp_mul(&tmp1.x6,&tmp_B.x5,&line_7sparse_x0);
  fp7_sub(&tmp_l.x1,&tmp1,&tmp_A);

  //f = f * lT,Q(P)の計算
  fp14_mul_7sparse(&tmp_f,&tmp_f,&tmp_l);

  //楕円加算
  fp7_sqr(&tmp1,&tmp_A);
  fp7_sub(&tmp1,&tmp1,&tmp_T.x);
  fp7_sub(&tmp1,&tmp1,&tmp_Q.x);
  fp7_sub(&tmp2,&tmp_T.x,&tmp1);
  fp7_mul(&tmp2,&tmp2,&tmp_A);
  fp7_sub(&tmp2,&tmp2,&tmp_T.y);

  //結果を格納
  fp14_set(f,&tmp_f);
  fp7_set(&T->x,&tmp1);
  fp7_set(&T->y,&tmp2);
}

void Pseudo_7sparse_mapping(efp_t *P,efp7_t *Q){
  efp_t tmp_P;
  efp7_t tmp_Q;
  fp_t tmp1,tmp2,tmp3,tmp4;
  fp_init(&tmp1);
  fp_init(&tmp2);
  fp_init(&tmp3);
  fp_init(&tmp4);
  efp_set(&tmp_P,P);
  efp7_set(&tmp_Q,Q);

  fp_mul(&tmp1,&tmp_P.x,&tmp_P.y);
  fp_inv(&tmp1,&tmp1);
  fp_sqr(&tmp2,&tmp_P.x);
  fp_mul(&tmp2,&tmp2,&tmp1);
  fp_mul(&tmp3,&tmp1,&tmp_P.y);
  fp_sqr(&tmp4,&tmp2);

  //P_hat(x_p_hat,y_p_hat) = (x_p^3*y_p^-2,x_p^3*y_p^-2)
  fp_mul(&P->x,&tmp_P.x,&tmp4);
  fp_set(&P->y,&P->x);
  //Q_hat(x_q_hat,y_q_hat) = (x_p^2*y_p^-2*x_q,x_p^3*y_p^-3*y_q)
  fp_mul(&Q->x.x0,&tmp_Q.x.x0,&tmp4);
  fp_mul(&Q->x.x1,&tmp_Q.x.x1,&tmp4);
  fp_mul(&Q->x.x2,&tmp_Q.x.x2,&tmp4);
  fp_mul(&Q->x.x3,&tmp_Q.x.x3,&tmp4);
  fp_mul(&Q->x.x4,&tmp_Q.x.x4,&tmp4);
  fp_mul(&Q->x.x5,&tmp_Q.x.x5,&tmp4);
  fp_mul(&Q->x.x6,&tmp_Q.x.x6,&tmp4);
  fp_mul(&tmp1,&tmp2,&tmp4);
  fp_mul(&Q->y.x0,&tmp_Q.y.x0,&tmp1);
  fp_mul(&Q->y.x1,&tmp_Q.y.x1,&tmp1);
  fp_mul(&Q->y.x2,&tmp_Q.y.x2,&tmp1);
  fp_mul(&Q->y.x3,&tmp_Q.y.x3,&tmp1);
  fp_mul(&Q->y.x4,&tmp_Q.y.x4,&tmp1);
  fp_mul(&Q->y.x5,&tmp_Q.y.x5,&tmp1);
  fp_mul(&Q->y.x6,&tmp_Q.y.x6,&tmp1);
  //7sparse乗算をするときに使う (xP^-3)*(yP^2)
  fp_mul(&line_7sparse_x0,&tmp3,&tmp_P.y);
  fp_sqr(&line_7sparse_x0,&line_7sparse_x0);
  fp_mul(&line_7sparse_x0,&line_7sparse_x0,&tmp3);

  //(ツイスト曲線の(az^-2))*(xP^4)*(yP^-4)
  fp_sqr(&curve_a_7sparse_x3,&tmp4);
  fp_mul(&curve_a_7sparse_x3,&curve_a_7sparse_x3,&curve_a_twist_x3);
}

void fp14_mul_6sparse(fp14_t *ANS,fp14_t *A,fp14_t *B_6sparse){
  static fp14_t tmp_A,tmp_B;
  static fp7_t tmp1,tmp2,tmp3;
  fp14_set(&tmp_A,A);
  fp14_set(&tmp_B,B_6sparse);

  fp7_add(&tmp1,&tmp_A.x0,&tmp_A.x1);
  fp_add(&tmp2.x0,&tmp_B.x0.x0,&tmp_B.x1.x0);
  fp_set(&tmp2.x1,&tmp_B.x1.x1);
  fp_set(&tmp2.x2,&tmp_B.x1.x2);
  fp_set(&tmp2.x3,&tmp_B.x1.x3);
  fp_set(&tmp2.x4,&tmp_B.x1.x4);
  fp_set(&tmp2.x5,&tmp_B.x1.x5);
  fp_set(&tmp2.x6,&tmp_B.x1.x6);
  fp7_mul(&tmp3,&tmp1,&tmp2);
  fp_mul(&tmp1.x0,&tmp_A.x0.x0,&tmp_B.x0.x0);
  fp_mul(&tmp1.x1,&tmp_A.x0.x1,&tmp_B.x0.x0);
  fp_mul(&tmp1.x2,&tmp_A.x0.x2,&tmp_B.x0.x0);
  fp_mul(&tmp1.x3,&tmp_A.x0.x3,&tmp_B.x0.x0);
  fp_mul(&tmp1.x4,&tmp_A.x0.x4,&tmp_B.x0.x0);
  fp_mul(&tmp1.x5,&tmp_A.x0.x5,&tmp_B.x0.x0);
  fp_mul(&tmp1.x6,&tmp_A.x0.x6,&tmp_B.x0.x0);
  fp7_mul(&tmp2,&tmp_A.x1,&tmp_B.x1);

  fp7_sub(&ANS->x1,&tmp3,&tmp1);
  fp7_sub(&ANS->x1,&ANS->x1,&tmp2);

  fp_mul_base(&tmp3.x0,&tmp2.x6);
  fp_set(&tmp3.x1,&tmp2.x0);
  fp_set(&tmp3.x2,&tmp2.x1);
  fp_set(&tmp3.x3,&tmp2.x2);
  fp_set(&tmp3.x4,&tmp2.x3);
  fp_set(&tmp3.x5,&tmp2.x4);
  fp_set(&tmp3.x6,&tmp2.x5);
  fp7_add(&ANS->x0,&tmp1,&tmp3);
}

void fp14_mul_7sparse(fp14_t *ANS,fp14_t *A,fp14_t *B_7sparse){
  static fp14_t tmp_A,tmp_B;
  static fp7_t tmp1,tmp2;
  fp14_set(&tmp_A,A);
  fp14_set(&tmp_B,B_7sparse);

  fp7_mul(&tmp1,&tmp_A.x1,&tmp_B.x1);
  fp_mul_base(&tmp2.x0,&tmp1.x6);
  fp_set(&tmp2.x1,&tmp1.x0);
  fp_set(&tmp2.x2,&tmp1.x1);
  fp_set(&tmp2.x3,&tmp1.x2);
  fp_set(&tmp2.x4,&tmp1.x3);
  fp_set(&tmp2.x5,&tmp1.x4);
  fp_set(&tmp2.x6,&tmp1.x5);
  fp7_add(&ANS->x0,&tmp_A.x0,&tmp2);

  fp7_mul(&tmp1,&tmp_A.x0,&tmp_B.x1);
  fp7_add(&ANS->x1,&tmp_A.x1,&tmp1);
}

void miller_ate_6sparse(fp14_t *f,efp14_t *P,efp14_t *Q){
  static efp_t mapped_P;
  static efp7_t mapped_Q,T;
  //static efp14_t T14,tmp;

  fp14_set_ui_ui(f,0);
  fp_set_ui(&f->x0.x0,1);
  efp14_to_efp(&mapped_P,P);
  efp14_to_efp7(&mapped_Q,Q);
  efp7_set(&T,&mapped_Q);

  mp_bitcnt_t i;
  for(i=(mpz_sizeinbase(miller_loop_s,2)-2);i!=-1;i--){
    //printf("%ld ",i);
    ff_lttp_6sparse(f,&T,&mapped_P);
    //if(tmp_T.infinity==1)  printf("無限遠点 (Miller_twist)\n");
    if(mpz_tstbit(miller_loop_s,i)==1){
      f_ltqp_6sparse(f,&T,&mapped_Q,&mapped_P);
      //if(tmp_T.infinity==1)  printf("無限遠点 bit=1(Miller_twist)\n");
    }
  }
  //efp7_println("T :",&T);
  // efp7_to_efp14(&T14,&T);
  // efp14_println("T :",&T14);
  // efp14_scm(&tmp,Q,miller_loop_s);
  // efp14_println("Tmp :",&tmp);
  // getchar();
}

void miller_ate_7sparse(fp14_t *f,efp14_t *P,efp14_t *Q){
  static efp_t mapped_P;
  static efp7_t mapped_Q,T;

  fp14_set_ui_ui(f,0);
  fp_set_ui(&f->x0.x0,1);
  efp14_to_efp(&mapped_P,P);
  efp14_to_efp7(&mapped_Q,Q);
  Pseudo_7sparse_mapping(&mapped_P,&mapped_Q);
  efp7_set(&T,&mapped_Q);

  mp_bitcnt_t i;
  for(i=(mpz_sizeinbase(miller_loop_s,2)-2);i!=-1;i--){
    //printf("%ld ",i);
    ff_lttp_7sparse(f,&T,&mapped_P);
    //if(tmp_T.infinity==1)  printf("無限遠点 (Miller_twist)\n");
    if(mpz_tstbit(miller_loop_s,i)==1){
      f_ltqp_7sparse(f,&T,&mapped_Q,&mapped_P);
      //if(tmp_T.infinity==1)  printf("無限遠点 bit=1(Miller_twist)\n");
    }
  }
  //efp7_println("T :",&T);
}

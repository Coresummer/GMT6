#include "efp10.h"

void efp10_init(efp10_t *P){
  fp10_init(&P->x);
  fp10_init(&P->y);
  P->infinity=1;
}

void efp10_printf(char *str,efp10_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp10_printf("",&P->x);
    printf(",");
    fp10_printf("",&P->y);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp10_println(char *str,efp10_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp10_printf("",&P->x);
    printf(",");
    fp10_printf("",&P->y);
    printf(")\n");
  }else{
    printf("Infinity\n");
  }
}

void efp10_set(efp10_t *ANS,efp10_t *A){
  fp10_set(&ANS->x,&A->x);
  fp10_set(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp10_set_ui(efp10_t *ANS,unsigned long int UI1,unsigned long int UI2){
  fp10_set_ui(&ANS->x,UI1);
  fp10_set_ui(&ANS->y,UI2);
  ANS->infinity=0;
}

void efp10_set_mpn(efp10_t *ANS,mp_limb_t *A){
  fp10_set_mpn(&ANS->x,A);
  fp10_set_mpn(&ANS->y,A);
  ANS->infinity=0;
}

void efp10_set_neg(efp10_t *ANS,efp10_t *A){
  fp10_set(&ANS->x,&A->x);
  fp10_set_neg(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

int efp10_cmp(efp10_t *A,efp10_t *B){
  if(A->infinity==1 && B->infinity==1)  return 0;
  else if(A->infinity != B->infinity) return 1;
  else if(fp10_cmp(&A->x,&B->x)==0 && fp10_cmp(&A->y,&B->y)==0) return 0;
  else  return 1;
}

void efp10_rational_point(efp10_t *P){
  fp10_t tmp_ax,tmp_y2;
  fp10_init(&tmp_ax);
  fp10_init(&tmp_y2);

  P->infinity=0;
  while(1){
    fp10_set_random(&P->x,state);
    //y^2 = x^3 + ax
    fp10_sqr(&tmp_y2,&P->x);
    fp10_mul(&tmp_y2,&tmp_y2,&P->x);
    fp10_mul_mpn(&tmp_ax,&P->x,curve_a.x0);
    fp10_add(&tmp_y2,&tmp_y2,&tmp_ax);
    if(fp10_legendre(&tmp_y2)==1){
      fp10_sqrt(&P->y,&tmp_y2);
      break;
    }
  }
}

void generate_g1(efp10_t *P){
  //g1は定義体が素体である楕円曲線上の位数rの有理点群
  efp_t tmp_P;
  efp_init(&tmp_P);
  mpz_t expo;
  mpz_init(expo);

  efp_rational_point(&tmp_P);
  efp10_set_ui(P,0,0);
  mpz_tdiv_q(expo,efp_total,order_z);//(#efp)/r
  efp_scm(&tmp_P,&tmp_P,expo);
  fp_set(&P->x.x0.x0,&tmp_P.x);
  fp_set(&P->y.x0.x0,&tmp_P.y);
  P->infinity=tmp_P.infinity;

  mpz_clear(expo);
}

void generate_g2(efp10_t *Q){
  //g2は定義体が10次拡大体である楕円曲線上の位数rの有理点群
  efp10_t tmp_Q,frobenius_Q;
  efp10_init(&tmp_Q);
  efp10_init(&frobenius_Q);
  mpz_t expo;
  mpz_init(expo);

  efp10_rational_point(&tmp_Q);
  mpz_pow_ui(expo,order_z,2);
  mpz_tdiv_q(expo,efp10_total,expo);//(#efp10)/(r^2)
  efp10_scm(&tmp_Q,&tmp_Q,expo);//tmp_Qは位数rの有理点となった
  //(Φ-1)tmp_Q = Q となる有理点Qが特別な花びら上の有理点となる
  efp10_frobenius_map_p1(&frobenius_Q,&tmp_Q);
  efp10_set_neg(&tmp_Q,&tmp_Q);
  efp10_eca(Q,&tmp_Q,&frobenius_Q);

  mpz_clear(expo);
}

void efp10_ecd(efp10_t *ANS,efp10_t *P){
  static efp10_t tmp1_efp10;
  static fp10_t tmp1_fp10,tmp2_fp10,tmp3_fp10;
  if(P->infinity==1){
    ANS->infinity=1;
    return;
  }
  if(fp10_cmp_zero(&P->y)==0){
    ANS->infinity=1;
    return;
  }
  ANS->infinity=0;
  efp10_set(&tmp1_efp10,P);

  //tmp1_fp = 1/2yp
  fp10_add(&tmp1_fp10,&tmp1_efp10.y,&tmp1_efp10.y);
  fp10_inv(&tmp1_fp10,&tmp1_fp10);
  //tmp2_fp = 3x^2 +a
  fp10_sqr(&tmp2_fp10,&tmp1_efp10.x);
  fp10_add(&tmp3_fp10,&tmp2_fp10,&tmp2_fp10);
  fp10_add(&tmp2_fp10,&tmp2_fp10,&tmp3_fp10);
  fp_add(&tmp2_fp10.x0.x0,&tmp2_fp10.x0.x0,&curve_a);
  //tmp3_fp = lambda
  fp10_mul(&tmp3_fp10,&tmp1_fp10,&tmp2_fp10);

  //ANS.x
  fp10_sqr(&tmp1_fp10,&tmp3_fp10);
  fp10_add(&tmp2_fp10,&tmp1_efp10.x,&tmp1_efp10.x);
  fp10_sub(&ANS->x,&tmp1_fp10,&tmp2_fp10);
  //ANS.y
  fp10_sub(&tmp1_fp10,&tmp1_efp10.x,&ANS->x);
  fp10_mul(&tmp2_fp10,&tmp3_fp10,&tmp1_fp10);
  fp10_sub(&ANS->y,&tmp2_fp10,&tmp1_efp10.y);
}

void efp10_eca(efp10_t *ANS,efp10_t *P1,efp10_t *P2){
  static efp10_t tmp1_efp10,tmp2_efp10;
  static fp10_t tmp1_fp10,tmp2_fp10,tmp3_fp10;
  if(P1->infinity==1){
    efp10_set(ANS,P2);
    return;
  }
  else if(P2->infinity==1){
    efp10_set(ANS,P1);
    return;
  }
  else if(fp10_cmp(&P1->x,&P2->x)==0){
    if(fp10_cmp(&P1->y,&P2->y)!=0){
      ANS->infinity=1;
      return;
    }
    else{
      efp10_ecd(ANS,P1);
      return;
    }
  }
  ANS->infinity=0;
  efp10_set(&tmp1_efp10,P1);
  efp10_set(&tmp2_efp10,P2);

  //tmp3_fp = lambda
  fp10_sub(&tmp1_fp10,&tmp2_efp10.x,&tmp1_efp10.x);
  fp10_inv(&tmp1_fp10,&tmp1_fp10);
  fp10_sub(&tmp2_fp10,&tmp2_efp10.y,&tmp1_efp10.y);
  fp10_mul(&tmp3_fp10,&tmp1_fp10,&tmp2_fp10);

  //ANS.x
  fp10_sqr(&tmp1_fp10,&tmp3_fp10);
  fp10_sub(&tmp2_fp10,&tmp1_fp10,&tmp1_efp10.x);
  fp10_sub(&ANS->x,&tmp2_fp10,&tmp2_efp10.x);
  //ANS.y
  fp10_sub(&tmp1_fp10,&tmp1_efp10.x,&ANS->x);
  fp10_mul(&tmp2_fp10,&tmp3_fp10,&tmp1_fp10);
  fp10_sub(&ANS->y,&tmp2_fp10,&tmp1_efp10.y);
}

void efp10_scm(efp10_t *ANS,efp10_t *P,mpz_t scalar){
  if(mpz_cmp_ui(scalar,0)==0){
    ANS->infinity=1;
    return;
  }else if(mpz_cmp_ui(scalar,1)==0){
    efp10_set(ANS,P);
    return;
  }

  efp10_t Tmp_P,Next_P;
  efp10_init(&Tmp_P);
  efp10_set(&Tmp_P,P);
  efp10_init(&Next_P);
  int i,length;
  length=(int)mpz_sizeinbase(scalar,2);
  char binary[length+1];
  mpz_get_str(binary,2,scalar);

  efp10_set(&Next_P,&Tmp_P);
  for(i=1;i<length;i++){
    efp10_ecd(&Next_P,&Next_P);
    if(binary[i]=='1')  efp10_eca(&Next_P,&Next_P,&Tmp_P);
  }
  efp10_set(ANS,&Next_P);
}

void efp10_frobenius_map_p1(efp10_t *ANS,efp10_t *A){
  if(A->infinity==1){
    ANS->infinity=1;
    return;
  }
  ANS->infinity=0;
  fp10_frobenius_map_p1(&ANS->x,&A->x);
  fp10_frobenius_map_p1(&ANS->y,&A->y);
}

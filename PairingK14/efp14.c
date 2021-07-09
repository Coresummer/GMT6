#include "efp14.h"

void efp14_init(efp14_t *P){
  fp14_init(&P->x);
  fp14_init(&P->y);
  P->infinity=1;
}

void efp14_printf(std::string str ,efp14_t *P){
  printf("%s",str.c_str());
  if(P->infinity==0){
    printf("(");
    fp14_printf("",&P->x);
    printf(",");
    fp14_printf("",&P->y);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp14_println(std::string str ,efp14_t *P){
  printf("%s",str.c_str());
  if(P->infinity==0){
    printf("(");
    fp14_printf("",&P->x);
    printf(",");
    fp14_printf("",&P->y);
    printf(")\n");
  }else{
    printf("Infinity\n");
  }
}

void efp14_set(efp14_t *ANS,efp14_t *A){
  fp14_set(&ANS->x,&A->x);
  fp14_set(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp14_set_ui(efp14_t *ANS,unsigned long int UI1,unsigned long int UI2){
  fp14_set_ui(&ANS->x,UI1);
  fp14_set_ui(&ANS->y,UI2);
  ANS->infinity=0;
}

void efp14_set_mpn(efp14_t *ANS,mp_limb_t *A){
  fp14_set_mpn(&ANS->x,A);
  fp14_set_mpn(&ANS->y,A);
  ANS->infinity=0;
}

void efp14_set_neg(efp14_t *ANS,efp14_t *A){
  fp14_set(&ANS->x,&A->x);
  fp14_set_neg(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

int efp14_cmp(efp14_t *A,efp14_t *B){
  if(A->infinity==1 && B->infinity==1)  return 0;
  else if(A->infinity != B->infinity) return 1;
  else if(fp14_cmp(&A->x,&B->x)==0 && fp14_cmp(&A->y,&B->y)==0) return 0;
  else  return 1;
}

void efp14_rational_point(efp14_t *P){
  fp14_t tmp_ax,tmp_y2;
  fp14_init(&tmp_ax);
  fp14_init(&tmp_y2);

  P->infinity=0;
  while(1){
    fp14_set_random(&P->x,state);
    //y^2 = x^3 + ax
    fp14_sqr(&tmp_y2,&P->x);
    fp14_mul(&tmp_y2,&tmp_y2,&P->x);
    fp14_mul_mpn(&tmp_ax,&P->x,curve_a.x0);
    fp14_add(&tmp_y2,&tmp_y2,&tmp_ax);
    if(fp14_legendre(&tmp_y2)==1){
      fp14_sqrt(&P->y,&tmp_y2);
      break;
    }
  }
}

void generate_g1(efp14_t *P){
  //g1は定義体が素体である楕円曲線上の位数rの有理点群
  efp_t tmp_P;
  efp_init(&tmp_P);
  mpz_t expo;
  mpz_init(expo);

  efp_rational_point(&tmp_P);
  efp14_set_ui(P,0,0);
  mpz_tdiv_q(expo,efp_total,order_z);//(#efp)/r
  efp_scm(&tmp_P,&tmp_P,expo);
  fp_set(&P->x.x0.x0,&tmp_P.x);
  fp_set(&P->y.x0.x0,&tmp_P.y);
  P->infinity=tmp_P.infinity;

  mpz_clear(expo);
}

void generate_g2(efp14_t *Q){
  //g2は定義体が14次拡大体である楕円曲線上の位数rの有理点群
  efp14_t tmp_Q,frobenius_Q;
  efp14_init(&tmp_Q);
  efp14_init(&frobenius_Q);
  mpz_t expo;
  mpz_init(expo);

  efp14_rational_point(&tmp_Q);
  mpz_pow_ui(expo,order_z,2);
  mpz_divexact(expo,efp14_total,expo);//(#efp14)/(r^2)
  efp14_scm(&tmp_Q,&tmp_Q,expo);//tmp_Qは位数rの有理点となった

  //(Φ-1)tmp_Q = Q となる有理点Qが特別な花びら上の有理点となる
  efp14_frobenius_map_p1(&frobenius_Q,&tmp_Q);
  efp14_set_neg(&tmp_Q,&tmp_Q);
  efp14_eca(Q,&tmp_Q,&frobenius_Q);

  mpz_clear(expo);
}

void efp14_ecd(efp14_t *ANS,efp14_t *P){
  static efp14_t tmp1_efp14;
  static fp14_t tmp1_fp14,tmp2_fp14,tmp3_fp14;
  if(P->infinity==1){
    ANS->infinity=1;
    return;
  }
  if(fp14_cmp_zero(&P->y)==0){
    ANS->infinity=1;
    return;
  }
  ANS->infinity=0;
  efp14_set(&tmp1_efp14,P);

  //tmp1_fp = 1/2yp
  fp14_add(&tmp1_fp14,&tmp1_efp14.y,&tmp1_efp14.y);
  fp14_inv(&tmp1_fp14,&tmp1_fp14);
  //tmp2_fp = 3x^2 +a
  fp14_sqr(&tmp2_fp14,&tmp1_efp14.x);
  fp14_add(&tmp3_fp14,&tmp2_fp14,&tmp2_fp14);
  fp14_add(&tmp2_fp14,&tmp2_fp14,&tmp3_fp14);
  fp_add(&tmp2_fp14.x0.x0,&tmp2_fp14.x0.x0,&curve_a);
  //tmp3_fp = lambda
  fp14_mul(&tmp3_fp14,&tmp1_fp14,&tmp2_fp14);

  //ANS.x
  fp14_sqr(&tmp1_fp14,&tmp3_fp14);
  fp14_add(&tmp2_fp14,&tmp1_efp14.x,&tmp1_efp14.x);
  fp14_sub(&ANS->x,&tmp1_fp14,&tmp2_fp14);
  //ANS.y
  fp14_sub(&tmp1_fp14,&tmp1_efp14.x,&ANS->x);
  fp14_mul(&tmp2_fp14,&tmp3_fp14,&tmp1_fp14);
  fp14_sub(&ANS->y,&tmp2_fp14,&tmp1_efp14.y);
}

void efp14_eca(efp14_t *ANS,efp14_t *P1,efp14_t *P2){
  static efp14_t tmp1_efp14,tmp2_efp14;
  static fp14_t tmp1_fp14,tmp2_fp14,tmp3_fp14;
  if(P1->infinity==1){
    efp14_set(ANS,P2);
    return;
  }
  else if(P2->infinity==1){
    efp14_set(ANS,P1);
    return;
  }
  else if(fp14_cmp(&P1->x,&P2->x)==0){
    if(fp14_cmp(&P1->y,&P2->y)!=0){
      ANS->infinity=1;
      return;
    }
    else{
      efp14_ecd(ANS,P1);
      return;
    }
  }
  ANS->infinity=0;
  efp14_set(&tmp1_efp14,P1);
  efp14_set(&tmp2_efp14,P2);

  //tmp3_fp = lambda
  fp14_sub(&tmp1_fp14,&tmp2_efp14.x,&tmp1_efp14.x);
  fp14_inv(&tmp1_fp14,&tmp1_fp14);
  fp14_sub(&tmp2_fp14,&tmp2_efp14.y,&tmp1_efp14.y);
  fp14_mul(&tmp3_fp14,&tmp1_fp14,&tmp2_fp14);

  //ANS.x
  fp14_sqr(&tmp1_fp14,&tmp3_fp14);
  fp14_sub(&tmp2_fp14,&tmp1_fp14,&tmp1_efp14.x);
  fp14_sub(&ANS->x,&tmp2_fp14,&tmp2_efp14.x);
  //ANS.y
  fp14_sub(&tmp1_fp14,&tmp1_efp14.x,&ANS->x);
  fp14_mul(&tmp2_fp14,&tmp3_fp14,&tmp1_fp14);
  fp14_sub(&ANS->y,&tmp2_fp14,&tmp1_efp14.y);
}

void efp14_scm(efp14_t *ANS,efp14_t *P,mpz_t scalar){
  if(mpz_cmp_ui(scalar,0)==0){
    ANS->infinity=1;
    return;
  }else if(mpz_cmp_ui(scalar,1)==0){
    efp14_set(ANS,P);
    return;
  }

  efp14_t Tmp_P,Next_P;
  efp14_init(&Tmp_P);
  efp14_set(&Tmp_P,P);
  efp14_init(&Next_P);
  int i,length;
  length=(int)mpz_sizeinbase(scalar,2);
  char binary[length+1];
  mpz_get_str(binary,2,scalar);

  efp14_set(&Next_P,&Tmp_P);
  for(i=1;i<length;i++){
    efp14_ecd(&Next_P,&Next_P);
    if(binary[i]=='1')  efp14_eca(&Next_P,&Next_P,&Tmp_P);
  }
  efp14_set(ANS,&Next_P);
}

void efp14_frobenius_map_p1(efp14_t *ANS,efp14_t *A){
  if(A->infinity==1){
    ANS->infinity=1;
    return;
  }
  ANS->infinity=0;
  fp14_frobenius_map_p1(&ANS->x,&A->x);
  fp14_frobenius_map_p1(&ANS->y,&A->y);
}

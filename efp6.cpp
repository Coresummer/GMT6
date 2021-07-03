#include "efp6.h"

void efp6_init(efp6_t *P){
  fp6_init(&P->x);
  fp6_init(&P->y);
  P->infinity=1;
}

void efp6_printf(std::string str ,efp6_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp6_printf("",&P->x);
    printf(",");
    fp6_printf("",&P->y);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp6_println(std::string str ,efp6_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp6_printf("",&P->x);
    printf(",");
    fp6_printf("",&P->y);
    printf(")\n");
  }else{
    printf("Infinity\n");
  }
}

void efp6_set(efp6_t *ANS,efp6_t *A){
  fp6_set(&ANS->x,&A->x);
  fp6_set(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp6_set_ui(efp6_t *ANS,unsigned long int UI1,unsigned long int UI2){
  fp6_set_ui(&ANS->x,UI1);
  fp6_set_ui(&ANS->y,UI2);
  ANS->infinity=0;
}

void efp6_set_mpn(efp6_t *ANS,mp_limb_t *A){
  fp6_set_mpn(&ANS->x,A);
  fp6_set_mpn(&ANS->y,A);
  ANS->infinity=0;
}

void efp6_set_neg(efp6_t *ANS,efp6_t *A){
  fp6_set(&ANS->x,&A->x);
  fp6_set_neg(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

int efp6_cmp(efp6_t *A,efp6_t *B){
  if(A->infinity==1 && B->infinity==1)  return 0;
  else if(A->infinity != B->infinity) return 1;
  else if(fp6_cmp(&A->x,&B->x)==0 && fp6_cmp(&A->y,&B->y)==0) return 0;
  else  return 1;
}

void efp6_rational_point(efp6_t *P){
  fp6_t tmp_y2;
  fp6_init(&tmp_y2);

  P->infinity=0;
  while(1){
    fp6_set_random(&P->x,state);
    //y^2 = x^3 + b
    fp6_sqr(&tmp_y2,&P->x);
    fp6_mul(&tmp_y2,&tmp_y2,&P->x);
    fp_add(&tmp_y2.x0.x0,&tmp_y2.x0.x0,&curve_b);
    if(fp6_legendre(&tmp_y2)==1){
      fp6_sqrt(&P->y,&tmp_y2);
      break;
    }
  }
}

void generate_g1(efp6_t *P){
  //g1は定義体が素体である楕円曲線上の位数rの有理点群
  efp_t tmp_P;
  efp_init(&tmp_P);
  mpz_t expo;
  mpz_init(expo);

  efp_rational_point(&tmp_P);
  efp6_set_ui(P,0,0);
  mpz_tdiv_q(expo,efp_total,order_z);//(#efp)/r
  efp_scm(&tmp_P,&tmp_P,expo);
  fp_set(&P->x.x0.x0,&tmp_P.x);
  fp_set(&P->y.x0.x0,&tmp_P.y);
  P->infinity=tmp_P.infinity;

  mpz_clear(expo);
}

void generate_g2(efp6_t *Q){
  //g2は定義体が6次拡大体である楕円曲線上の位数rの有理点群
  efp6_t tmp_Q,frobenius_Q;
  efp6_init(&tmp_Q);
  efp6_init(&frobenius_Q);

  mpz_t expo;
  mpz_init(expo);

  efp6_rational_point(&tmp_Q);
  mpz_pow_ui(expo,order_z,2);
  mpz_divexact(expo,efp6_total,expo);//(#efp6)/(r^2)
  efp6_scm(&tmp_Q,&tmp_Q,expo);//tmp_Qは位数rの有理点となった
  // efp6_set(Q,&tmp_Q); //Comfirmed on r

  //(Φ-1)tmp_Q = Q となる有理点Qが特別な花びら上の有理点となる
  efp6_frobenius_map_p1(&frobenius_Q,&tmp_Q); //(Q^p) frobenius mapping confirmed
  efp6_set_neg(&tmp_Q,&tmp_Q);//(-Q)
  efp6_eca(Q,&tmp_Q,&frobenius_Q);//Q^p - Q
  mpz_clear(expo);
}

void efp6_ecd(efp6_t *ANS,efp6_t *P){
  static efp6_t tmp1_efp6;
  static fp6_t tmp1_fp6,tmp2_fp6,tmp3_fp6;
  if(P->infinity==1){
    ANS->infinity=1;
    return;
  }
  if(fp6_cmp_zero(&P->y)==0){
    ANS->infinity=1;
    return;
  }
  ANS->infinity=0;
  efp6_set(&tmp1_efp6,P);

  //tmp1_fp = 1/2yp
  fp6_add(&tmp1_fp6,&tmp1_efp6.y,&tmp1_efp6.y);
  fp6_inv(&tmp1_fp6,&tmp1_fp6);
  //tmp2_fp = 3x^2
  fp6_sqr(&tmp2_fp6,&tmp1_efp6.x);
  fp6_add(&tmp3_fp6,&tmp2_fp6,&tmp2_fp6);
  fp6_add(&tmp2_fp6,&tmp2_fp6,&tmp3_fp6);
  //fp_add(&tmp2_fp6.x0.x0,&tmp2_fp6.x0.x0,&curve_a);
  //tmp3_fp = lambda
  fp6_mul(&tmp3_fp6,&tmp1_fp6,&tmp2_fp6);

  //ANS.x
  fp6_sqr(&tmp1_fp6,&tmp3_fp6);
  fp6_add(&tmp2_fp6,&tmp1_efp6.x,&tmp1_efp6.x);
  fp6_sub(&ANS->x,&tmp1_fp6,&tmp2_fp6);
  //ANS.y
  fp6_sub(&tmp1_fp6,&tmp1_efp6.x,&ANS->x);
  fp6_mul(&tmp2_fp6,&tmp3_fp6,&tmp1_fp6);
  fp6_sub(&ANS->y,&tmp2_fp6,&tmp1_efp6.y);
}

void efp6_eca(efp6_t *ANS,efp6_t *P1,efp6_t *P2){
  static efp6_t tmp1_efp6,tmp2_efp6;
  static fp6_t tmp1_fp6,tmp2_fp6,tmp3_fp6;
  if(P1->infinity==1){
    efp6_set(ANS,P2);
    return;
  }
  else if(P2->infinity==1){
    efp6_set(ANS,P1);
    return;
  }
  else if(fp6_cmp(&P1->x,&P2->x)==0){
    if(fp6_cmp(&P1->y,&P2->y)!=0){
      ANS->infinity=1;
      return;
    }
    else{
      efp6_ecd(ANS,P1);
      return;
    }
  }
  ANS->infinity=0;
  efp6_set(&tmp1_efp6,P1);
  efp6_set(&tmp2_efp6,P2);

  //tmp3_fp = lambda
  fp6_sub(&tmp1_fp6,&tmp2_efp6.x,&tmp1_efp6.x);
  fp6_inv(&tmp1_fp6,&tmp1_fp6);
  fp6_sub(&tmp2_fp6,&tmp2_efp6.y,&tmp1_efp6.y);
  fp6_mul(&tmp3_fp6,&tmp1_fp6,&tmp2_fp6);

  //ANS.x
  fp6_sqr(&tmp1_fp6,&tmp3_fp6);
  fp6_sub(&tmp2_fp6,&tmp1_fp6,&tmp1_efp6.x);
  fp6_sub(&ANS->x,&tmp2_fp6,&tmp2_efp6.x);
  //ANS.y
  fp6_sub(&tmp1_fp6,&tmp1_efp6.x,&ANS->x);
  fp6_mul(&tmp2_fp6,&tmp3_fp6,&tmp1_fp6);
  fp6_sub(&ANS->y,&tmp2_fp6,&tmp1_efp6.y);
}

void efp6_scm(efp6_t *ANS,efp6_t *P,mpz_t scalar){
  if(mpz_cmp_ui(scalar,0)==0){
    ANS->infinity=1;
    return;
  }else if(mpz_cmp_ui(scalar,1)==0){
    efp6_set(ANS,P);
    return;
  }

  efp6_t Tmp_P,Next_P;
  efp6_init(&Tmp_P);
  efp6_set(&Tmp_P,P);
  efp6_init(&Next_P);
  int i,length;
  length=(int)mpz_sizeinbase(scalar,2);
  char binary[length+1];
  mpz_get_str(binary,2,scalar);

  efp6_set(&Next_P,&Tmp_P);
  for(i=1;i<length;i++){
    efp6_ecd(&Next_P,&Next_P);
    if(binary[i]=='1')  efp6_eca(&Next_P,&Next_P,&Tmp_P);
  }
  efp6_set(ANS,&Next_P);
}

void efp6_frobenius_map_p1(efp6_t *ANS,efp6_t *A){
  if(A->infinity==1){
    ANS->infinity=1;
    return;
  }
  ANS->infinity=0;
  fp6_frobenius_map_p1(&ANS->x,&A->x);
  fp6_frobenius_map_p1(&ANS->y,&A->y);
}

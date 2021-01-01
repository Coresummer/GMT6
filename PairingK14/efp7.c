#include "efp7.h"

void efp7_init(efp7_t *P){
  fp7_init(&P->x);
  fp7_init(&P->y);
  P->infinity=1;
}

void efp7_projective_init(efp7_projective_t *P){
  fp7_init(&P->x);
  fp7_init(&P->y);
  fp7_init(&P->z);
  P->infinity=1;
}

void efp7_jacobian_init(efp7_jacobian_t *P){
  fp7_init(&P->x);
  fp7_init(&P->y);
  fp7_init(&P->z);
  P->infinity=1;
}
void efp7_printf(char *str,efp7_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp7_printf("",&P->x);
    printf(",");
    fp7_printf("",&P->y);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp7_println(char *str,efp7_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp7_printf("",&P->x);
    printf(",");
    fp7_printf("",&P->y);
    printf(")\n");
  }else{
    printf("Infinity\n");
  }
}

void efp7_projective_printf(char *str,efp7_projective_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp7_printf("",&P->x);
    printf(",");
    fp7_printf("",&P->y);
    printf(",");
    fp7_printf("",&P->z);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp7_jacobian_printf(char *str,efp7_jacobian_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp7_printf("",&P->x);
    printf(",");
    fp7_printf("",&P->y);
    printf(",");
    fp7_printf("",&P->z);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp7_printf_montgomery(char *str,efp7_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp7_printf_montgomery("",&P->x);
    printf(",");
    fp7_printf_montgomery("",&P->y);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp7_jacobian_printf_montgomery(char *str,efp7_jacobian_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp7_printf_montgomery("",&P->x);
    printf(",");
    fp7_printf_montgomery("",&P->y);
    printf(",");
    fp7_printf_montgomery("",&P->z);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp7_projective_printf_montgomery(char *str,efp7_projective_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp7_printf_montgomery("",&P->x);
    printf(",");
    fp7_printf_montgomery("",&P->y);
    printf(",");
    fp7_printf_montgomery("",&P->z);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp7_projective_printf_affine(char *str,efp7_projective_t *P){
  static efp7_t out;
  efp7_projective_to_affine(&out,P);
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp7_printf("",&out.x);
    printf(",");
    fp7_printf("",&out.y);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp7_projective_printf_affine_montgomery(char *str,efp7_projective_t *P){
  static efp7_t out;
  efp7_projective_to_affine_montgomery(&out,P);
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp7_printf_montgomery("",&out.x);
    printf(",");
    fp7_printf_montgomery("",&out.y);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp7_set(efp7_t *ANS,efp7_t *A){
  fp7_set(&ANS->x,&A->x);
  fp7_set(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp7_projective_set(efp7_projective_t *ANS,efp7_projective_t *A){
  fp7_set(&ANS->x,&A->x);
  fp7_set(&ANS->y,&A->y);
  fp7_set(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp7_jacobian_set(efp7_jacobian_t *ANS,efp7_jacobian_t *A){
  fp7_set(&ANS->x,&A->x);
  fp7_set(&ANS->y,&A->y);
  fp7_set(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp7_affine_to_projective(efp7_projective_t *ANS,efp7_t *A){
  fp7_set(&ANS->x,&A->x);
  fp7_set(&ANS->y,&A->y);
  fp7_set_ui(&ANS->z,1);
  ANS->infinity=A->infinity;
}

void efp7_affine_to_jacobian(efp7_jacobian_t *ANS,efp7_t *A){
  fp7_set(&ANS->x,&A->x);
  fp7_set(&ANS->y,&A->y);
  fp7_set_ui(&ANS->z,1);
  ANS->infinity=A->infinity;
}

void efp7_affine_to_projective_montgomery(efp7_projective_t *ANS,efp7_t *A){
  fp7_set(&ANS->x,&A->x);
  fp7_set(&ANS->y,&A->y);
  fp7_set_mpn(&ANS->z,RmodP);
  ANS->infinity=A->infinity;
}

void efp7_affine_to_jacobian_montgomery(efp7_jacobian_t *ANS,efp7_t *A){
  fp7_set(&ANS->x,&A->x);
  fp7_set(&ANS->y,&A->y);
  fp7_set_mpn(&ANS->z,RmodP);
  ANS->infinity=A->infinity;
}

void efp7_jacobian_to_affine(efp7_t *ANS,efp7_jacobian_t *A){
  static fp7_t Zi,Zt;
  //TODO:mul->mul_lazy
  fp7_inv(&Zi,&A->z);
  fp7_mul(&Zt,&Zi,&Zi);
  fp7_mul(&ANS->x,&A->x,&Zt);
  fp7_mul(&Zt,&Zt,&Zi);
  fp7_mul(&ANS->y,&A->y,&Zt);
  ANS->infinity=A->infinity;
}

void efp7_projective_to_affine(efp7_t *ANS,efp7_projective_t *A){
  static fp7_t Zi;
  //TODO:mul->mul_lazy
  fp7_inv(&Zi,&A->z);
  fp7_mul(&ANS->x,&A->x,&Zi);
  fp7_mul(&ANS->y,&A->y,&Zi);
  ANS->infinity=A->infinity;
}

void efp7_jacobian_to_affine_montgomery(efp7_t *ANS,efp7_jacobian_t *A){
  static fp7_t Zi,Zt;
  fp7_inv_lazy_montgomery(&Zi,&A->z);
  fp7_mul_lazy_montgomery(&Zt,&Zi,&Zi);
  fp7_mul_lazy_montgomery(&ANS->x,&A->x,&Zt);
  fp7_mul_lazy_montgomery(&Zt,&Zt,&Zi);
  fp7_mul_lazy_montgomery(&ANS->y,&A->y,&Zt);
  ANS->infinity=A->infinity;
}

void efp7_projective_to_affine_montgomery(efp7_t *ANS,efp7_projective_t *A){
  static fp7_t Zi;
  //TODO:mul->mul_lazy
  fp7_inv_lazy_montgomery(&Zi,&A->z);
  fp7_mul_lazy_montgomery(&ANS->x,&A->x,&Zi);
  fp7_mul_lazy_montgomery(&ANS->y,&A->y,&Zi);
  ANS->infinity=A->infinity;
}

void efp7_mix(efp7_jacobian_t *ANS,efp7_jacobian_t *A,fp7_t *Zi){
  static fp7_t Zt;
  //TODO:mul->mul_lazy
  fp7_mul(&Zt,Zi,Zi);
  fp7_mul(&ANS->x,&A->x,&Zt);
  fp7_mul(&Zt,&Zt,Zi);
  fp7_mul(&ANS->y,&A->y,&Zt);
  fp7_set_ui(&ANS->z,1);
  ANS->infinity=A->infinity;
}

void efp7_mix_montgomery(efp7_jacobian_t *ANS,efp7_jacobian_t *A,fp7_t *Zi){
  static fp7_t Zt;
  fp7_mul_lazy_montgomery(&Zt,Zi,Zi);
  fp7_mul_lazy_montgomery(&ANS->x,&A->x,&Zt);
  fp7_mul_lazy_montgomery(&Zt,&Zt,Zi);
  fp7_mul_lazy_montgomery(&ANS->y,&A->y,&Zt);
  fp7_set_mpn(&ANS->z,RmodP);
  ANS->infinity=A->infinity;
}

void efp7_set_ui(efp7_t *ANS,unsigned long int UI){
  fp7_set_ui(&ANS->x,UI);
  fp7_set_ui(&ANS->y,UI);
  ANS->infinity=0;
}

void efp7_to_montgomery(efp7_t *ANS,efp7_t *A){
  fp7_to_montgomery(&ANS->x,&A->x);
  fp7_to_montgomery(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp7_projective_to_montgomery(efp7_projective_t *ANS,efp7_projective_t *A){
  fp7_to_montgomery(&ANS->x,&A->x);
  fp7_to_montgomery(&ANS->y,&A->y);
  fp7_to_montgomery(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp7_mod_montgomery(efp7_t *ANS,efp7_t *A){
  fp7_mod_montgomery(&ANS->x,&A->x);
  fp7_mod_montgomery(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp7_projective_mod_montgomery(efp7_projective_t *ANS,efp7_projective_t *A){
  fp7_mod_montgomery(&ANS->x,&A->x);
  fp7_mod_montgomery(&ANS->y,&A->y);
  fp7_mod_montgomery(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp7_set_mpn(efp7_t *ANS,mp_limb_t *A){
  fp7_set_mpn(&ANS->x,A);
  fp7_set_mpn(&ANS->y,A);
  ANS->infinity=0;
}

void efp7_set_neg(efp7_t *ANS,efp7_t *A){
  fp7_set(&ANS->x,&A->x);
  fp7_set_neg(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp7_jacobian_set_neg(efp7_jacobian_t *ANS,efp7_jacobian_t *A){
  fp7_set(&ANS->x,&A->x);
  fp7_set_neg(&ANS->y,&A->y);
  fp7_set(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

int efp7_cmp(efp7_t *A,efp7_t *B){
  if(A->infinity==1 && B->infinity==1)  return 0;
  else if(A->infinity != B->infinity) return 1;
  else if(fp7_cmp(&A->x,&B->x)==0 && fp7_cmp(&A->y,&B->y)==0) return 0;
  else  return 1;
}

void efp7_rational_point(efp7_t *P){
  fp7_t tmp_ax,tmp_y2;
  fp7_init(&tmp_ax);
  fp7_init(&tmp_y2);

  P->infinity=0;
  while(1){
    fp7_set_random(&P->x,state);
    //y^2 = x^3 + ax
    fp7_sqr(&tmp_y2,&P->x);
    fp7_mul(&tmp_y2,&tmp_y2,&P->x);
    fp7_mul_mpn(&tmp_ax,&P->x,curve_a.x0);
    fp7_add(&tmp_y2,&tmp_y2,&tmp_ax);
    if(fp7_legendre(&tmp_y2)==1){
      fp7_sqrt(&P->y,&tmp_y2);
      break;
    }
  }
}

void efp7_ecd(efp7_t *ANS,efp7_t *P){
  static efp7_t tmp1_efp7;
  static fp7_t tmp1_fp7,tmp2_fp7,tmp3_fp7;
  if(P->infinity==1){
    ANS->infinity=1;
    return;
  }
  if(fp7_cmp_zero(&P->y)==0){
    ANS->infinity=1;
    return;
  }
  ANS->infinity=0;
  efp7_set(&tmp1_efp7,P);

  //tmp1_fp = 1/2yp
  fp7_add(&tmp1_fp7,&tmp1_efp7.y,&tmp1_efp7.y);
  fp7_inv(&tmp1_fp7,&tmp1_fp7);
  //tmp2_fp = 3x^2 +a
  fp7_sqr(&tmp2_fp7,&tmp1_efp7.x);
  fp7_add(&tmp3_fp7,&tmp2_fp7,&tmp2_fp7);
  fp7_add(&tmp2_fp7,&tmp2_fp7,&tmp3_fp7);
  fp_add(&tmp2_fp7.x0,&tmp2_fp7.x0,&curve_a);
  //tmp3_fp = lambda
  fp7_mul(&tmp3_fp7,&tmp1_fp7,&tmp2_fp7);

  //ANS.x
  fp7_sqr(&tmp1_fp7,&tmp3_fp7);
  fp7_add(&tmp2_fp7,&tmp1_efp7.x,&tmp1_efp7.x);
  fp7_sub(&ANS->x,&tmp1_fp7,&tmp2_fp7);
  //ANS.y
  fp7_sub(&tmp1_fp7,&tmp1_efp7.x,&ANS->x);
  fp7_mul(&tmp2_fp7,&tmp3_fp7,&tmp1_fp7);
  fp7_sub(&ANS->y,&tmp2_fp7,&tmp1_efp7.y);
}

void efp7_ecd_jacobian_lazy_montgomery(efp7_jacobian_t *ANS,efp7_jacobian_t *P){
  static fp7_t s,m,T;

  static fp7_t buf,tmp1;
  static fp7_t tmpY2;
  static efp7_jacobian_t Pt;
  if(fp7_cmp_zero(&P->y)==0){
    ANS->infinity=1;
    return;
  }

  efp7_jacobian_set(&Pt,P);

  //s
  fp7_mul_lazy_montgomery(&tmpY2,&Pt.y,&Pt.y);
  fp7_mul_lazy_montgomery(&tmp1,&tmpY2,&Pt.x);
  fp7_add(&tmp1,&tmp1,&tmp1);
  fp7_add(&s,&tmp1,&tmp1);

  //m
  fp7_add_nonmod_single(&tmp1,&Pt.x,&Pt.x);
  fp7_add_nonmod_single(&tmp1,&tmp1,&Pt.x);
  fp7_mul_lazy_montgomery(&m,&tmp1,&Pt.x);

  //T
  fp7_mul_lazy_montgomery(&T,&m,&m);
  fp7_add(&tmp1,&s,&s);
  fp7_sub(&T,&T,&tmp1);

  //ANS->x
  fp7_set(&ANS->x,&T);

  //ANS->y
  fp7_sub_nonmod_single(&tmp1,&s,&T);
  fp7_mul_lazy_montgomery(&buf,&tmp1,&m);

  fp7_mul_lazy_montgomery(&tmp1,&tmpY2,&tmpY2);
  fp7_add(&tmp1,&tmp1,&tmp1);
  fp7_add(&tmp1,&tmp1,&tmp1);
  fp7_add(&tmp1,&tmp1,&tmp1);
  fp7_sub(&ANS->y,&buf,&tmp1);

  //ANS->z
  fp7_add_nonmod_single(&tmp1,&Pt.y,&Pt.y);
  fp7_mul_lazy_montgomery(&ANS->z,&tmp1,&Pt.z);
}

void efp7_eca(efp7_t *ANS,efp7_t *P1,efp7_t *P2){
  static efp7_t tmp1_efp7,tmp2_efp7;
  static fp7_t tmp1_fp7,tmp2_fp7,tmp3_fp7;
  if(P1->infinity==1){
    efp7_set(ANS,P2);
    return;
  }
  else if(P2->infinity==1){
    efp7_set(ANS,P1);
    return;
  }
  else if(fp7_cmp(&P1->x,&P2->x)==0){
    if(fp7_cmp(&P1->y,&P2->y)!=0){
      ANS->infinity=1;
      return;
    }else{
      efp7_ecd(ANS,P1);
      return;
    }
  }
  ANS->infinity=0;
  efp7_set(&tmp1_efp7,P1);
  efp7_set(&tmp2_efp7,P2);

  //tmp3_fp = lambda
  fp7_sub(&tmp1_fp7,&tmp2_efp7.x,&tmp1_efp7.x);
  fp7_inv(&tmp1_fp7,&tmp1_fp7);
  fp7_sub(&tmp2_fp7,&tmp2_efp7.y,&tmp1_efp7.y);
  fp7_mul(&tmp3_fp7,&tmp1_fp7,&tmp2_fp7);

  //ANS.x
  fp7_sqr(&tmp1_fp7,&tmp3_fp7);
  fp7_sub(&tmp2_fp7,&tmp1_fp7,&tmp1_efp7.x);
  fp7_sub(&ANS->x,&tmp2_fp7,&tmp2_efp7.x);
  //ANS.y
  fp7_sub(&tmp1_fp7,&tmp1_efp7.x,&ANS->x);
  fp7_mul(&tmp2_fp7,&tmp3_fp7,&tmp1_fp7);
  fp7_sub(&ANS->y,&tmp2_fp7,&tmp1_efp7.y);
}

void efp7_eca_jacobian_lazy_montgomery(efp7_jacobian_t *ANS,efp7_jacobian_t *P1,efp7_jacobian_t *P2){
  static efp7_jacobian_t Pt1,Pt2;
  static fp7_t U1,U2,S1,S2,H,r;

  static fp7_t buf,tmp1,tmp2;
  static fp7_t tmpZ1,tmpZ2,tmpH2,tmpH3,tmpU1H2;

  if(P1->infinity==1){
    efp7_jacobian_set(ANS,P2);
    return;
  }else if(P2->infinity==1){
    efp7_jacobian_set(ANS,P1);
    return;
  }else if(fp7_cmp(&P1->x,&P2->x)==0){
    if(fp7_cmp(&P1->y,&P2->y)!=0){
      ANS->infinity=1;
      return;
    }else{
      efp7_ecd_jacobian_lazy_montgomery(ANS,P1);
      return;
    }
  }

  efp7_jacobian_set(&Pt1,P1);
  efp7_jacobian_set(&Pt2,P2);

  //U1
  fp7_mul_lazy_montgomery(&tmpZ2,&Pt2.z,&Pt2.z);
  fp7_mul_lazy_montgomery(&U1,&tmpZ2,&Pt1.x);
  //fp7_printf("U1=",&U1);printf("\n");

  //U2
  fp7_mul_lazy_montgomery(&tmpZ1,&Pt1.z,&Pt1.z);
  fp7_mul_lazy_montgomery(&U2,&tmpZ1,&Pt2.x);
  //fp7_printf("U2=",&U2);printf("\n");

  //S1
  fp7_mul_lazy_montgomery(&tmp1,&tmpZ2,&Pt2.z);
  fp7_mul_lazy_montgomery(&S1,&tmp1,&Pt1.y);
  //fp7_printf("S1=",&S1);printf("\n");

  //S2
  fp7_mul_lazy_montgomery(&tmp1,&tmpZ1,&Pt1.z);
  fp7_mul_lazy_montgomery(&S2,&tmp1,&Pt2.y);
  //fp7_printf("S2=",&S2);printf("\n");

  //H
  //fp7_printf("U1=",&U1);printf("\n");
  fp7_sub(&H,&U2,&U1);
  //fp7_printf("H=",&H);printf("\n");

  //r
  fp7_sub(&r,&S2,&S1);
  //fp7_printf("r=",&r);printf("\n");

  //ANS->x
  fp7_mul_lazy_montgomery(&tmp1,&r,&r);

  fp7_mul_lazy_montgomery(&tmpH2,&H,&H);
  fp7_mul_lazy_montgomery(&tmpH3,&tmpH2,&H);
  fp7_sub(&tmp2,&tmp1,&tmpH3);

  fp7_mul_lazy_montgomery(&tmpU1H2,&tmpH2,&U1);
  fp7_add(&tmp1,&tmpU1H2,&tmpU1H2);
  fp7_sub(&ANS->x,&tmp2,&tmp1);

  //ANS->y
  fp7_sub_nonmod_single(&tmp1,&tmpU1H2,&ANS->x);
  fp7_mul_lazy_montgomery(&tmp1,&tmp1,&r);

  fp7_mul_lazy_montgomery(&tmp2,&tmpH3,&S1);
  fp7_sub(&ANS->y,&tmp1,&tmp2);

  //ANS->z
  fp7_mul_lazy_montgomery(&tmp1,&Pt1.z,&Pt2.z);
  fp7_mul_lazy_montgomery(&ANS->z,&tmp1,&H);
  //getchar();
}
void efp7_eca_mixture_lazy_montgomery(efp7_jacobian_t *ANS,efp7_jacobian_t *P1,efp7_jacobian_t *P2){
  static efp7_jacobian_t Pt1,Pt2;
  static fp7_t Z1Z1,HH,I,J,V;
  static fp7_t U1,U2,S1,S2,H,r;
  static fp7_t buf,tmp1,tmp2;

  if(P1->infinity==1){
    efp7_jacobian_set(ANS,P2);
    return;
  }else if(P2->infinity==1){
    efp7_jacobian_set(ANS,P1);
    return;
  }else if(fp7_cmp(&P1->x,&P2->x)==0){
    if(fp7_cmp(&P1->y,&P2->y)!=0){
      ANS->infinity=1;
      return;
    }else{
      efp7_ecd_jacobian_lazy_montgomery(ANS,P1);
      return;
    }
  }

  efp7_jacobian_set(&Pt1,P1);
  efp7_jacobian_set(&Pt2,P2);

  //Z1Z1
  fp7_mul_lazy_montgomery(&Z1Z1,&Pt1.z,&Pt1.z);

  //U2
  fp7_mul_lazy_montgomery(&U2,&Pt2.x,&Z1Z1);

  //S2
  fp7_mul_lazy_montgomery(&tmp1,&Z1Z1,&Pt1.z);
  fp7_mul_lazy_montgomery(&S2,&tmp1,&Pt2.y);

  //H
  fp7_sub(&H,&U2,&Pt1.x);

  //HH
  fp7_mul_lazy_montgomery(&HH,&H,&H);

  //I
  fp7_add(&I,&HH,&HH);
  fp7_add(&I,&I,&I);

  //J
  fp7_mul_lazy_montgomery(&J,&HH,&H);

  //r
  fp7_sub(&r,&S2,&Pt1.y);

  //V
  fp7_mul_lazy_montgomery(&V,&Pt1.x,&HH);

  //X3
  fp7_mul_lazy_montgomery(&tmp1,&r,&r);
  fp7_add(&tmp2,&V,&V);
  fp7_sub(&buf,&tmp1,&J);
  fp7_sub(&ANS->x,&buf,&tmp2);

  //Y3
  fp7_sub_nonmod_single(&tmp1,&V,&ANS->x);
  fp7_mul_lazy_montgomery(&tmp2,&tmp1,&r);
  fp7_mul_lazy_montgomery(&tmp1,&Pt1.y,&J);
  fp7_sub(&ANS->y,&tmp2,&tmp1);


  //ANS->z
  fp7_mul_lazy_montgomery(&ANS->z,&Pt1.z,&H);

}

void efp7_scm(efp7_t *ANS,efp7_t *P,mpz_t scalar){
  if(mpz_cmp_ui(scalar,0)==0){
    ANS->infinity=1;
    return;
  }else if(mpz_cmp_ui(scalar,1)==0){
    efp7_set(ANS,P);
    return;
  }

  efp7_t Tmp_P,Next_P;
  efp7_init(&Tmp_P);
  efp7_set(&Tmp_P,P);
  efp7_init(&Next_P);
  int i,length;
  length=(int)mpz_sizeinbase(scalar,2);
  char binary[length+1];
  mpz_get_str(binary,2,scalar);

  efp7_set(&Next_P,&Tmp_P);
  for(i=1;i<length;i++){
    efp7_ecd(&Next_P,&Next_P);
    if(binary[i]=='1')  efp7_eca(&Next_P,&Next_P,&Tmp_P);
  }
  efp7_set(ANS,&Next_P);
}

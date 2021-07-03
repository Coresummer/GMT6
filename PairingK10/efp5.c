#include "efp5.h"

void efp5_init(efp5_t *P){
  fp5_init(&P->x);
  fp5_init(&P->y);
  P->infinity=1;
}

void efp5_projective_init(efp5_projective_t *P){
  fp5_init(&P->x);
  fp5_init(&P->y);
  fp5_init(&P->z);
  P->infinity=1;
}

void efp5_jacobian_init(efp5_jacobian_t *P){
  fp5_init(&P->x);
  fp5_init(&P->y);
  fp5_init(&P->z);
  P->infinity=1;
}
void efp5_printf(std::string str ,efp5_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp5_printf("",&P->x);
    printf(",");
    fp5_printf("",&P->y);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp5_println(std::string str ,efp5_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp5_printf("",&P->x);
    printf(",");
    fp5_printf("",&P->y);
    printf(")\n");
  }else{
    printf("Infinity\n");
  }
}

void efp5_projective_printf(std::string str ,efp5_projective_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp5_printf("",&P->x);
    printf(",");
    fp5_printf("",&P->y);
    printf(",");
    fp5_printf("",&P->z);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp5_jacobian_printf(std::string str ,efp5_jacobian_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp5_printf("",&P->x);
    printf(",");
    fp5_printf("",&P->y);
    printf(",");
    fp5_printf("",&P->z);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp5_printf_montgomery(std::string str ,efp5_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp5_printf_montgomery("",&P->x);
    printf(",");
    fp5_printf_montgomery("",&P->y);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp5_jacobian_printf_montgomery(std::string str ,efp5_jacobian_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp5_printf_montgomery("",&P->x);
    printf(",");
    fp5_printf_montgomery("",&P->y);
    printf(",");
    fp5_printf_montgomery("",&P->z);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp5_projective_printf_montgomery(std::string str ,efp5_projective_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp5_printf_montgomery("",&P->x);
    printf(",");
    fp5_printf_montgomery("",&P->y);
    printf(",");
    fp5_printf_montgomery("",&P->z);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp5_projective_printf_affine(std::string str ,efp5_projective_t *P){
  static efp5_t out;
  efp5_projective_to_affine(&out,P);
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp5_printf("",&out.x);
    printf(",");
    fp5_printf("",&out.y);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp5_projective_printf_affine_montgomery(std::string str ,efp5_projective_t *P){
  static efp5_t out;
  efp5_projective_to_affine_montgomery(&out,P);
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp5_printf_montgomery("",&out.x);
    printf(",");
    fp5_printf_montgomery("",&out.y);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp5_set(efp5_t *ANS,efp5_t *A){
  fp5_set(&ANS->x,&A->x);
  fp5_set(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp5_projective_set(efp5_projective_t *ANS,efp5_projective_t *A){
  fp5_set(&ANS->x,&A->x);
  fp5_set(&ANS->y,&A->y);
  fp5_set(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp5_jacobian_set(efp5_jacobian_t *ANS,efp5_jacobian_t *A){
  fp5_set(&ANS->x,&A->x);
  fp5_set(&ANS->y,&A->y);
  fp5_set(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp5_affine_to_projective(efp5_projective_t *ANS,efp5_t *A){
  fp5_set(&ANS->x,&A->x);
  fp5_set(&ANS->y,&A->y);
  fp5_set_ui(&ANS->z,1);
  ANS->infinity=A->infinity;
}

void efp5_affine_to_jacobian(efp5_jacobian_t *ANS,efp5_t *A){
  fp5_set(&ANS->x,&A->x);
  fp5_set(&ANS->y,&A->y);
  fp5_set_ui(&ANS->z,1);
  ANS->infinity=A->infinity;
}

void efp5_affine_to_projective_montgomery(efp5_projective_t *ANS,efp5_t *A){
  fp5_set(&ANS->x,&A->x);
  fp5_set(&ANS->y,&A->y);
  fp5_set_mpn(&ANS->z,RmodP);
  ANS->infinity=A->infinity;
}

void efp5_affine_to_jacobian_montgomery(efp5_jacobian_t *ANS,efp5_t *A){
  fp5_set(&ANS->x,&A->x);
  fp5_set(&ANS->y,&A->y);
  fp5_set_mpn(&ANS->z,RmodP);
  ANS->infinity=A->infinity;
}

void efp5_jacobian_to_affine(efp5_t *ANS,efp5_jacobian_t *A){
  static fp5_t Zi,Zt;
  //TODO:mul->mul_lazy
  fp5_inv(&Zi,&A->z);
  fp5_mul(&Zt,&Zi,&Zi);
  fp5_mul(&ANS->x,&A->x,&Zt);
  fp5_mul(&Zt,&Zt,&Zi);
  fp5_mul(&ANS->y,&A->y,&Zt);
  ANS->infinity=A->infinity;
}

void efp5_projective_to_affine(efp5_t *ANS,efp5_projective_t *A){
  static fp5_t Zi;
  //TODO:mul->mul_lazy
  fp5_inv(&Zi,&A->z);
  fp5_mul(&ANS->x,&A->x,&Zi);
  fp5_mul(&ANS->y,&A->y,&Zi);
  ANS->infinity=A->infinity;
}

void efp5_jacobian_to_affine_montgomery(efp5_t *ANS,efp5_jacobian_t *A){
  static fp5_t Zi,Zt;
  fp5_inv_lazy_montgomery(&Zi,&A->z);
  fp5_mul_lazy_montgomery(&Zt,&Zi,&Zi);
  fp5_mul_lazy_montgomery(&ANS->x,&A->x,&Zt);
  fp5_mul_lazy_montgomery(&Zt,&Zt,&Zi);
  fp5_mul_lazy_montgomery(&ANS->y,&A->y,&Zt);
  ANS->infinity=A->infinity;
}

void efp5_projective_to_affine_montgomery(efp5_t *ANS,efp5_projective_t *A){
  static fp5_t Zi;
  //TODO:mul->mul_lazy
  fp5_inv_lazy_montgomery(&Zi,&A->z);
  fp5_mul_lazy_montgomery(&ANS->x,&A->x,&Zi);
  fp5_mul_lazy_montgomery(&ANS->y,&A->y,&Zi);
  ANS->infinity=A->infinity;
}

void efp5_mix(efp5_jacobian_t *ANS,efp5_jacobian_t *A,fp5_t *Zi){
  static fp5_t Zt;
  //TODO:mul->mul_lazy
  fp5_mul(&Zt,Zi,Zi);
  fp5_mul(&ANS->x,&A->x,&Zt);
  fp5_mul(&Zt,&Zt,Zi);
  fp5_mul(&ANS->y,&A->y,&Zt);
  fp5_set_ui(&ANS->z,1);
  ANS->infinity=A->infinity;
}

void efp5_mix_montgomery(efp5_jacobian_t *ANS,efp5_jacobian_t *A,fp5_t *Zi){
  static fp5_t Zt;
  fp5_mul_lazy_montgomery(&Zt,Zi,Zi);
  fp5_mul_lazy_montgomery(&ANS->x,&A->x,&Zt);
  fp5_mul_lazy_montgomery(&Zt,&Zt,Zi);
  fp5_mul_lazy_montgomery(&ANS->y,&A->y,&Zt);
  fp5_set_mpn(&ANS->z,RmodP);
  ANS->infinity=A->infinity;
}

void efp5_set_ui(efp5_t *ANS,unsigned long int UI){
  fp5_set_ui(&ANS->x,UI);
  fp5_set_ui(&ANS->y,UI);
  ANS->infinity=0;
}

void efp5_to_montgomery(efp5_t *ANS,efp5_t *A){
  fp5_to_montgomery(&ANS->x,&A->x);
  fp5_to_montgomery(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp5_projective_to_montgomery(efp5_projective_t *ANS,efp5_projective_t *A){
  fp5_to_montgomery(&ANS->x,&A->x);
  fp5_to_montgomery(&ANS->y,&A->y);
  fp5_to_montgomery(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp5_mod_montgomery(efp5_t *ANS,efp5_t *A){
  fp5_mod_montgomery(&ANS->x,&A->x);
  fp5_mod_montgomery(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp5_projective_mod_montgomery(efp5_projective_t *ANS,efp5_projective_t *A){
  fp5_mod_montgomery(&ANS->x,&A->x);
  fp5_mod_montgomery(&ANS->y,&A->y);
  fp5_mod_montgomery(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp5_set_mpn(efp5_t *ANS,mp_limb_t *A){
  fp5_set_mpn(&ANS->x,A);
  fp5_set_mpn(&ANS->y,A);
  ANS->infinity=0;
}

void efp5_set_neg(efp5_t *ANS,efp5_t *A){
  fp5_set(&ANS->x,&A->x);
  fp5_set_neg(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp5_jacobian_set_neg(efp5_jacobian_t *ANS,efp5_jacobian_t *A){
  fp5_set(&ANS->x,&A->x);
  fp5_set_neg(&ANS->y,&A->y);
  fp5_set(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

int efp5_cmp(efp5_t *A,efp5_t *B){
  if(A->infinity==1 && B->infinity==1)  return 0;
  else if(A->infinity != B->infinity) return 1;
  else if(fp5_cmp(&A->x,&B->x)==0 && fp5_cmp(&A->y,&B->y)==0) return 0;
  else  return 1;
}

void efp5_rational_point(efp5_t *P){
  fp5_t tmp_ax,tmp_y2;
  fp5_init(&tmp_ax);
  fp5_init(&tmp_y2);

  P->infinity=0;
  while(1){
    fp5_set_random(&P->x,state);
    //y^2 = x^3 + ax
    fp5_sqr(&tmp_y2,&P->x);
    fp5_mul(&tmp_y2,&tmp_y2,&P->x);
    fp5_mul_mpn(&tmp_ax,&P->x,curve_a.x0);
    fp5_add(&tmp_y2,&tmp_y2,&tmp_ax);
    if(fp5_legendre(&tmp_y2)==1){
      fp5_sqrt(&P->y,&tmp_y2);
      break;
    }
  }
}

void efp5_ecd(efp5_t *ANS,efp5_t *P){
  static efp5_t tmp1_efp5;
  static fp5_t tmp1_fp5,tmp2_fp5,tmp3_fp5;
  if(P->infinity==1){
    ANS->infinity=1;
    return;
  }
  if(fp5_cmp_zero(&P->y)==0){
    ANS->infinity=1;
    return;
  }
  ANS->infinity=0;
  efp5_set(&tmp1_efp5,P);

  //tmp1_fp = 1/2yp
  fp5_add(&tmp1_fp5,&tmp1_efp5.y,&tmp1_efp5.y);
  fp5_inv(&tmp1_fp5,&tmp1_fp5);
  //tmp2_fp = 3x^2 +a
  fp5_sqr(&tmp2_fp5,&tmp1_efp5.x);
  fp5_add(&tmp3_fp5,&tmp2_fp5,&tmp2_fp5);
  fp5_add(&tmp2_fp5,&tmp2_fp5,&tmp3_fp5);
  fp_add(&tmp2_fp5.x0,&tmp2_fp5.x0,&curve_a);
  //tmp3_fp = lambda
  fp5_mul(&tmp3_fp5,&tmp1_fp5,&tmp2_fp5);

  //ANS.x
  fp5_sqr(&tmp1_fp5,&tmp3_fp5);
  fp5_add(&tmp2_fp5,&tmp1_efp5.x,&tmp1_efp5.x);
  fp5_sub(&ANS->x,&tmp1_fp5,&tmp2_fp5);
  //ANS.y
  fp5_sub(&tmp1_fp5,&tmp1_efp5.x,&ANS->x);
  fp5_mul(&tmp2_fp5,&tmp3_fp5,&tmp1_fp5);
  fp5_sub(&ANS->y,&tmp2_fp5,&tmp1_efp5.y);
}

void efp5_ecd_jacobian_lazy_montgomery(efp5_jacobian_t *ANS,efp5_jacobian_t *P){
  static fp5_t s,m,T;

  static fp5_t buf,tmp1;
  static fp5_t tmpY2;
  static efp5_jacobian_t Pt;
  if(fp5_cmp_zero(&P->y)==0){
    ANS->infinity=1;
    return;
  }

  efp5_jacobian_set(&Pt,P);

  //s
  fp5_mul_lazy_montgomery(&tmpY2,&Pt.y,&Pt.y);
  fp5_mul_lazy_montgomery(&tmp1,&tmpY2,&Pt.x);
  fp5_add(&tmp1,&tmp1,&tmp1);
  fp5_add(&s,&tmp1,&tmp1);

  //m
  fp5_add_nonmod_single(&tmp1,&Pt.x,&Pt.x);
  fp5_add_nonmod_single(&tmp1,&tmp1,&Pt.x);
  fp5_mul_lazy_montgomery(&m,&tmp1,&Pt.x);

  //T
  fp5_mul_lazy_montgomery(&T,&m,&m);
  fp5_add(&tmp1,&s,&s);
  fp5_sub(&T,&T,&tmp1);

  //ANS->x
  fp5_set(&ANS->x,&T);

  //ANS->y
  fp5_sub_nonmod_single(&tmp1,&s,&T);
  fp5_mul_lazy_montgomery(&buf,&tmp1,&m);

  fp5_mul_lazy_montgomery(&tmp1,&tmpY2,&tmpY2);
  fp5_add(&tmp1,&tmp1,&tmp1);
  fp5_add(&tmp1,&tmp1,&tmp1);
  fp5_add(&tmp1,&tmp1,&tmp1);
  fp5_sub(&ANS->y,&buf,&tmp1);

  //ANS->z
  fp5_add_nonmod_single(&tmp1,&Pt.y,&Pt.y);
  fp5_mul_lazy_montgomery(&ANS->z,&tmp1,&Pt.z);
}

void efp5_eca(efp5_t *ANS,efp5_t *P1,efp5_t *P2){
  static efp5_t tmp1_efp5,tmp2_efp5;
  static fp5_t tmp1_fp5,tmp2_fp5,tmp3_fp5;
  if(P1->infinity==1){
    efp5_set(ANS,P2);
    return;
  }
  else if(P2->infinity==1){
    efp5_set(ANS,P1);
    return;
  }
  else if(fp5_cmp(&P1->x,&P2->x)==0){
    if(fp5_cmp(&P1->y,&P2->y)!=0){
      ANS->infinity=1;
      return;
    }else{
      efp5_ecd(ANS,P1);
      return;
    }
  }
  ANS->infinity=0;
  efp5_set(&tmp1_efp5,P1);
  efp5_set(&tmp2_efp5,P2);

  //tmp3_fp = lambda
  fp5_sub(&tmp1_fp5,&tmp2_efp5.x,&tmp1_efp5.x);
  fp5_inv(&tmp1_fp5,&tmp1_fp5);
  fp5_sub(&tmp2_fp5,&tmp2_efp5.y,&tmp1_efp5.y);
  fp5_mul(&tmp3_fp5,&tmp1_fp5,&tmp2_fp5);

  //ANS.x
  fp5_sqr(&tmp1_fp5,&tmp3_fp5);
  fp5_sub(&tmp2_fp5,&tmp1_fp5,&tmp1_efp5.x);
  fp5_sub(&ANS->x,&tmp2_fp5,&tmp2_efp5.x);
  //ANS.y
  fp5_sub(&tmp1_fp5,&tmp1_efp5.x,&ANS->x);
  fp5_mul(&tmp2_fp5,&tmp3_fp5,&tmp1_fp5);
  fp5_sub(&ANS->y,&tmp2_fp5,&tmp1_efp5.y);
}

void efp5_eca_jacobian_lazy_montgomery(efp5_jacobian_t *ANS,efp5_jacobian_t *P1,efp5_jacobian_t *P2){
  static efp5_jacobian_t Pt1,Pt2;
  static fp5_t U1,U2,S1,S2,H,r;

  static fp5_t buf,tmp1,tmp2;
  static fp5_t tmpZ1,tmpZ2,tmpH2,tmpH3,tmpU1H2;

  if(P1->infinity==1){
    efp5_jacobian_set(ANS,P2);
    return;
  }else if(P2->infinity==1){
    efp5_jacobian_set(ANS,P1);
    return;
  }else if(fp5_cmp(&P1->x,&P2->x)==0){
    if(fp5_cmp(&P1->y,&P2->y)!=0){
      ANS->infinity=1;
      return;
    }else{
      efp5_ecd_jacobian_lazy_montgomery(ANS,P1);
      return;
    }
  }

  efp5_jacobian_set(&Pt1,P1);
  efp5_jacobian_set(&Pt2,P2);

  //U1
  fp5_mul_lazy_montgomery(&tmpZ2,&Pt2.z,&Pt2.z);
  fp5_mul_lazy_montgomery(&U1,&tmpZ2,&Pt1.x);
  //fp5_printf("U1=",&U1);printf("\n");

  //U2
  fp5_mul_lazy_montgomery(&tmpZ1,&Pt1.z,&Pt1.z);
  fp5_mul_lazy_montgomery(&U2,&tmpZ1,&Pt2.x);
  //fp5_printf("U2=",&U2);printf("\n");

  //S1
  fp5_mul_lazy_montgomery(&tmp1,&tmpZ2,&Pt2.z);
  fp5_mul_lazy_montgomery(&S1,&tmp1,&Pt1.y);
  //fp5_printf("S1=",&S1);printf("\n");

  //S2
  fp5_mul_lazy_montgomery(&tmp1,&tmpZ1,&Pt1.z);
  fp5_mul_lazy_montgomery(&S2,&tmp1,&Pt2.y);
  //fp5_printf("S2=",&S2);printf("\n");

  //H
  //fp5_printf("U1=",&U1);printf("\n");
  fp5_sub(&H,&U2,&U1);
  //fp5_printf("H=",&H);printf("\n");

  //r
  fp5_sub(&r,&S2,&S1);
  //fp5_printf("r=",&r);printf("\n");

  //ANS->x
  fp5_mul_lazy_montgomery(&tmp1,&r,&r);

  fp5_mul_lazy_montgomery(&tmpH2,&H,&H);
  fp5_mul_lazy_montgomery(&tmpH3,&tmpH2,&H);
  fp5_sub(&tmp2,&tmp1,&tmpH3);

  fp5_mul_lazy_montgomery(&tmpU1H2,&tmpH2,&U1);
  fp5_add(&tmp1,&tmpU1H2,&tmpU1H2);
  fp5_sub(&ANS->x,&tmp2,&tmp1);

  //ANS->y
  fp5_sub_nonmod_single(&tmp1,&tmpU1H2,&ANS->x);
  fp5_mul_lazy_montgomery(&tmp1,&tmp1,&r);

  fp5_mul_lazy_montgomery(&tmp2,&tmpH3,&S1);
  fp5_sub(&ANS->y,&tmp1,&tmp2);

  //ANS->z
  fp5_mul_lazy_montgomery(&tmp1,&Pt1.z,&Pt2.z);
  fp5_mul_lazy_montgomery(&ANS->z,&tmp1,&H);
  //getchar();
}
void efp5_eca_mixture_lazy_montgomery(efp5_jacobian_t *ANS,efp5_jacobian_t *P1,efp5_jacobian_t *P2){
  static efp5_jacobian_t Pt1,Pt2;
  static fp5_t Z1Z1,HH,I,J,V;
  static fp5_t U1,U2,S1,S2,H,r;
  static fp5_t buf,tmp1,tmp2;

  if(P1->infinity==1){
    efp5_jacobian_set(ANS,P2);
    return;
  }else if(P2->infinity==1){
    efp5_jacobian_set(ANS,P1);
    return;
  }else if(fp5_cmp(&P1->x,&P2->x)==0){
    if(fp5_cmp(&P1->y,&P2->y)!=0){
      ANS->infinity=1;
      return;
    }else{
      efp5_ecd_jacobian_lazy_montgomery(ANS,P1);
      return;
    }
  }

  efp5_jacobian_set(&Pt1,P1);
  efp5_jacobian_set(&Pt2,P2);

  //Z1Z1
  fp5_mul_lazy_montgomery(&Z1Z1,&Pt1.z,&Pt1.z);

  //U2
  fp5_mul_lazy_montgomery(&U2,&Pt2.x,&Z1Z1);

  //S2
  fp5_mul_lazy_montgomery(&tmp1,&Z1Z1,&Pt1.z);
  fp5_mul_lazy_montgomery(&S2,&tmp1,&Pt2.y);

  //H
  fp5_sub(&H,&U2,&Pt1.x);

  //HH
  fp5_mul_lazy_montgomery(&HH,&H,&H);

  //I
  fp5_add(&I,&HH,&HH);
  fp5_add(&I,&I,&I);

  //J
  fp5_mul_lazy_montgomery(&J,&HH,&H);

  //r
  fp5_sub(&r,&S2,&Pt1.y);

  //V
  fp5_mul_lazy_montgomery(&V,&Pt1.x,&HH);

  //X3
  fp5_mul_lazy_montgomery(&tmp1,&r,&r);
  fp5_add(&tmp2,&V,&V);
  fp5_sub(&buf,&tmp1,&J);
  fp5_sub(&ANS->x,&buf,&tmp2);

  //Y3
  fp5_sub_nonmod_single(&tmp1,&V,&ANS->x);
  fp5_mul_lazy_montgomery(&tmp2,&tmp1,&r);
  fp5_mul_lazy_montgomery(&tmp1,&Pt1.y,&J);
  fp5_sub(&ANS->y,&tmp2,&tmp1);


  //ANS->z
  fp5_mul_lazy_montgomery(&ANS->z,&Pt1.z,&H);

}

void efp5_scm(efp5_t *ANS,efp5_t *P,mpz_t scalar){
  if(mpz_cmp_ui(scalar,0)==0){
    ANS->infinity=1;
    return;
  }else if(mpz_cmp_ui(scalar,1)==0){
    efp5_set(ANS,P);
    return;
  }

  efp5_t Tmp_P,Next_P;
  efp5_init(&Tmp_P);
  efp5_set(&Tmp_P,P);
  efp5_init(&Next_P);
  int i,length;
  length=(int)mpz_sizeinbase(scalar,2);
  char binary[length+1];
  mpz_get_str(binary,2,scalar);

  efp5_set(&Next_P,&Tmp_P);
  for(i=1;i<length;i++){
    efp5_ecd(&Next_P,&Next_P);
    if(binary[i]=='1')  efp5_eca(&Next_P,&Next_P,&Tmp_P);
  }
  efp5_set(ANS,&Next_P);
}

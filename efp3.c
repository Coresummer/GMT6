#include "efp3.h"

void efp3_init(efp3_t *P){
  fp3_init(&P->x);
  fp3_init(&P->y);
  P->infinity=1;
}

void efp3_projective_init(efp3_projective_t *P){
  fp3_init(&P->x);
  fp3_init(&P->y);
  fp3_init(&P->z);
  P->infinity=1;
}

void efp3_jacobian_init(efp3_jacobian_t *P){
  fp3_init(&P->x);
  fp3_init(&P->y);
  fp3_init(&P->z);
  P->infinity=1;
}
void efp3_printf(char *str,efp3_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp3_printf("",&P->x);
    printf(",");
    fp3_printf("",&P->y);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp3_println(char *str,efp3_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp3_printf("",&P->x);
    printf(",");
    fp3_printf("",&P->y);
    printf(")\n");
  }else{
    printf("Infinity\n");
  }
}

void efp3_projective_printf(char *str,efp3_projective_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp3_printf("",&P->x);
    printf(",");
    fp3_printf("",&P->y);
    printf(",");
    fp3_printf("",&P->z);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp3_jacobian_printf(char *str,efp3_jacobian_t *P){
  printf("%s",str);
  if(P->infinity==0){
    printf("(");
    fp3_printf("",&P->x);
    printf(",");
    fp3_printf("",&P->y);
    printf(",");
    fp3_printf("",&P->z);
    printf(")");
  }else{
    printf("Infinity");
  }
}

// void efp3_printf_montgomery(char *str,efp3_t *P){
//   printf("%s",str);
//   if(P->infinity==0){
//     printf("(");
//     fp3_printf_montgomery("",&P->x);
//     printf(",");
//     fp3_printf_montgomery("",&P->y);
//     printf(")");
//   }else{
//     printf("Infinity");
//   }
// }

// void efp3_jacobian_printf_montgomery(char *str,efp3_jacobian_t *P){
//   printf("%s",str);
//   if(P->infinity==0){
//     printf("(");
//     fp3_printf_montgomery("",&P->x);
//     printf(",");
//     fp3_printf_montgomery("",&P->y);
//     printf(",");
//     fp3_printf_montgomery("",&P->z);
//     printf(")");
//   }else{
//     printf("Infinity");
//   }
// }

// void efp3_projective_printf_montgomery(char *str,efp3_projective_t *P){
//   printf("%s",str);
//   if(P->infinity==0){
//     printf("(");
//     fp3_printf_montgomery("",&P->x);
//     printf(",");
//     fp3_printf_montgomery("",&P->y);
//     printf(",");
//     fp3_printf_montgomery("",&P->z);
//     printf(")");
//   }else{
//     printf("Infinity");
//   }
// }

// void efp3_projective_printf_affine(char *str,efp3_projective_t *P){
//   static efp3_t out;
//   efp3_projective_to_affine(&out,P);
//   printf("%s",str);
//   if(P->infinity==0){
//     printf("(");
//     fp3_printf("",&out.x);
//     printf(",");
//     fp3_printf("",&out.y);
//     printf(")");
//   }else{
//     printf("Infinity");
//   }
// }

// void efp3_projective_printf_affine_montgomery(char *str,efp3_projective_t *P){
//   static efp3_t out;
//   efp3_projective_to_affine_montgomery(&out,P);
//   printf("%s",str);
//   if(P->infinity==0){
//     printf("(");
//     fp3_printf_montgomery("",&out.x);
//     printf(",");
//     fp3_printf_montgomery("",&out.y);
//     printf(")");
//   }else{
//     printf("Infinity");
//   }
// }

void efp3_set(efp3_t *ANS,efp3_t *A){
  fp3_set(&ANS->x,&A->x);
  fp3_set(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp3_projective_set(efp3_projective_t *ANS,efp3_projective_t *A){
  fp3_set(&ANS->x,&A->x);
  fp3_set(&ANS->y,&A->y);
  fp3_set(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp3_jacobian_set(efp3_jacobian_t *ANS,efp3_jacobian_t *A){
  fp3_set(&ANS->x,&A->x);
  fp3_set(&ANS->y,&A->y);
  fp3_set(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp3_affine_to_projective(efp3_projective_t *ANS,efp3_t *A){
  fp3_set(&ANS->x,&A->x);
  fp3_set(&ANS->y,&A->y);
  fp3_set_ui(&ANS->z,1);
  ANS->infinity=A->infinity;
}

void efp3_affine_to_jacobian(efp3_jacobian_t *ANS,efp3_t *A){
  fp3_set(&ANS->x,&A->x);
  fp3_set(&ANS->y,&A->y);
  fp3_set_ui(&ANS->z,1);
  ANS->infinity=A->infinity;
}

void efp3_affine_to_projective_montgomery(efp3_projective_t *ANS,efp3_t *A){
  fp3_set(&ANS->x,&A->x);
  fp3_set(&ANS->y,&A->y);
  fp3_set_mpn(&ANS->z,RmodP);
  ANS->infinity=A->infinity;
}

void efp3_affine_to_jacobian_montgomery(efp3_jacobian_t *ANS,efp3_t *A){
  fp3_set(&ANS->x,&A->x);
  fp3_set(&ANS->y,&A->y);
  fp3_set_mpn(&ANS->z,RmodP);
  ANS->infinity=A->infinity;
}

void efp3_jacobian_to_affine(efp3_t *ANS,efp3_jacobian_t *A){
  static fp3_t Zi,Zt;
  //TODO:mul->mul_lazy
  fp3_inv(&Zi,&A->z);
  fp3_mul(&Zt,&Zi,&Zi);
  fp3_mul(&ANS->x,&A->x,&Zt);
  fp3_mul(&Zt,&Zt,&Zi);
  fp3_mul(&ANS->y,&A->y,&Zt);
  ANS->infinity=A->infinity;
}

void efp3_projective_to_affine(efp3_t *ANS,efp3_projective_t *A){
  static fp3_t Zi;
  //TODO:mul->mul_lazy
  fp3_inv(&Zi,&A->z);
  fp3_mul(&ANS->x,&A->x,&Zi);
  fp3_mul(&ANS->y,&A->y,&Zi);
  ANS->infinity=A->infinity;
}

// void efp3_jacobian_to_affine_montgomery(efp3_t *ANS,efp3_jacobian_t *A){
//   static fp3_t Zi,Zt;
//   fp3_inv_lazy_montgomery(&Zi,&A->z);
//   fp3_mul_lazy_montgomery(&Zt,&Zi,&Zi);
//   fp3_mul_lazy_montgomery(&ANS->x,&A->x,&Zt);
//   fp3_mul_lazy_montgomery(&Zt,&Zt,&Zi);
//   fp3_mul_lazy_montgomery(&ANS->y,&A->y,&Zt);
//   ANS->infinity=A->infinity;
// }

// void efp3_projective_to_affine_montgomery(efp3_t *ANS,efp3_projective_t *A){
//   static fp3_t Zi;
//   //TODO:mul->mul_lazy
//   fp3_inv_lazy_montgomery(&Zi,&A->z);
//   fp3_mul_lazy_montgomery(&ANS->x,&A->x,&Zi);
//   fp3_mul_lazy_montgomery(&ANS->y,&A->y,&Zi);
//   ANS->infinity=A->infinity;
// }

void efp3_mix(efp3_jacobian_t *ANS,efp3_jacobian_t *A,fp3_t *Zi){
  static fp3_t Zt;
  //TODO:mul->mul_lazy
  fp3_mul(&Zt,Zi,Zi);
  fp3_mul(&ANS->x,&A->x,&Zt);
  fp3_mul(&Zt,&Zt,Zi);
  fp3_mul(&ANS->y,&A->y,&Zt);
  fp3_set_ui(&ANS->z,1);
  ANS->infinity=A->infinity;
}

// void efp3_mix_montgomery(efp3_jacobian_t *ANS,efp3_jacobian_t *A,fp3_t *Zi){
//   static fp3_t Zt;
//   fp3_mul_lazy_montgomery(&Zt,Zi,Zi);
//   fp3_mul_lazy_montgomery(&ANS->x,&A->x,&Zt);
//   fp3_mul_lazy_montgomery(&Zt,&Zt,Zi);
//   fp3_mul_lazy_montgomery(&ANS->y,&A->y,&Zt);
//   fp3_set_mpn(&ANS->z,RmodP);
//   ANS->infinity=A->infinity;
// }

void efp3_set_ui(efp3_t *ANS,unsigned long int UI){
  fp3_set_ui(&ANS->x,UI);
  fp3_set_ui(&ANS->y,UI);
  ANS->infinity=0;
}

void efp3_to_montgomery(efp3_t *ANS,efp3_t *A){
  fp3_to_montgomery(&ANS->x,&A->x);
  fp3_to_montgomery(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp3_projective_to_montgomery(efp3_projective_t *ANS,efp3_projective_t *A){
  fp3_to_montgomery(&ANS->x,&A->x);
  fp3_to_montgomery(&ANS->y,&A->y);
  fp3_to_montgomery(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp3_mod_montgomery(efp3_t *ANS,efp3_t *A){
  fp3_mod_montgomery(&ANS->x,&A->x);
  fp3_mod_montgomery(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp3_projective_mod_montgomery(efp3_projective_t *ANS,efp3_projective_t *A){
  fp3_mod_montgomery(&ANS->x,&A->x);
  fp3_mod_montgomery(&ANS->y,&A->y);
  fp3_mod_montgomery(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp3_set_mpn(efp3_t *ANS,mp_limb_t *A){
  fp3_set_mpn(&ANS->x,A);
  fp3_set_mpn(&ANS->y,A);
  ANS->infinity=0;
}

void efp3_set_neg(efp3_t *ANS,efp3_t *A){
  fp3_set(&ANS->x,&A->x);
  fp3_set_neg(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp3_jacobian_set_neg(efp3_jacobian_t *ANS,efp3_jacobian_t *A){
  fp3_set(&ANS->x,&A->x);
  fp3_set_neg(&ANS->y,&A->y);
  fp3_set(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

int efp3_cmp(efp3_t *A,efp3_t *B){
  if(A->infinity==1 && B->infinity==1)  return 0;
  else if(A->infinity != B->infinity) return 1;
  else if(fp3_cmp(&A->x,&B->x)==0 && fp3_cmp(&A->y,&B->y)==0) return 0;
  else  return 1;
}

void efp3_rational_point(efp3_t *P){
  fp3_t tmp_ax,tmp_y2;
  fp3_init(&tmp_ax);
  fp3_init(&tmp_y2);

  P->infinity=0;
  while(1){
    fp3_set_random(&P->x,state);
    //y^2 = x^3 + b
    fp3_sqr(&tmp_y2,&P->x);
    fp3_mul(&tmp_y2,&tmp_y2,&P->x);
    fp_add(&tmp_y2.x0,&tmp_y2.x0,&curve_b);
    if(fp3_legendre(&tmp_y2)==1){
      fp3_sqrt(&P->y,&tmp_y2);
      break;
    }
  }
}

void efp3_ecd(efp3_t *ANS,efp3_t *P){
  static efp3_t tmp1_efp3;
  static fp3_t tmp1_fp3,tmp2_fp3,tmp3_fp3;
  if(P->infinity==1){
    ANS->infinity=1;
    return;
  }
  if(fp3_cmp_zero(&P->y)==0){
    ANS->infinity=1;
    return;
  }
  ANS->infinity=0;
  efp3_set(&tmp1_efp3,P);

  //tmp1_fp = 1/2yp
  fp3_add(&tmp1_fp3,&tmp1_efp3.y,&tmp1_efp3.y);
  fp3_inv(&tmp1_fp3,&tmp1_fp3);
  //tmp2_fp = 3x^2 +a
  fp3_sqr(&tmp2_fp3,&tmp1_efp3.x);
  fp3_add(&tmp3_fp3,&tmp2_fp3,&tmp2_fp3);
  fp3_add(&tmp2_fp3,&tmp2_fp3,&tmp3_fp3);
  // fp_add(&tmp2_fp3.x0,&tmp2_fp3.x0,&curve_a);
  //tmp3_fp = lambda
  fp3_mul(&tmp3_fp3,&tmp1_fp3,&tmp2_fp3);

  //ANS.x
  fp3_sqr(&tmp1_fp3,&tmp3_fp3);
  fp3_add(&tmp2_fp3,&tmp1_efp3.x,&tmp1_efp3.x);
  fp3_sub(&ANS->x,&tmp1_fp3,&tmp2_fp3);
  //ANS.y
  fp3_sub(&tmp1_fp3,&tmp1_efp3.x,&ANS->x);
  fp3_mul(&tmp2_fp3,&tmp3_fp3,&tmp1_fp3);
  fp3_sub(&ANS->y,&tmp2_fp3,&tmp1_efp3.y);
}

// void efp3_ecd_jacobian_lazy_montgomery(efp3_jacobian_t *ANS,efp3_jacobian_t *P){
//   static fp3_t s,m,T;

//   static fp3_t buf,tmp1;
//   static fp3_t tmpY2;
//   static efp3_jacobian_t Pt;
//   if(fp3_cmp_zero(&P->y)==0){
//     ANS->infinity=1;
//     return;
//   }

//   efp3_jacobian_set(&Pt,P);

//   //s
//   fp3_mul_lazy_montgomery(&tmpY2,&Pt.y,&Pt.y);
//   fp3_mul_lazy_montgomery(&tmp1,&tmpY2,&Pt.x);
//   fp3_add(&tmp1,&tmp1,&tmp1);
//   fp3_add(&s,&tmp1,&tmp1);

//   //m
//   fp3_add_nonmod_single(&tmp1,&Pt.x,&Pt.x);
//   fp3_add_nonmod_single(&tmp1,&tmp1,&Pt.x);
//   fp3_mul_lazy_montgomery(&m,&tmp1,&Pt.x);

//   //T
//   fp3_mul_lazy_montgomery(&T,&m,&m);
//   fp3_add(&tmp1,&s,&s);
//   fp3_sub(&T,&T,&tmp1);

//   //ANS->x
//   fp3_set(&ANS->x,&T);

//   //ANS->y
//   fp3_sub_nonmod_single(&tmp1,&s,&T);
//   fp3_mul_lazy_montgomery(&buf,&tmp1,&m);

//   fp3_mul_lazy_montgomery(&tmp1,&tmpY2,&tmpY2);
//   fp3_add(&tmp1,&tmp1,&tmp1);
//   fp3_add(&tmp1,&tmp1,&tmp1);
//   fp3_add(&tmp1,&tmp1,&tmp1);
//   fp3_sub(&ANS->y,&buf,&tmp1);

//   //ANS->z
//   fp3_add_nonmod_single(&tmp1,&Pt.y,&Pt.y);
//   fp3_mul_lazy_montgomery(&ANS->z,&tmp1,&Pt.z);
// }

void efp3_eca(efp3_t *ANS,efp3_t *P1,efp3_t *P2){
  static efp3_t tmp1_efp3,tmp2_efp3;
  static fp3_t tmp1_fp3,tmp2_fp3,tmp3_fp3;
  if(P1->infinity==1){
    efp3_set(ANS,P2);
    return;
  }
  else if(P2->infinity==1){
    efp3_set(ANS,P1);
    return;
  }
  else if(fp3_cmp(&P1->x,&P2->x)==0){
    if(fp3_cmp(&P1->y,&P2->y)!=0){
      ANS->infinity=1;
      return;
    }else{
      efp3_ecd(ANS,P1);
      return;
    }
  }
  ANS->infinity=0;
  efp3_set(&tmp1_efp3,P1);
  efp3_set(&tmp2_efp3,P2);

  //tmp3_fp = lambda
  fp3_sub(&tmp1_fp3,&tmp2_efp3.x,&tmp1_efp3.x);
  fp3_inv(&tmp1_fp3,&tmp1_fp3);
  fp3_sub(&tmp2_fp3,&tmp2_efp3.y,&tmp1_efp3.y);
  fp3_mul(&tmp3_fp3,&tmp1_fp3,&tmp2_fp3);

  //ANS.x
  fp3_sqr(&tmp1_fp3,&tmp3_fp3);
  fp3_sub(&tmp2_fp3,&tmp1_fp3,&tmp1_efp3.x);
  fp3_sub(&ANS->x,&tmp2_fp3,&tmp2_efp3.x);
  //ANS.y
  fp3_sub(&tmp1_fp3,&tmp1_efp3.x,&ANS->x);
  fp3_mul(&tmp2_fp3,&tmp3_fp3,&tmp1_fp3);
  fp3_sub(&ANS->y,&tmp2_fp3,&tmp1_efp3.y);
}

// void efp3_eca_jacobian_lazy_montgomery(efp3_jacobian_t *ANS,efp3_jacobian_t *P1,efp3_jacobian_t *P2){
//   static efp3_jacobian_t Pt1,Pt2;
//   static fp3_t U1,U2,S1,S2,H,r;

//   static fp3_t buf,tmp1,tmp2;
//   static fp3_t tmpZ1,tmpZ2,tmpH2,tmpH3,tmpU1H2;

//   if(P1->infinity==1){
//     efp3_jacobian_set(ANS,P2);
//     return;
//   }else if(P2->infinity==1){
//     efp3_jacobian_set(ANS,P1);
//     return;
//   }else if(fp3_cmp(&P1->x,&P2->x)==0){
//     if(fp3_cmp(&P1->y,&P2->y)!=0){
//       ANS->infinity=1;
//       return;
//     }else{
//       efp3_ecd_jacobian_lazy_montgomery(ANS,P1);
//       return;
//     }
//   }

//   efp3_jacobian_set(&Pt1,P1);
//   efp3_jacobian_set(&Pt2,P2);

//   //U1
//   fp3_mul_lazy_montgomery(&tmpZ2,&Pt2.z,&Pt2.z);
//   fp3_mul_lazy_montgomery(&U1,&tmpZ2,&Pt1.x);
//   //fp3_printf("U1=",&U1);printf("\n");

//   //U2
//   fp3_mul_lazy_montgomery(&tmpZ1,&Pt1.z,&Pt1.z);
//   fp3_mul_lazy_montgomery(&U2,&tmpZ1,&Pt2.x);
//   //fp3_printf("U2=",&U2);printf("\n");

//   //S1
//   fp3_mul_lazy_montgomery(&tmp1,&tmpZ2,&Pt2.z);
//   fp3_mul_lazy_montgomery(&S1,&tmp1,&Pt1.y);
//   //fp3_printf("S1=",&S1);printf("\n");

//   //S2
//   fp3_mul_lazy_montgomery(&tmp1,&tmpZ1,&Pt1.z);
//   fp3_mul_lazy_montgomery(&S2,&tmp1,&Pt2.y);
//   //fp3_printf("S2=",&S2);printf("\n");

//   //H
//   //fp3_printf("U1=",&U1);printf("\n");
//   fp3_sub(&H,&U2,&U1);
//   //fp3_printf("H=",&H);printf("\n");

//   //r
//   fp3_sub(&r,&S2,&S1);
//   //fp3_printf("r=",&r);printf("\n");

//   //ANS->x
//   fp3_mul_lazy_montgomery(&tmp1,&r,&r);

//   fp3_mul_lazy_montgomery(&tmpH2,&H,&H);
//   fp3_mul_lazy_montgomery(&tmpH3,&tmpH2,&H);
//   fp3_sub(&tmp2,&tmp1,&tmpH3);

//   fp3_mul_lazy_montgomery(&tmpU1H2,&tmpH2,&U1);
//   fp3_add(&tmp1,&tmpU1H2,&tmpU1H2);
//   fp3_sub(&ANS->x,&tmp2,&tmp1);

//   //ANS->y
//   fp3_sub_nonmod_single(&tmp1,&tmpU1H2,&ANS->x);
//   fp3_mul_lazy_montgomery(&tmp1,&tmp1,&r);

//   fp3_mul_lazy_montgomery(&tmp2,&tmpH3,&S1);
//   fp3_sub(&ANS->y,&tmp1,&tmp2);

//   //ANS->z
//   fp3_mul_lazy_montgomery(&tmp1,&Pt1.z,&Pt2.z);
//   fp3_mul_lazy_montgomery(&ANS->z,&tmp1,&H);
//   //getchar();
// }
// void efp3_eca_mixture_lazy_montgomery(efp3_jacobian_t *ANS,efp3_jacobian_t *P1,efp3_jacobian_t *P2){
//   static efp3_jacobian_t Pt1,Pt2;
//   static fp3_t Z1Z1,HH,I,J,V;
//   static fp3_t U1,U2,S1,S2,H,r;
//   static fp3_t buf,tmp1,tmp2;

//   if(P1->infinity==1){
//     efp3_jacobian_set(ANS,P2);
//     return;
//   }else if(P2->infinity==1){
//     efp3_jacobian_set(ANS,P1);
//     return;
//   }else if(fp3_cmp(&P1->x,&P2->x)==0){
//     if(fp3_cmp(&P1->y,&P2->y)!=0){
//       ANS->infinity=1;
//       return;
//     }else{
//       efp3_ecd_jacobian_lazy_montgomery(ANS,P1);
//       return;
//     }
//   }

//   efp3_jacobian_set(&Pt1,P1);
//   efp3_jacobian_set(&Pt2,P2);

//   //Z1Z1
//   fp3_mul_lazy_montgomery(&Z1Z1,&Pt1.z,&Pt1.z);

//   //U2
//   fp3_mul_lazy_montgomery(&U2,&Pt2.x,&Z1Z1);

//   //S2
//   fp3_mul_lazy_montgomery(&tmp1,&Z1Z1,&Pt1.z);
//   fp3_mul_lazy_montgomery(&S2,&tmp1,&Pt2.y);

//   //H
//   fp3_sub(&H,&U2,&Pt1.x);

//   //HH
//   fp3_mul_lazy_montgomery(&HH,&H,&H);

//   //I
//   fp3_add(&I,&HH,&HH);
//   fp3_add(&I,&I,&I);

//   //J
//   fp3_mul_lazy_montgomery(&J,&HH,&H);

//   //r
//   fp3_sub(&r,&S2,&Pt1.y);

//   //V
//   fp3_mul_lazy_montgomery(&V,&Pt1.x,&HH);

//   //X3
//   fp3_mul_lazy_montgomery(&tmp1,&r,&r);
//   fp3_add(&tmp2,&V,&V);
//   fp3_sub(&buf,&tmp1,&J);
//   fp3_sub(&ANS->x,&buf,&tmp2);

//   //Y3
//   fp3_sub_nonmod_single(&tmp1,&V,&ANS->x);
//   fp3_mul_lazy_montgomery(&tmp2,&tmp1,&r);
//   fp3_mul_lazy_montgomery(&tmp1,&Pt1.y,&J);
//   fp3_sub(&ANS->y,&tmp2,&tmp1);


//   //ANS->z
//   fp3_mul_lazy_montgomery(&ANS->z,&Pt1.z,&H);

// }

void efp3_scm(efp3_t *ANS,efp3_t *P,mpz_t scalar){
  if(mpz_cmp_ui(scalar,0)==0){
    ANS->infinity=1;
    return;
  }else if(mpz_cmp_ui(scalar,1)==0){
    efp3_set(ANS,P);
    return;
  }

  efp3_t Tmp_P,Next_P;
  efp3_init(&Tmp_P);
  efp3_set(&Tmp_P,P);
  efp3_init(&Next_P);
  int i,length;
  length=(int)mpz_sizeinbase(scalar,2);
  char binary[length+1];
  mpz_get_str(binary,2,scalar);

  efp3_set(&Next_P,&Tmp_P);
  for(i=1;i<length;i++){
    efp3_ecd(&Next_P,&Next_P);
    if(binary[i]=='1')  efp3_eca(&Next_P,&Next_P,&Tmp_P);
  }
  efp3_set(ANS,&Next_P);
}

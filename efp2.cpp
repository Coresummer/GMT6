#include "efp2.h"

void efp2_init(efp2_t *P){
  fp2_init(&P->x);
  fp2_init(&P->y);
  P->infinity=0;
}

void efp2_projective_init(efp2_projective_t *P){
  fp2_init(&P->x);
  fp2_init(&P->y);
  fp2_init(&P->z);
  P->infinity=0;
}

void efp2_jacobian_init(efp2_jacobian_t *P){
  fp2_init(&P->x);
  fp2_init(&P->y);
  fp2_init(&P->z);
  P->infinity=0;
}
void efp2_printf(std::string str ,efp2_t *P){
  printf("%s",str.c_str());
  if(P->infinity==0){
    printf("(");
    fp2_printf("",&P->x);
    printf(",");
    fp2_printf("",&P->y);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp2_println(std::string str ,efp2_t *P){
  printf("%s",str.c_str());
  if(P->infinity==0){
    printf("(");
    fp2_printf("",&P->x);
    printf(",");
    fp2_printf("",&P->y);
    printf(")\n");
  }else{
    printf("Infinity\n");
  }
}

void efp2_projective_printf(std::string str ,efp2_projective_t *P){
  printf("%s",str.c_str());
  if(P->infinity==0){
    printf("(");
    fp2_printf("",&P->x);
    printf(",");
    fp2_printf("",&P->y);
    printf(",");
    fp2_printf("",&P->z);
    printf(")");
  }else{
    printf("Infinity");
  }
}

void efp2_jacobian_printf(std::string str ,efp2_jacobian_t *P){
  printf("%s",str.c_str());
  if(P->infinity==0){
    printf("(");
    fp2_printf("",&P->x);
    printf(",");
    fp2_printf("",&P->y);
    printf(",");
    fp2_printf("",&P->z);
    printf(")");
  }else{
    printf("Infinity");
  }
}

// void efp2_printf_montgomery(std::string str ,efp2_t *P){
//   printf("%s",str.c_str());
//   if(P->infinity==0){
//     printf("(");
//     fp2_printf_montgomery("",&P->x);
//     printf(",");
//     fp2_printf_montgomery("",&P->y);
//     printf(")");
//   }else{
//     printf("Infinity");
//   }
// }

// void efp2_jacobian_printf_montgomery(std::string str ,efp2_jacobian_t *P){
//   printf("%s",str.c_str());
//   if(P->infinity==0){
//     printf("(");
//     fp2_printf_montgomery("",&P->x);
//     printf(",");
//     fp2_printf_montgomery("",&P->y);
//     printf(",");
//     fp2_printf_montgomery("",&P->z);
//     printf(")");
//   }else{
//     printf("Infinity");
//   }
// }

// void efp2_projective_printf_montgomery(std::string str ,efp2_projective_t *P){
//   printf("%s",str.c_str());
//   if(P->infinity==0){
//     printf("(");
//     fp2_printf_montgomery("",&P->x);
//     printf(",");
//     fp2_printf_montgomery("",&P->y);
//     printf(",");
//     fp2_printf_montgomery("",&P->z);
//     printf(")");
//   }else{
//     printf("Infinity");
//   }
// }

// void efp2_projective_printf_affine(std::string str ,efp2_projective_t *P){
//   static efp2_t out;
//   efp2_projective_to_affine(&out,P);
//   printf("%s",str.c_str());
//   if(P->infinity==0){
//     printf("(");
//     fp2_printf("",&out.x);
//     printf(",");
//     fp2_printf("",&out.y);
//     printf(")");
//   }else{
//     printf("Infinity");
//   }
// }

// void efp2_projective_printf_affine_montgomery(std::string str ,efp2_projective_t *P){
//   static efp2_t out;
//   efp2_projective_to_affine_montgomery(&out,P);
//   printf("%s",str.c_str());
//   if(P->infinity==0){
//     printf("(");
//     fp2_printf_montgomery("",&out.x);
//     printf(",");
//     fp2_printf_montgomery("",&out.y);
//     printf(")");
//   }else{
//     printf("Infinity");
//   }
// }

void efp2_set(efp2_t *ANS,efp2_t *A){
  fp2_set(&ANS->x,&A->x);
  fp2_set(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp2_projective_set(efp2_projective_t *ANS,efp2_projective_t *A){
  fp2_set(&ANS->x,&A->x);
  fp2_set(&ANS->y,&A->y);
  fp2_set(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp2_jacobian_set(efp2_jacobian_t *ANS,efp2_jacobian_t *A){
  fp2_set(&ANS->x,&A->x);
  fp2_set(&ANS->y,&A->y);
  fp2_set(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp2_affine_to_projective(efp2_projective_t *ANS,efp2_t *A){
  fp2_set(&ANS->x,&A->x);
  fp2_set(&ANS->y,&A->y);
  fp2_set_ui(&ANS->z,1);
  ANS->infinity=A->infinity;
}

void efp2_affine_to_jacobian(efp2_jacobian_t *ANS,efp2_t *A){
  fp2_set(&ANS->x,&A->x);
  fp2_set(&ANS->y,&A->y);
  fp2_set_ui(&ANS->z,1);
  ANS->infinity=A->infinity;
}

void efp2_affine_to_projective_montgomery(efp2_projective_t *ANS,efp2_t *A){
  fp2_set(&ANS->x,&A->x);
  fp2_set(&ANS->y,&A->y);
  fp2_set_mpn(&ANS->z,RmodP);
  ANS->infinity=A->infinity;
}

void efp2_affine_to_jacobian_montgomery(efp2_jacobian_t *ANS,efp2_t *A){
  fp2_set(&ANS->x,&A->x);
  fp2_set(&ANS->y,&A->y);
  fp2_set_mpn(&ANS->z,RmodP);
  ANS->infinity=A->infinity;
}

void efp2_jacobian_to_affine(efp2_t *ANS,efp2_jacobian_t *A){
  static fp2_t Zi,Zt;
  //TODO:mul->mul_lazy
  fp2_inv(&Zi,&A->z);
  fp2_mul(&Zt,&Zi,&Zi);
  fp2_mul(&ANS->x,&A->x,&Zt);
  fp2_mul(&Zt,&Zt,&Zi);
  fp2_mul(&ANS->y,&A->y,&Zt);
  ANS->infinity=A->infinity;
}

void efp2_projective_to_affine(efp2_t *ANS,efp2_projective_t *A){
  static fp2_t Zi;
  //TODO:mul->mul_lazy
  fp2_inv(&Zi,&A->z);
  fp2_mul(&ANS->x,&A->x,&Zi);
  fp2_mul(&ANS->y,&A->y,&Zi);
  ANS->infinity=A->infinity;
}

// void efp2_jacobian_to_affine_montgomery(efp2_t *ANS,efp2_jacobian_t *A){
//   static fp2_t Zi,Zt;
//   fp2_inv_lazy_montgomery(&Zi,&A->z);
//   fp2_mul_lazy_montgomery(&Zt,&Zi,&Zi);
//   fp2_mul_lazy_montgomery(&ANS->x,&A->x,&Zt);
//   fp2_mul_lazy_montgomery(&Zt,&Zt,&Zi);
//   fp2_mul_lazy_montgomery(&ANS->y,&A->y,&Zt);
//   ANS->infinity=A->infinity;
// }

// void efp2_projective_to_affine_montgomery(efp2_t *ANS,efp2_projective_t *A){
//   static fp2_t Zi;
//   //TODO:mul->mul_lazy
//   fp2_inv_lazy_montgomery(&Zi,&A->z);
//   fp2_mul_lazy_montgomery(&ANS->x,&A->x,&Zi);
//   fp2_mul_lazy_montgomery(&ANS->y,&A->y,&Zi);
//   ANS->infinity=A->infinity;
// }

void efp2_mix(efp2_jacobian_t *ANS,efp2_jacobian_t *A,fp2_t *Zi){
  static fp2_t Zt;
  //TODO:mul->mul_lazy
  fp2_mul(&Zt,Zi,Zi);
  fp2_mul(&ANS->x,&A->x,&Zt);
  fp2_mul(&Zt,&Zt,Zi);
  fp2_mul(&ANS->y,&A->y,&Zt);
  fp2_set_ui(&ANS->z,1);
  ANS->infinity=A->infinity;
}

// void efp2_mix_montgomery(efp2_jacobian_t *ANS,efp2_jacobian_t *A,fp2_t *Zi){
//   static fp2_t Zt;
//   fp2_mul_lazy_montgomery(&Zt,Zi,Zi);
//   fp2_mul_lazy_montgomery(&ANS->x,&A->x,&Zt);
//   fp2_mul_lazy_montgomery(&Zt,&Zt,Zi);
//   fp2_mul_lazy_montgomery(&ANS->y,&A->y,&Zt);
//   fp2_set_mpn(&ANS->z,RmodP);
//   ANS->infinity=A->infinity;
// }

void efp2_set_ui(efp2_t *ANS,unsigned long int UI){
  fp2_set_ui(&ANS->x,UI);
  fp2_set_ui(&ANS->y,UI);
  ANS->infinity=0;
}

void efp2_to_montgomery(efp2_t *ANS,efp2_t *A){
  fp2_to_montgomery(&ANS->x,&A->x);
  fp2_to_montgomery(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp2_projective_to_montgomery(efp2_projective_t *ANS,efp2_projective_t *A){
  fp2_to_montgomery(&ANS->x,&A->x);
  fp2_to_montgomery(&ANS->y,&A->y);
  fp2_to_montgomery(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp2_mod_montgomery(efp2_t *ANS,efp2_t *A){
  fp2_mod_montgomery(&ANS->x,&A->x);
  fp2_mod_montgomery(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp2_projective_mod_montgomery(efp2_projective_t *ANS,efp2_projective_t *A){
  fp2_mod_montgomery(&ANS->x,&A->x);
  fp2_mod_montgomery(&ANS->y,&A->y);
  fp2_mod_montgomery(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

void efp2_set_mpn(efp2_t *ANS,mp_limb_t *A){
  fp2_set_mpn(&ANS->x,A);
  fp2_set_mpn(&ANS->y,A);
  ANS->infinity=0;
}

void efp2_set_neg(efp2_t *ANS,efp2_t *A){
  fp2_set(&ANS->x,&A->x);
  fp2_set_neg(&ANS->y,&A->y);
  ANS->infinity=A->infinity;
}

void efp2_jacobian_set_neg(efp2_jacobian_t *ANS,efp2_jacobian_t *A){
  fp2_set(&ANS->x,&A->x);
  fp2_set_neg(&ANS->y,&A->y);
  fp2_set(&ANS->z,&A->z);
  ANS->infinity=A->infinity;
}

int efp2_cmp(efp2_t *A,efp2_t *B){
  if(A->infinity==1 && B->infinity==1)  return 0;
  else if(A->infinity != B->infinity) return 1;
  else if(fp2_cmp(&A->x,&B->x)==0 && fp2_cmp(&A->y,&B->y)==0) return 0;
  else  return 1;
}

void efp2_rational_point(efp2_t *P){
  fp2_t tmp_ax,tmp_y2;
  fp2_init(&tmp_ax);
  fp2_init(&tmp_y2);

  P->infinity=0;
  while(1){
    fp2_set_random(&P->x,state);
    //y^2 = x^3 + b
    fp2_sqr(&tmp_y2,&P->x);
    fp2_mul(&tmp_y2,&tmp_y2,&P->x);
    fp_add(&tmp_y2.x0,&tmp_y2.x0,&curve_b);
    if(fp2_legendre(&tmp_y2)==1){
      fp2_sqrt(&P->y,&tmp_y2);
      break;
    }
  }
}

void efp2_ecd(efp2_t *ANS,efp2_t *P){
  static efp2_t tmp1_efp2;
  static fp2_t tmp1_fp2,tmp2_fp2,tmp3_fp2;
  if(P->infinity==1){
    ANS->infinity=1;
    return;
  }
  if(fp2_cmp_zero(&P->y)==0){
    ANS->infinity=1;
    return;
  }
  ANS->infinity=0;
  efp2_set(&tmp1_efp2,P);

  //tmp1_fp = 1/2yp
  fp2_add(&tmp1_fp2,&tmp1_efp2.y,&tmp1_efp2.y);
  fp2_inv(&tmp1_fp2,&tmp1_fp2);
  //tmp2_fp = 3x^2 +a
  fp2_sqr(&tmp2_fp2,&tmp1_efp2.x);
  fp2_add(&tmp3_fp2,&tmp2_fp2,&tmp2_fp2);
  fp2_add(&tmp2_fp2,&tmp2_fp2,&tmp3_fp2);
  // fp_add(&tmp2_fp2.x0,&tmp2_fp2.x0,&curve_a);
  //tmp3_fp = lambda
  fp2_mul(&tmp3_fp2,&tmp1_fp2,&tmp2_fp2);

  //ANS.x
  fp2_sqr(&tmp1_fp2,&tmp3_fp2);
  fp2_add(&tmp2_fp2,&tmp1_efp2.x,&tmp1_efp2.x);
  fp2_sub(&ANS->x,&tmp1_fp2,&tmp2_fp2);
  //ANS.y
  fp2_sub(&tmp1_fp2,&tmp1_efp2.x,&ANS->x);
  fp2_mul(&tmp2_fp2,&tmp3_fp2,&tmp1_fp2);
  fp2_sub(&ANS->y,&tmp2_fp2,&tmp1_efp2.y);
}

// void efp2_ecd_jacobian_lazy_montgomery(efp2_jacobian_t *ANS,efp2_jacobian_t *P){
//   static fp2_t s,m,T;

//   static fp2_t buf,tmp1;
//   static fp2_t tmpY2;
//   static efp2_jacobian_t Pt;
//   if(fp2_cmp_zero(&P->y)==0){
//     ANS->infinity=1;
//     return;
//   }

//   efp2_jacobian_set(&Pt,P);

//   //s
//   fp2_mul_lazy_montgomery(&tmpY2,&Pt.y,&Pt.y);
//   fp2_mul_lazy_montgomery(&tmp1,&tmpY2,&Pt.x);
//   fp2_add(&tmp1,&tmp1,&tmp1);
//   fp2_add(&s,&tmp1,&tmp1);

//   //m
//   fp2_add_nonmod_single(&tmp1,&Pt.x,&Pt.x);
//   fp2_add_nonmod_single(&tmp1,&tmp1,&Pt.x);
//   fp2_mul_lazy_montgomery(&m,&tmp1,&Pt.x);

//   //T
//   fp2_mul_lazy_montgomery(&T,&m,&m);
//   fp2_add(&tmp1,&s,&s);
//   fp2_sub(&T,&T,&tmp1);

//   //ANS->x
//   fp2_set(&ANS->x,&T);

//   //ANS->y
//   fp2_sub_nonmod_single(&tmp1,&s,&T);
//   fp2_mul_lazy_montgomery(&buf,&tmp1,&m);

//   fp2_mul_lazy_montgomery(&tmp1,&tmpY2,&tmpY2);
//   fp2_add(&tmp1,&tmp1,&tmp1);
//   fp2_add(&tmp1,&tmp1,&tmp1);
//   fp2_add(&tmp1,&tmp1,&tmp1);
//   fp2_sub(&ANS->y,&buf,&tmp1);

//   //ANS->z
//   fp2_add_nonmod_single(&tmp1,&Pt.y,&Pt.y);
//   fp2_mul_lazy_montgomery(&ANS->z,&tmp1,&Pt.z);
// }

void efp2_eca(efp2_t *ANS,efp2_t *P1,efp2_t *P2){
  static efp2_t tmp1_efp2,tmp2_efp2;
  static fp2_t tmp1_fp2,tmp2_fp2,tmp3_fp2;
  if(P1->infinity==1){
    efp2_set(ANS,P2);
    return;
  }
  else if(P2->infinity==1){
    efp2_set(ANS,P1);
    return;
  }
  else if(fp2_cmp(&P1->x,&P2->x)==0){
    if(fp2_cmp(&P1->y,&P2->y)!=0){
      ANS->infinity=1;
      return;
    }else{
      efp2_ecd(ANS,P1);
      return;
    }
  }
  ANS->infinity=0;
  efp2_set(&tmp1_efp2,P1);
  efp2_set(&tmp2_efp2,P2);

  //tmp3_fp = lambda
  fp2_sub(&tmp1_fp2,&tmp2_efp2.x,&tmp1_efp2.x);
  fp2_inv(&tmp1_fp2,&tmp1_fp2);
  fp2_sub(&tmp2_fp2,&tmp2_efp2.y,&tmp1_efp2.y);
  fp2_mul(&tmp3_fp2,&tmp1_fp2,&tmp2_fp2);

  //ANS.x
  fp2_sqr(&tmp1_fp2,&tmp3_fp2);
  fp2_sub(&tmp2_fp2,&tmp1_fp2,&tmp1_efp2.x);
  fp2_sub(&ANS->x,&tmp2_fp2,&tmp2_efp2.x);
  //ANS.y
  fp2_sub(&tmp1_fp2,&tmp1_efp2.x,&ANS->x);
  fp2_mul(&tmp2_fp2,&tmp3_fp2,&tmp1_fp2);
  fp2_sub(&ANS->y,&tmp2_fp2,&tmp1_efp2.y);
}

// void efp2_eca_jacobian_lazy_montgomery(efp2_jacobian_t *ANS,efp2_jacobian_t *P1,efp2_jacobian_t *P2){
//   static efp2_jacobian_t Pt1,Pt2;
//   static fp2_t U1,U2,S1,S2,H,r;

//   static fp2_t buf,tmp1,tmp2;
//   static fp2_t tmpZ1,tmpZ2,tmpH2,tmpH3,tmpU1H2;

//   if(P1->infinity==1){
//     efp2_jacobian_set(ANS,P2);
//     return;
//   }else if(P2->infinity==1){
//     efp2_jacobian_set(ANS,P1);
//     return;
//   }else if(fp2_cmp(&P1->x,&P2->x)==0){
//     if(fp2_cmp(&P1->y,&P2->y)!=0){
//       ANS->infinity=1;
//       return;
//     }else{
//       efp2_ecd_jacobian_lazy_montgomery(ANS,P1);
//       return;
//     }
//   }

//   efp2_jacobian_set(&Pt1,P1);
//   efp2_jacobian_set(&Pt2,P2);

//   //U1
//   fp2_mul_lazy_montgomery(&tmpZ2,&Pt2.z,&Pt2.z);
//   fp2_mul_lazy_montgomery(&U1,&tmpZ2,&Pt1.x);
//   //fp2_printf("U1=",&U1);printf("\n");

//   //U2
//   fp2_mul_lazy_montgomery(&tmpZ1,&Pt1.z,&Pt1.z);
//   fp2_mul_lazy_montgomery(&U2,&tmpZ1,&Pt2.x);
//   //fp2_printf("U2=",&U2);printf("\n");

//   //S1
//   fp2_mul_lazy_montgomery(&tmp1,&tmpZ2,&Pt2.z);
//   fp2_mul_lazy_montgomery(&S1,&tmp1,&Pt1.y);
//   //fp2_printf("S1=",&S1);printf("\n");

//   //S2
//   fp2_mul_lazy_montgomery(&tmp1,&tmpZ1,&Pt1.z);
//   fp2_mul_lazy_montgomery(&S2,&tmp1,&Pt2.y);
//   //fp2_printf("S2=",&S2);printf("\n");

//   //H
//   //fp2_printf("U1=",&U1);printf("\n");
//   fp2_sub(&H,&U2,&U1);
//   //fp2_printf("H=",&H);printf("\n");

//   //r
//   fp2_sub(&r,&S2,&S1);
//   //fp2_printf("r=",&r);printf("\n");

//   //ANS->x
//   fp2_mul_lazy_montgomery(&tmp1,&r,&r);

//   fp2_mul_lazy_montgomery(&tmpH2,&H,&H);
//   fp2_mul_lazy_montgomery(&tmpH3,&tmpH2,&H);
//   fp2_sub(&tmp2,&tmp1,&tmpH3);

//   fp2_mul_lazy_montgomery(&tmpU1H2,&tmpH2,&U1);
//   fp2_add(&tmp1,&tmpU1H2,&tmpU1H2);
//   fp2_sub(&ANS->x,&tmp2,&tmp1);

//   //ANS->y
//   fp2_sub_nonmod_single(&tmp1,&tmpU1H2,&ANS->x);
//   fp2_mul_lazy_montgomery(&tmp1,&tmp1,&r);

//   fp2_mul_lazy_montgomery(&tmp2,&tmpH3,&S1);
//   fp2_sub(&ANS->y,&tmp1,&tmp2);

//   //ANS->z
//   fp2_mul_lazy_montgomery(&tmp1,&Pt1.z,&Pt2.z);
//   fp2_mul_lazy_montgomery(&ANS->z,&tmp1,&H);
//   // //getchar();
// }
// void efp2_eca_mixture_lazy_montgomery(efp2_jacobian_t *ANS,efp2_jacobian_t *P1,efp2_jacobian_t *P2){
//   static efp2_jacobian_t Pt1,Pt2;
//   static fp2_t Z1Z1,HH,I,J,V;
//   static fp2_t U1,U2,S1,S2,H,r;
//   static fp2_t buf,tmp1,tmp2;

//   if(P1->infinity==1){
//     efp2_jacobian_set(ANS,P2);
//     return;
//   }else if(P2->infinity==1){
//     efp2_jacobian_set(ANS,P1);
//     return;
//   }else if(fp2_cmp(&P1->x,&P2->x)==0){
//     if(fp2_cmp(&P1->y,&P2->y)!=0){
//       ANS->infinity=1;
//       return;
//     }else{
//       efp2_ecd_jacobian_lazy_montgomery(ANS,P1);
//       return;
//     }
//   }

//   efp2_jacobian_set(&Pt1,P1);
//   efp2_jacobian_set(&Pt2,P2);

//   //Z1Z1
//   fp2_mul_lazy_montgomery(&Z1Z1,&Pt1.z,&Pt1.z);

//   //U2
//   fp2_mul_lazy_montgomery(&U2,&Pt2.x,&Z1Z1);

//   //S2
//   fp2_mul_lazy_montgomery(&tmp1,&Z1Z1,&Pt1.z);
//   fp2_mul_lazy_montgomery(&S2,&tmp1,&Pt2.y);

//   //H
//   fp2_sub(&H,&U2,&Pt1.x);

//   //HH
//   fp2_mul_lazy_montgomery(&HH,&H,&H);

//   //I
//   fp2_add(&I,&HH,&HH);
//   fp2_add(&I,&I,&I);

//   //J
//   fp2_mul_lazy_montgomery(&J,&HH,&H);

//   //r
//   fp2_sub(&r,&S2,&Pt1.y);

//   //V
//   fp2_mul_lazy_montgomery(&V,&Pt1.x,&HH);

//   //X3
//   fp2_mul_lazy_montgomery(&tmp1,&r,&r);
//   fp2_add(&tmp2,&V,&V);
//   fp2_sub(&buf,&tmp1,&J);
//   fp2_sub(&ANS->x,&buf,&tmp2);

//   //Y3
//   fp2_sub_nonmod_single(&tmp1,&V,&ANS->x);
//   fp2_mul_lazy_montgomery(&tmp2,&tmp1,&r);
//   fp2_mul_lazy_montgomery(&tmp1,&Pt1.y,&J);
//   fp2_sub(&ANS->y,&tmp2,&tmp1);


//   //ANS->z
//   fp2_mul_lazy_montgomery(&ANS->z,&Pt1.z,&H);

// }

void efp2_scm(efp2_t *ANS,efp2_t *P,mpz_t scalar){
  if(mpz_cmp_ui(scalar,0)==0){
    ANS->infinity=1;
    return;
  }else if(mpz_cmp_ui(scalar,1)==0){
    efp2_set(ANS,P);
    return;
  }

  efp2_t Tmp_P,Next_P;
  efp2_init(&Tmp_P);
  efp2_set(&Tmp_P,P);
  efp2_init(&Next_P);
  int i,length;
  length=(int)mpz_sizeinbase(scalar,2);
  char binary[length+1];
  mpz_get_str(binary,2,scalar);

  efp2_set(&Next_P,&Tmp_P);
  for(i=1;i<length;i++){
    efp2_ecd(&Next_P,&Next_P);
    if(binary[i]=='1')  efp2_eca(&Next_P,&Next_P,&Tmp_P);
  }
  efp2_set(ANS,&Next_P);
}

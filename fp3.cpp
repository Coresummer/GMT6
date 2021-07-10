#include "fp3.h"

void fp3_init(fp3_t *A){
  fp_init(&A->x0);
  fp_init(&A->x1);
  fp_init(&A->x2);

}

void fp3_printf(std::string str,fp3_t *A){
  gmp_printf("%s(",str.c_str());
  fp_printf("",&A->x0);
  gmp_printf(",");
  fp_printf("",&A->x1);
  gmp_printf(",");
  fp_printf("",&A->x2);
  gmp_printf(")\n");
}

void fp3_println(std::string str,fp3_t *A){
  gmp_printf("%s(",str.c_str());
  fp_printf("",&A->x0);
  gmp_printf(",");
  fp_printf("",&A->x1);
  gmp_printf(",");
  fp_printf("",&A->x2);
  gmp_printf(")\n");
}

void fpd3_println(std::string str,fpd3_t *A){
  gmp_printf("%s(",str.c_str());
  fpd_printf("",&A->x0);
  gmp_printf(",");
  fpd_printf("",&A->x1);
  gmp_printf(",");
  fpd_printf("",&A->x2);
  gmp_printf(")\n");

}

void fp3_printf_montgomery(std::string str,fp3_t *A){
  gmp_printf("%s(",str.c_str());
  fp_printf_montgomery("",&A->x0);
  gmp_printf(",");
  fp_printf_montgomery("",&A->x1);
  gmp_printf(",");
  fp_printf_montgomery("",&A->x2);
  gmp_printf(")");
}

void fp3_set(fp3_t *ANS,fp3_t *A){
  fp_set(&ANS->x0,&A->x0);
  fp_set(&ANS->x1,&A->x1);
  fp_set(&ANS->x2,&A->x2);
}

void fp3_set_ui(fp3_t *ANS,unsigned long int UI){
  fp_set_ui(&ANS->x0,UI);
  fp_set_ui(&ANS->x1,0);
  fp_set_ui(&ANS->x2,0);

}

void fp3_set_ui_ui(fp3_t *ANS,unsigned long int UI){
  fp_set_ui(&ANS->x0,UI);
  fp_set_ui(&ANS->x1,UI);
  fp_set_ui(&ANS->x2,UI);
}

void fp3_set_mpn(fp3_t *ANS,mp_limb_t *A){
  fp_set_mpn(&ANS->x0,A);
  fp_set_ui(&ANS->x1,0);
  fp_set_ui(&ANS->x2,0);

}

void fp3_set_neg(fp3_t *ANS,fp3_t *A){
  fp_set_neg(&ANS->x0,&A->x0);
  fp_set_neg(&ANS->x1,&A->x1);
  fp_set_neg(&ANS->x2,&A->x2);

}

void fp3_to_montgomery(fp3_t *ANS,fp3_t *A){
  fp_to_montgomery(&ANS->x0,&A->x0);
  fp_to_montgomery(&ANS->x1,&A->x1);
  fp_to_montgomery(&ANS->x2,&A->x2);

}

void fp3_mod_montgomery(fp3_t *ANS,fp3_t *A){
  fp_mod_montgomery(&ANS->x0,&A->x0);
  fp_mod_montgomery(&ANS->x1,&A->x1);
  fp_mod_montgomery(&ANS->x2,&A->x2);

}

// void fp3_mod_montgomery_double(fp3_t *ANS,fpd3_t *A){
//   mpn_mod_montgomery(ANS->x0.x0,FPLIMB,A->x0.x0,FPLIMB2);
//   mpn_mod_montgomery(ANS->x1.x0,FPLIMB,A->x1.x0,FPLIMB2);
//   mpn_mod_montgomery(ANS->x2.x0,FPLIMB,A->x2.x0,FPLIMB2);

// }

void fp3_lshift_1(fp3_t *ANS,fp3_t *A){
  fp_lshift_1(&ANS->x0,&A->x0);
  fp_lshift_1(&ANS->x1,&A->x1);
  fp_lshift_1(&ANS->x2,&A->x2);

}

void fp3_hlv(fp3_t *ANS,fp3_t *A){
  fp_hlv(&ANS->x0, &A->x0);
  fp_hlv(&ANS->x1, &A->x1);
  fp_hlv(&ANS->x2, &A->x2);

}

void fp3_set_random(fp3_t *ANS,gmp_randstate_t state){
  fp_set_random(&ANS->x0,state);
  fp_set_random(&ANS->x1,state);
  fp_set_random(&ANS->x2,state);

}

void fp3_mul(fp3_t *ANS,fp3_t *A,fp3_t *B){ 
  static fp3_t tmp_A,tmp_B;
  static fp_t tmp1,tmp2,tmp3,tmp4,tmp5,tmp6;

  fp3_set(&tmp_A,A);
  fp3_set(&tmp_B,B);

  //1:ad + θ^3((a+c+b)(d+e+f)-(a+c)(d+f)-(a+b)(d+e)+ad)
  //θ:(a+b)(b+e)-ad-be+cfθ^3
  //θ^2: be+(a+c)(d+f)-ad-cf

  //(a+b)(d+e) = tmp4
  fp_add(&tmp1,&tmp_A.x0,&tmp_A.x1);
  fp_add(&tmp2,&tmp_B.x0,&tmp_B.x1);
  fp_mul(&tmp4,&tmp1,&tmp2);

  //(a+b+c)(d+e+f) = tmp5
  fp_add(&tmp1,&tmp1,&tmp_A.x2);
  fp_add(&tmp2,&tmp2,&tmp_B.x2);
  fp_mul(&tmp5,&tmp1,&tmp2);

  //(a+c)(d+f) = tmp6
  fp_sub(&tmp1,&tmp1,&tmp_A.x1);
  fp_sub(&tmp2,&tmp2,&tmp_B.x1);
  fp_mul(&tmp6,&tmp1,&tmp2);

  //ad = tmp1
  fp_mul(&tmp1,&tmp_A.x0,&tmp_B.x0);
  //be = tmp2
  fp_mul(&tmp2,&tmp_A.x1,&tmp_B.x1);
  //cf = tmp3
  fp_mul(&tmp3,&tmp_A.x2,&tmp_B.x2);

  //x0 = ad + θ^3((a+c+b)(d+e+f)-(a+c)(d+f)-(a+b)(d+e)+ad)
  // = tmp1 + mul_base(tmp5-tmp6-tmp2-tmp4+)
  fp_sub(&ANS->x0,&tmp5,&tmp4);
  fp_sub(&ANS->x0,&ANS->x0,&tmp6);
  fp_add(&ANS->x0,&ANS->x0,&tmp1);
  fp_mul_base(&ANS->x0,&ANS->x0);
  fp_add(&ANS->x0,&ANS->x0,&tmp1);

  //x1 = (a+b)(d+e)-ad-be+cfθ^3
  fp_sub(&ANS->x1,&tmp4,&tmp1);
  fp_sub(&ANS->x1,&ANS->x1,&tmp2);
  fp_mul_base(&ANS->x2,&tmp3);
  fp_add(&ANS->x1,&ANS->x1,&ANS->x2);

  //x2 = be+(a+c)(d+f)-ad-cf
  fp_add(&ANS->x2,&tmp2,&tmp6);
  fp_sub(&ANS->x2,&ANS->x2,&tmp1);
  fp_sub(&ANS->x2,&ANS->x2,&tmp3);
} 

void fp3_mul_sparse_add_1(fp3_t *ANS,fp3_t *A,fp3_t *B){  //??0 * ???
  static fp3_t tmp_A,tmp_B;
  static fp_t tmp1,tmp2,tmp3,tmp4,tmp5,tmp6;

  fp3_set(&tmp_A,A);
  fp3_set(&tmp_B,B);

  //1:ad + θ^3((a+b)(d+e+f)-(a)(d+f)-(a+b)(d+e)+ad)
  //θ:(a+b)(b+e)-ad-be
  //θ^2: be+(a)(d+f)-ad

  //(a+b)(d+e) = tmp4
  fp_add(&tmp1,&tmp_A.x0,&tmp_A.x1);
  fp_add(&tmp2,&tmp_B.x0,&tmp_B.x1);
  fp_mul(&tmp4,&tmp1,&tmp2);

  //(a+b)(d+e+f) = tmp5
  // fp_add(&tmp1,&tmp1,&tmp_A.x2);
  fp_add(&tmp2,&tmp2,&tmp_B.x2);
  fp_mul(&tmp5,&tmp1,&tmp2);

  //(a)(d+f) = tmp6
  // fp_sub(&tmp1,&tmp1,&tmp_A.x1);
  fp_sub(&tmp2,&tmp2,&tmp_B.x1);
  fp_mul(&tmp6,&tmp_A.x0,&tmp2);

  //ad = tmp1
  fp_mul(&tmp1,&tmp_A.x0,&tmp_B.x0);
  //be = tmp2
  fp_mul(&tmp2,&tmp_A.x1,&tmp_B.x1);
  //cf = tmp3
  // fp_mul(&tmp3,&tmp_A.x2,&tmp_B.x2);

  //x0 = ad + θ^3((a+b)(d+e+f)-(a)(d+f)-(a+b)(d+e)+ad)
  // = tmp1 + mul_base(tmp5-tmp6-tmp2-tmp4+)
  fp_sub(&ANS->x0,&tmp5,&tmp4);
  fp_sub(&ANS->x0,&ANS->x0,&tmp6);
  fp_add(&ANS->x0,&ANS->x0,&tmp1);
  fp_mul_base(&ANS->x0,&ANS->x0);
  fp_add(&ANS->x0,&ANS->x0,&tmp1);

  //x1 = (a+b)(b+e)-ad-be
  fp_sub(&ANS->x1,&tmp4,&tmp1);
  fp_sub(&ANS->x1,&ANS->x1,&tmp2);
  // fp_mul_base(&ANS->x2,&tmp3);
  // fp_add(&ANS->x1,&ANS->x1,&ANS->x2);

  //x2 = be+(a)(d+f)-ad
  fp_add(&ANS->x2,&tmp2,&tmp6);
  fp_sub(&ANS->x2,&ANS->x2,&tmp1);
  // fp_sub(&ANS->x2,&ANS->x2,&tmp3);
} 


void fp3_mul_sparse_add_2(fp3_t *ANS,fp3_t *A,fp3_t *B){  //00? * ???
  static fp3_t tmp_A,tmp_B;
  static fp_t tmp1,tmp2,tmp3,tmp4,tmp5,tmp6;

  fp3_set(&tmp_A,A);
  fp3_set(&tmp_B,B);

  //1:ad + θ^3((a+c+b)(d+e+f)-(a+c)(d+f)-(a+b)(d+e)+ad)
  //θ:(a+b)(b+e)-ad-be+cfθ^3
  //θ^2: be+(a+c)(d+f)-ad-cf

  //(0)(d+e) = tmp4
  // fp_add(&tmp1,&tmp_A.x0,&tmp_A.x1);
  fp_add(&tmp2,&tmp_B.x0,&tmp_B.x1);
  // fp_mul(&tmp4,&tmp1,&tmp2);

  //(c)(d+e+f) = tmp5
  // fp_add(&tmp1,&tmp1,&tmp_A.x2);
  fp_add(&tmp2,&tmp2,&tmp_B.x2);
  fp_mul(&tmp5,&tmp_A.x2,&tmp2);

  //(c)(d+f) = tmp6
  // fp_sub(&tmp1,&tmp1,&tmp_A.x1);
  fp_sub(&tmp2,&tmp2,&tmp_B.x1);
  fp_mul(&tmp6,&tmp_A.x2,&tmp2);

  //ad = tmp1
  // fp_mul(&tmp1,&tmp_A.x0,&tmp_B.x0);
  //be = tmp2
  // fp_mul(&tmp2,&tmp_A.x1,&tmp_B.x1);
  //cf = tmp3
  fp_mul(&tmp3,&tmp_A.x2,&tmp_B.x2);

  //x0 = ad + θ^3((c)(d+e+f)-(c)(d+f))
  // = tmp1 + mul_base(tmp5-tmp6-tmp2-tmp4+)
  // fp_sub(&ANS->x0,&tmp5,&tmp4);
  fp_sub(&ANS->x0,&tmp5,&tmp6);
  fp_mul_base(&ANS->x0,&ANS->x0);
  // fp_add(&ANS->x0,&ANS->x0,&tmp1);

  //x1 = cfθ^3
  fp_mul_base(&ANS->x1,&tmp3);
  // fp_add(&ANS->x1,&ANS->x1,&ANS->x2);

  //x2 = (c)(d+f)-cf
  fp_sub(&ANS->x2,&tmp6,&tmp3);
} 


void fp3_mul_sparse_dbl_1(fp3_t *ANS,fp3_t *A,fp3_t *B){  //?0? * ???
  static fp3_t tmp_A,tmp_B;
  static fp_t tmp1,tmp2,tmp3,tmp4,tmp5,tmp6;

  fp3_set(&tmp_A,A);
  fp3_set(&tmp_B,B);

  //1:ad + θ^3((a+c+b)(d+e+f)-(a+c)(d+f)-(a+b)(d+e)+ad)
  //θ:(a+b)(b+e)-ad-be+cfθ^3
  //θ^2: be+(a+c)(d+f)-ad-cf

  //(a)(d+e) = tmp4
  // fp_add(&tmp1,&tmp_A.x0,&tmp_A.x1);
  fp_add(&tmp2,&tmp_B.x0,&tmp_B.x1);
  fp_mul(&tmp4,&tmp_A.x0,&tmp2);

  //(a+c)(d+e+f) = tmp5
  fp_add(&tmp1,&tmp_A.x0,&tmp_A.x2);
  fp_add(&tmp2,&tmp2,&tmp_B.x2);
  fp_mul(&tmp5,&tmp1,&tmp2);

  //(a+c)(d+f) = tmp6
  fp_sub(&tmp1,&tmp1,&tmp_A.x1);
  fp_sub(&tmp2,&tmp2,&tmp_B.x1);
  fp_mul(&tmp6,&tmp1,&tmp2);

  //ad = tmp1
  fp_mul(&tmp1,&tmp_A.x0,&tmp_B.x0);
  //be = tmp2
  // fp_mul(&tmp2,&tmp_A.x1,&tmp_B.x1);
  //cf = tmp3
  fp_mul(&tmp3,&tmp_A.x2,&tmp_B.x2);

  //x0 = ad + θ^3((a+c)(d+e+f)-(a+c)(d+f)-(a)(d+e)+ad)
  // = tmp1 + mul_base(tmp5-tmp6-tmp2-tmp4+)
  fp_sub(&ANS->x0,&tmp5,&tmp4);
  fp_sub(&ANS->x0,&ANS->x0,&tmp6);
  fp_add(&ANS->x0,&ANS->x0,&tmp1);
  fp_mul_base(&ANS->x0,&ANS->x0);
  fp_add(&ANS->x0,&ANS->x0,&tmp1);

  //x1 = (a)(d+e)-ad+cfθ^3
  fp_sub(&ANS->x1,&tmp4,&tmp1);
  // fp_sub(&ANS->x1,&ANS->x1,&tmp2);
  fp_mul_base(&ANS->x2,&tmp3);
  fp_add(&ANS->x1,&ANS->x1,&ANS->x2);

  //x2 = (a+c)(d+f)-ad-cf
  // fp_add(&ANS->x2,&tmp2,&tmp6);
  fp_sub(&ANS->x2,&tmp6,&tmp1);
  fp_sub(&ANS->x2,&ANS->x2,&tmp3);
} 


void fp3_mul_sparse_dbl_2(fp3_t *ANS,fp3_t *A,fp3_t *B){ //0?0 * ???
  static fp3_t tmp_A,tmp_B;
  static fp_t tmp1,tmp2,tmp3,tmp4,tmp5,tmp6;

  fp3_set(&tmp_A,A);
  fp3_set(&tmp_B,B);

  //1:ad + θ^3((a+c+b)(d+e+f)-(a+c)(d+f)-(a+b)(d+e)+ad)
  //θ:(a+b)(b+e)-ad-be+cfθ^3
  //θ^2: be+(a+c)(d+f)-ad-cf

  //(b)(d+e) = tmp4
  // fp_add(&tmp1,&tmp_A.x0,&tmp_A.x1);
  fp_add(&tmp2,&tmp_B.x0,&tmp_B.x1);
  fp_mul(&tmp4,&tmp_A.x1,&tmp2);

  //(b)(d+e+f) = tmp5
  // fp_add(&tmp1,&tmp1,&tmp_A.x2);
  fp_add(&tmp2,&tmp2,&tmp_B.x2);
  fp_mul(&tmp5,&tmp_A.x1,&tmp2);

  //(a+c)(d+f) = tmp6
  // fp_sub(&tmp1,&tmp1,&tmp_A.x1);
  // fp_sub(&tmp2,&tmp2,&tmp_B.x1);
  // fp_mul(&tmp6,&tmp1,&tmp2);

  //ad = tmp1
  // fp_mul(&tmp1,&tmp_A.x0,&tmp_B.x0);
  //be = tmp2
  fp_mul(&ANS->x2,&tmp_A.x1,&tmp_B.x1);
  //cf = tmp3
  // fp_mul(&tmp3,&tmp_A.x2,&tmp_B.x2);

  //x0 = θ^3((b)(d+e+f)-(b)(d+e))
  // = tmp1 + mul_base(tmp5-tmp6-tmp2-tmp4+)
  fp_sub(&ANS->x0,&tmp5,&tmp4);
  // fp_sub(&ANS->x0,&ANS->x0,&tmp6);
  // fp_add(&ANS->x0,&ANS->x0,&tmp1);
  fp_mul_base(&ANS->x0,&ANS->x0);
  // fp_add(&ANS->x0,&ANS->x0,&tmp1);

  //x1 = (b)(d+e)-be
  fp_sub(&ANS->x1,&tmp4,&ANS->x2);
  // fp_sub(&ANS->x1,&ANS->x1,&tmp2);
  // fp_mul_base(&ANS->x2,&tmp3);
  // fp_add(&ANS->x1,&ANS->x1,&ANS->x2);

  //x2 = be
  // fp_add(&ANS->x2,&tmp2,&tmp6);
  // fp_sub(&ANS->x2,&ANS->x2,&tmp1);
  // fp_sub(&ANS->x2,&ANS->x2,&tmp3);
} 

void fp3_mul_ui(fp3_t *ANS,fp3_t *A,unsigned long int UI){
  fp_mul_ui(&ANS->x0,&A->x0,UI);
  fp_mul_ui(&ANS->x1,&A->x1,UI);
  fp_mul_ui(&ANS->x2,&A->x2,UI);

}

void fp3_mul_mpn(fp3_t *ANS,fp3_t *A,mp_limb_t *B){
  fp_mul_mpn(&ANS->x0,&A->x0,B);
  fp_mul_mpn(&ANS->x1,&A->x1,B);
  fp_mul_mpn(&ANS->x2,&A->x2,B);

}

// void fp3_mul_mpn_montgomery(fp3_t *ANS,fp3_t *A,mp_limb_t *B){
//   mpn_mulmod_montgomery(ANS->x0.x0,FPLIMB,A->x0.x0,FPLIMB,B,FPLIMB);
//   mpn_mulmod_montgomery(ANS->x1.x0,FPLIMB,A->x1.x0,FPLIMB,B,FPLIMB);
//   mpn_mulmod_montgomery(ANS->x2.x0,FPLIMB,A->x2.x0,FPLIMB,B,FPLIMB);

// }

void fp3_sqr(fp3_t *ANS,fp3_t *A){
  //3次のkaratusba
  static fp3_t tmp_A,tmp_B;
  static fp_t tmp1,tmp2,tmp3,tmp4,tmp5,tmp6;

  fp3_set(&tmp_A,A);

  //1:ad + θ^3((a+c+b)(d+e+f)-(a+c)(d+f)-(a+b)(d+e)+ad)
  //θ:(a+b)(b+e)-ad-be+cfθ^3
  //θ^2: be+(a+c)(d+f)-ad-cf

  //(a+b)(d+e) = tmp4
  fp_add(&tmp1,&tmp_A.x0,&tmp_A.x1);
  fp_sqr(&tmp4,&tmp1);

  //(a+b+c)(d+e+f) = tmp5
  fp_add(&tmp1,&tmp1,&tmp_A.x2);
  fp_sqr(&tmp5,&tmp1);

  //(a+c)(d+f) = tmp6
  fp_sub(&tmp1,&tmp1,&tmp_A.x1);
  fp_sqr(&tmp6,&tmp1);

  //ad = tmp1
  fp_sqr(&tmp1,&tmp_A.x0);
  //be = tmp2
  fp_sqr(&tmp2,&tmp_A.x1);
  //cf = tmp3
  fp_sqr(&tmp3,&tmp_A.x2);

  //x0 = ad + θ^3((a+c+b)(d+e+f)-(a+c)(d+f)-(a+b)(d+e)+ad)
  // = tmp1 + mul_base(tmp5-tmp6-tmp2-tmp4+)
  fp_sub(&ANS->x0,&tmp5,&tmp4);
  fp_sub(&ANS->x0,&ANS->x0,&tmp6);
  fp_add(&ANS->x0,&ANS->x0,&tmp1);
  fp_mul_base(&ANS->x0,&ANS->x0);
  fp_add(&ANS->x0,&ANS->x0,&tmp1);

  //x1 = (a+b)(b+e)-ad-be+cfθ^3
  fp_sub(&ANS->x1,&tmp4,&tmp1);
  fp_sub(&ANS->x1,&ANS->x1,&tmp2);
  fp_mul_base(&ANS->x2,&tmp3);
  fp_add(&ANS->x1,&ANS->x1,&ANS->x2);

  //x2 = be+(a+c)(d+f)-ad-cf
  fp_add(&ANS->x2,&tmp2,&tmp6);
  fp_sub(&ANS->x2,&ANS->x2,&tmp1);
  fp_sub(&ANS->x2,&ANS->x2,&tmp3);

}

void fp3_add(fp3_t *ANS,fp3_t *A,fp3_t *B){
  fp_add(&ANS->x0,&A->x0,&B->x0);
  fp_add(&ANS->x1,&A->x1,&B->x1);
  fp_add(&ANS->x2,&A->x2,&B->x2);

}

void fp3_add_nonmod_single(fp3_t *ANS,fp3_t *A,fp3_t *B){
  fp_add_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp_add_nonmod_single(&ANS->x1,&A->x1,&B->x1);
  fp_add_nonmod_single(&ANS->x2,&A->x2,&B->x2);

}

void fp3_add_nonmod_double(fpd3_t *ANS,fpd3_t *A,fpd3_t *B){
  fp_add_nonmod_double(&ANS->x0,&A->x0,&B->x0);
  fp_add_nonmod_double(&ANS->x1,&A->x1,&B->x1);
  fp_add_nonmod_double(&ANS->x2,&A->x2,&B->x2);

}

void fp3_add_ui(fp3_t *ANS,fp3_t *A,unsigned long int UI){
  fp_add_ui(&ANS->x0,&A->x0,UI);
  fp_set(&ANS->x1,&A->x1);
  fp_set(&ANS->x2,&A->x2);

}

void fp3_add_ui_ui(fp3_t *ANS,fp3_t *A,unsigned long int UI){
  fp_add_ui(&ANS->x0,&A->x0,UI);
  fp_add_ui(&ANS->x1,&A->x1,UI);
  fp_add_ui(&ANS->x2,&A->x2,UI);

}

void fp3_add_mpn(fp3_t *ANS,fp3_t *A,mp_limb_t *B){
  fp_add_mpn(&ANS->x0,&A->x0,B);
  fp_add_mpn(&ANS->x1,&A->x1,B);
  fp_add_mpn(&ANS->x2,&A->x2,B);

}

void fp3_sub(fp3_t *ANS,fp3_t *A,fp3_t *B){
  fp_sub(&ANS->x0,&A->x0,&B->x0);
  fp_sub(&ANS->x1,&A->x1,&B->x1);
  fp_sub(&ANS->x2,&A->x2,&B->x2);

}

void fp3_sub_nonmod_single(fp3_t *ANS,fp3_t *A,fp3_t *B){
  fp_sub_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp_sub_nonmod_single(&ANS->x1,&A->x1,&B->x1);
  fp_sub_nonmod_single(&ANS->x2,&A->x2,&B->x2);

}

void fp3_sub_nonmod_double(fpd3_t *ANS,fpd3_t *A,fpd3_t *B){
  fp_sub_nonmod_double(&ANS->x0,&A->x0,&B->x0);
  fp_sub_nonmod_double(&ANS->x1,&A->x1,&B->x1);
  fp_sub_nonmod_double(&ANS->x2,&A->x2,&B->x2);

}

void fp3_sub_ui(fp3_t *ANS,fp3_t *A,unsigned long int UI){
  fp_sub_ui(&ANS->x0,&A->x0,UI);
  fp_set(&ANS->x1,&A->x1);
  fp_set(&ANS->x2,&A->x2);

}

void fp3_sub_ui_ui(fp3_t *ANS,fp3_t *A,unsigned long int UI){
  fp_sub_ui(&ANS->x0,&A->x0,UI);
  fp_sub_ui(&ANS->x1,&A->x1,UI);
  fp_sub_ui(&ANS->x2,&A->x2,UI);

}

void fp3_sub_mpn(fp3_t *ANS,fp3_t *A,mp_limb_t *B){
  fp_sub_mpn(&ANS->x0,&A->x0,B);
  fp_sub_mpn(&ANS->x1,&A->x1,B);
  fp_sub_mpn(&ANS->x2,&A->x2,B);

}

void fp3_inv(fp3_t *ANS,fp3_t *A){  
	static fp_t tmp1_fp,tmp2_fp,tmp3_fp,tmp4_fp,tmp5_fp,tmp6_fp,tmp7_fp,tmp8_fp;

    fp_sqr(&tmp1_fp,&A->x0);
    fp_sqr(&tmp2_fp,&A->x1);
    fp_sqr(&tmp3_fp,&A->x2);
    
    fp_mul(&tmp4_fp,&A->x1,&A->x2);
    fp_mul_base(&tmp4_fp,&tmp4_fp);
    fp_sub(&tmp6_fp,&tmp1_fp,&tmp4_fp);
    
    fp_mul(&tmp4_fp,&A->x0,&A->x1);
    fp_mul_base(&tmp7_fp,&tmp3_fp);
    fp_sub(&tmp7_fp,&tmp7_fp,&tmp4_fp);
    
    fp_mul(&tmp4_fp,&A->x0,&A->x2);
    fp_sub(&tmp8_fp,&tmp2_fp,&tmp4_fp);
    
    fp_mul(&tmp1_fp,&tmp1_fp,&A->x0);
    fp_mul(&tmp3_fp,&tmp3_fp,&A->x2);
    fp_mul_base(&tmp3_fp,&tmp3_fp);
    
    fp_add(&tmp5_fp,&tmp4_fp,&tmp4_fp);
    fp_add(&tmp5_fp,&tmp5_fp,&tmp4_fp);
    fp_sub(&tmp5_fp,&tmp2_fp,&tmp5_fp);
    fp_mul(&tmp5_fp,&tmp5_fp,&A->x1);
    fp_add(&tmp5_fp,&tmp5_fp,&tmp3_fp);
    fp_mul_base(&tmp5_fp,&tmp5_fp);
    fp_add(&tmp5_fp,&tmp5_fp,&tmp1_fp);
    
    fp_inv(&tmp5_fp,&tmp5_fp);
    
    fp_mul(&ANS->x0,&tmp6_fp,&tmp5_fp);
    fp_mul(&ANS->x1,&tmp7_fp,&tmp5_fp);
    fp_mul(&ANS->x2,&tmp8_fp,&tmp5_fp);
}

int fp3_legendre(fp3_t *A){
  fp3_t tmp;
  mpz_t expo;
  fp3_init(&tmp);
  mpz_init(expo);

  //(p^3 -1)/2 を計算
  mpz_pow_ui(expo,prime_z,3);
  mpz_sub_ui(expo,expo,1);
  mpz_tdiv_q_ui(expo,expo,2);
  fp3_pow(&tmp,A,expo);

  if(fp3_cmp_one(&tmp)==0){
    mpz_clear(expo);
    return 1;
  }
  else{
     mpz_clear(expo);
    return -1;
  }
}

void fp3_sqrt(fp3_t *ANS,fp3_t *A){
  fp3_t x,y,t,k,n,tmp;
  fp3_init(&x);
  fp3_init(&y);
  fp3_init(&t);
  fp3_init(&k);
  fp3_init(&n);
  fp3_init(&tmp);
  unsigned long int e,m;
  mpz_t exp,q,z,result;
  mpz_init(exp);
  mpz_init(q);
  mpz_init(z);
  mpz_init(result);
  //gmp_randstate_t state;
  //gmp_randinit_default(state);
  //gmp_randseed_ui(state,(unsigned long)time(NULL));

  fp3_set_random(&n,state);
  while(fp3_legendre(&n)!=-1){
    fp3_set_random(&n,state);
  }
  mpz_pow_ui(q,prime_z,3);
  mpz_sub_ui(q,q,1);
  mpz_mod_ui(result,q,2);
  e=0;
  while(mpz_cmp_ui(result,0)==0){
    mpz_tdiv_q_ui(q,q,2);
    mpz_mod_ui(result,q,2);
    e++;
  }
  fp3_pow(&y,&n,q);
  mpz_set_ui(z,e);
  mpz_sub_ui(exp,q,1);
  mpz_tdiv_q_ui(exp,exp,2);
  fp3_pow(&x,A,exp);
  fp3_mul(&tmp,&x,&x);
  fp3_mul(&k,&tmp,A);
  fp3_mul(&x,&x,A);
  while(fp3_cmp_one(&k)!=0){
    m=1;
    mpz_ui_pow_ui(exp,2,m);
    fp3_pow(&tmp,&k,exp);
    while(fp3_cmp_one(&tmp)!=0){
      m++;
      mpz_ui_pow_ui(exp,2,m);
      fp3_pow(&tmp,&k,exp);
    }
    mpz_sub_ui(exp,z,m);
    mpz_sub_ui(exp,exp,1);
    mpz_ui_pow_ui(result,2,mpz_get_ui(exp));
    fp3_pow(&t,&y,result);
    fp3_mul(&y,&t,&t);
    mpz_set_ui(z,m);
    fp3_mul(&x,&x,&t);
    fp3_mul(&k,&k,&y);
  }
  fp3_set(ANS,&x);

  mpz_clear(exp);
  mpz_clear(q);
  mpz_clear(z);
  mpz_clear(result);
}

void fp3_pow(fp3_t *ANS,fp3_t *A,mpz_t scalar){
  int i,length;
  length=(int)mpz_sizeinbase(scalar,2);
  char binary[length+1];
  mpz_get_str(binary,2,scalar);
  fp3_t tmp;
  fp3_init(&tmp);
  fp3_set(&tmp,A);

  for(i=1;i<length; i++){
    fp3_sqr(&tmp,&tmp);
    if(binary[i]=='1')  fp3_mul(&tmp,A,&tmp);
  }
  fp3_set(ANS,&tmp);
}

int fp3_cmp(fp3_t *A,fp3_t *B){
  if(fp_cmp(&A->x0,&B->x0)==0 && fp_cmp(&A->x1,&B->x1)==0 && fp_cmp(&A->x2,&B->x2)==0){
    return 0;
  }
  return 1;
}

int fp3_cmp_ui(fp3_t *A,unsigned long int UI){
  if(fp_cmp_ui(&A->x0,UI)==0 && fp_cmp_ui(&A->x1,UI)==0 && fp_cmp_ui(&A->x2,UI)==0){
    return 0;
  }
  return 1;
}

int fp3_cmp_mpn(fp3_t *A,mp_limb_t *B){
  if(fp_cmp_mpn(&A->x0,B)==0 && fp_cmp_mpn(&A->x1,B)==0 && fp_cmp_mpn(&A->x2,B)==0){
    return 0;
  }
  return 1;
}

int fp3_cmp_zero(fp3_t *A){
  if(fp_cmp_zero(&A->x0)==0 && fp_cmp_zero(&A->x1)==0 && fp_cmp_zero(&A->x2)==0 ){
    return 0;
  }
  return 1;
}

int fp3_cmp_one(fp3_t *A){
  if(fp_cmp_one(&A->x0)==0 && fp_cmp_zero(&A->x1)==0 && fp_cmp_zero(&A->x2)==0){
    return 0;
  }
  return 1;
}


void fp3_frobenius_map_p1(fp3_t *ANS,fp3_t *A){
  fp_set(&ANS->x0,&A->x0);
  fp_mul(&ANS->x1,&A->x1,&frobenius_2_6);
  fp_mul(&ANS->x2,&A->x2,&frobenius_4_6);
}

void fp3_mul_base(fp3_t *ANS,fp3_t *A){
  static fp3_t tmp_A;
  fp3_set(&tmp_A,A);

  fp_lshift_1(&ANS->x0,&tmp_A.x2);
  fp_set(&ANS->x1,&tmp_A.x0);    //@^2 = 2
  fp_set(&ANS->x2,&tmp_A.x1);    //@^2 = 2
}
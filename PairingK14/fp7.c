#include "fp7.h"

void fp7_init(fp7_t *A){
  fp_init(&A->x0);
  fp_init(&A->x1);
  fp_init(&A->x2);
  fp_init(&A->x3);
  fp_init(&A->x4);
  fp_init(&A->x5);
  fp_init(&A->x6);
}

void fp7_printf(std::string str,fp7_t *A){
  gmp_printf("%s(",str.c_str());
  fp_printf("",&A->x0);
  gmp_printf(",");
  fp_printf("",&A->x1);
  gmp_printf(",");
  fp_printf("",&A->x2);
  gmp_printf(",");
  fp_printf("",&A->x3);
  gmp_printf(",");
  fp_printf("",&A->x4);
  gmp_printf(",");
  fp_printf("",&A->x5);
  gmp_printf(",");
  fp_printf("",&A->x6);
  gmp_printf(")");
}

void fp7_println(std::string str,fp7_t *A){
  gmp_printf("%s(",str.c_str());
  fp_printf("",&A->x0);
  gmp_printf(",");
  fp_printf("",&A->x1);
  gmp_printf(",");
  fp_printf("",&A->x2);
  gmp_printf(",");
  fp_printf("",&A->x3);
  gmp_printf(",");
  fp_printf("",&A->x4);
  gmp_printf(",");
  fp_printf("",&A->x5);
  gmp_printf(",");
  fp_printf("",&A->x6);
  gmp_printf(")\n");
}

void fpd7_println(std::string str,fpd7_t *A){
  gmp_printf("%s(",str.c_str());
  fpd_printf("",&A->x0);
  gmp_printf(",");
  fpd_printf("",&A->x1);
  gmp_printf(",");
  fpd_printf("",&A->x2);
  gmp_printf(",");
  fpd_printf("",&A->x3);
  gmp_printf(",");
  fpd_printf("",&A->x4);
  gmp_printf(",");
  fpd_printf("",&A->x5);
  gmp_printf(",");
  fpd_printf("",&A->x6);
  gmp_printf(")\n");

}

void fp7_printf_montgomery(std::string str,fp7_t *A){
  gmp_printf("%s(",str.c_str());
  fp_printf_montgomery("",&A->x0);
  gmp_printf(",");
  fp_printf_montgomery("",&A->x1);
  gmp_printf(",");
  fp_printf_montgomery("",&A->x2);
  gmp_printf(",");
  fp_printf_montgomery("",&A->x3);
  gmp_printf(",");
  fp_printf_montgomery("",&A->x4);
  gmp_printf(",");
  fp_printf_montgomery("",&A->x5);
  gmp_printf(",");
  fp_printf_montgomery("",&A->x6);
  gmp_printf(")");
}

void fp7_set(fp7_t *ANS,fp7_t *A){
  fp_set(&ANS->x0,&A->x0);
  fp_set(&ANS->x1,&A->x1);
  fp_set(&ANS->x2,&A->x2);
  fp_set(&ANS->x3,&A->x3);
  fp_set(&ANS->x4,&A->x4);
  fp_set(&ANS->x5,&A->x5);
  fp_set(&ANS->x6,&A->x6);
}

void fp7_set_ui(fp7_t *ANS,unsigned long int UI){
  fp_set_ui(&ANS->x0,UI);
  fp_set_ui(&ANS->x1,0);
  fp_set_ui(&ANS->x2,0);
  fp_set_ui(&ANS->x3,0);
  fp_set_ui(&ANS->x4,0);
  fp_set_ui(&ANS->x5,0);
  fp_set_ui(&ANS->x6,0);
}

void fp7_set_ui_ui(fp7_t *ANS,unsigned long int UI){
  fp_set_ui(&ANS->x0,UI);
  fp_set_ui(&ANS->x1,UI);
  fp_set_ui(&ANS->x2,UI);
  fp_set_ui(&ANS->x3,UI);
  fp_set_ui(&ANS->x4,UI);
  fp_set_ui(&ANS->x5,UI);
  fp_set_ui(&ANS->x6,UI);
}

void fp7_set_mpn(fp7_t *ANS,mp_limb_t *A){
  fp_set_mpn(&ANS->x0,A);
  fp_set_ui(&ANS->x1,0);
  fp_set_ui(&ANS->x2,0);
  fp_set_ui(&ANS->x3,0);
  fp_set_ui(&ANS->x4,0);
  fp_set_ui(&ANS->x5,0);
  fp_set_ui(&ANS->x6,0);
}

void fp7_set_neg(fp7_t *ANS,fp7_t *A){
  fp_set_neg(&ANS->x0,&A->x0);
  fp_set_neg(&ANS->x1,&A->x1);
  fp_set_neg(&ANS->x2,&A->x2);
  fp_set_neg(&ANS->x3,&A->x3);
  fp_set_neg(&ANS->x4,&A->x4);
  fp_set_neg(&ANS->x5,&A->x5);
  fp_set_neg(&ANS->x6,&A->x6);
}

void fp7_to_montgomery(fp7_t *ANS,fp7_t *A){
  fp_to_montgomery(&ANS->x0,&A->x0);
  fp_to_montgomery(&ANS->x1,&A->x1);
  fp_to_montgomery(&ANS->x2,&A->x2);
  fp_to_montgomery(&ANS->x3,&A->x3);
  fp_to_montgomery(&ANS->x4,&A->x4);
  fp_to_montgomery(&ANS->x5,&A->x5);
  fp_to_montgomery(&ANS->x6,&A->x6);
}

void fp7_mod_montgomery(fp7_t *ANS,fp7_t *A){
  fp_mod_montgomery(&ANS->x0,&A->x0);
  fp_mod_montgomery(&ANS->x1,&A->x1);
  fp_mod_montgomery(&ANS->x2,&A->x2);
  fp_mod_montgomery(&ANS->x3,&A->x3);
  fp_mod_montgomery(&ANS->x4,&A->x4);
  fp_mod_montgomery(&ANS->x5,&A->x5);
  fp_mod_montgomery(&ANS->x6,&A->x6);
}

void fp7_mod_montgomery_double(fp7_t *ANS,fpd7_t *A){
  mpn_mod_montgomery(ANS->x0.x0,FPLIMB,A->x0.x0,FPLIMB2);
  mpn_mod_montgomery(ANS->x1.x0,FPLIMB,A->x1.x0,FPLIMB2);
  mpn_mod_montgomery(ANS->x2.x0,FPLIMB,A->x2.x0,FPLIMB2);
  mpn_mod_montgomery(ANS->x3.x0,FPLIMB,A->x3.x0,FPLIMB2);
  mpn_mod_montgomery(ANS->x4.x0,FPLIMB,A->x4.x0,FPLIMB2);
  mpn_mod_montgomery(ANS->x5.x0,FPLIMB,A->x5.x0,FPLIMB2);
  mpn_mod_montgomery(ANS->x6.x0,FPLIMB,A->x6.x0,FPLIMB2);
}

void fp7_lshift_1(fp7_t *ANS,fp7_t *A){
  fp_lshift_1(&ANS->x0,&A->x0);
  fp_lshift_1(&ANS->x1,&A->x1);
  fp_lshift_1(&ANS->x2,&A->x2);
  fp_lshift_1(&ANS->x3,&A->x3);
  fp_lshift_1(&ANS->x4,&A->x4);
  fp_lshift_1(&ANS->x5,&A->x5);
  fp_lshift_1(&ANS->x6,&A->x6);
}

void fp7_hlv(fp7_t *ANS,fp7_t *A){
  fp_hlv(&ANS->x0, &A->x0);
  fp_hlv(&ANS->x1, &A->x1);
  fp_hlv(&ANS->x2, &A->x2);
  fp_hlv(&ANS->x3, &A->x3);
  fp_hlv(&ANS->x4, &A->x4);
  fp_hlv(&ANS->x5, &A->x5);
  fp_hlv(&ANS->x6, &A->x6);
}

void fp7_set_random(fp7_t *ANS,gmp_randstate_t state){
  fp_set_random(&ANS->x0,state);
  fp_set_random(&ANS->x1,state);
  fp_set_random(&ANS->x2,state);
  fp_set_random(&ANS->x3,state);
  fp_set_random(&ANS->x4,state);
  fp_set_random(&ANS->x5,state);
  fp_set_random(&ANS->x6,state);
}

void fp7_mul(fp7_t *ANS,fp7_t *A,fp7_t *B){ 
  static fp7_t tmp_A,tmp_B;
  fp7_set(&tmp_A,A);
  fp7_set(&tmp_B,B);

#ifdef SB49
  static fp_t tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp_sum;
  //school-book

  //1 - mul
  fp_mul(&tmp0,&tmp_A.x0,&tmp_B.x0);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_B.x6);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_B.x5);
  fp_mul(&tmp3,&tmp_A.x3,&tmp_B.x4);
  fp_mul(&tmp4,&tmp_A.x4,&tmp_B.x3);
  fp_mul(&tmp5,&tmp_A.x5,&tmp_B.x2);
  fp_mul(&tmp6,&tmp_A.x6,&tmp_B.x1);
  
  //1 - sum B
  fp_add(&tmp_sum,&tmp1,&tmp2);
  fp_add(&tmp_sum,&tmp_sum,&tmp3);
  fp_add(&tmp_sum,&tmp_sum,&tmp4);
  fp_add(&tmp_sum,&tmp_sum,&tmp5);
  fp_add(&tmp_sum,&tmp_sum,&tmp6);
  //1 - mul B
  fp_mul_base(&tmp_sum,&tmp_sum);
  //1 - add all
  fp_add(&ANS->x0,&tmp0,&tmp_sum);

  //x - mul
  fp_mul(&tmp0,&tmp_A.x0,&tmp_B.x1);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_B.x0);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_B.x6);
  fp_mul(&tmp3,&tmp_A.x3,&tmp_B.x5);
  fp_mul(&tmp4,&tmp_A.x4,&tmp_B.x4);
  fp_mul(&tmp5,&tmp_A.x5,&tmp_B.x3);
  fp_mul(&tmp6,&tmp_A.x6,&tmp_B.x2);
  //x - sumB
  fp_add(&tmp_sum,&tmp2,&tmp3);
  fp_add(&tmp_sum,&tmp_sum,&tmp4);
  fp_add(&tmp_sum,&tmp_sum,&tmp5);
  fp_add(&tmp_sum,&tmp_sum,&tmp6);
  //1 - mul B
  fp_mul_base(&tmp_sum,&tmp_sum);
  //1 - add all
  fp_add(&ANS->x1,&tmp0,&tmp_sum);
  fp_add(&ANS->x1,&ANS->x1,&tmp1);

  //x^2 - mul
  fp_mul(&tmp0,&tmp_A.x0,&tmp_B.x2);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_B.x1);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_B.x0);
  fp_mul(&tmp3,&tmp_A.x3,&tmp_B.x6);
  fp_mul(&tmp4,&tmp_A.x4,&tmp_B.x5);
  fp_mul(&tmp5,&tmp_A.x5,&tmp_B.x4);
  fp_mul(&tmp6,&tmp_A.x6,&tmp_B.x3);
  //x^2 - sumB
  fp_add(&tmp_sum,&tmp3,&tmp4);
  fp_add(&tmp_sum,&tmp_sum,&tmp5);
  fp_add(&tmp_sum,&tmp_sum,&tmp6);
  //x^2 - mul B
  fp_mul_base(&tmp_sum,&tmp_sum);
  //x^2 - add all
  fp_add(&ANS->x2,&tmp0,&tmp_sum);
  fp_add(&ANS->x2,&ANS->x2,&tmp1);
  fp_add(&ANS->x2,&ANS->x2,&tmp2);

  //x^3 - mul
  fp_mul(&tmp0,&tmp_A.x0,&tmp_B.x3);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_B.x2);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_B.x1);
  fp_mul(&tmp3,&tmp_A.x3,&tmp_B.x0);
  fp_mul(&tmp4,&tmp_A.x4,&tmp_B.x6);
  fp_mul(&tmp5,&tmp_A.x5,&tmp_B.x5);
  fp_mul(&tmp6,&tmp_A.x6,&tmp_B.x4);
  //x^3 - sumB
  fp_add(&tmp_sum,&tmp4,&tmp5);
  fp_add(&tmp_sum,&tmp_sum,&tmp6);
  //x^3 - mul B
  fp_mul_base(&tmp_sum,&tmp_sum);
  //x^3 - add all
  fp_add(&ANS->x3,&tmp0,&tmp_sum);
  fp_add(&ANS->x3,&ANS->x3,&tmp1);
  fp_add(&ANS->x3,&ANS->x3,&tmp2);
  fp_add(&ANS->x3,&ANS->x3,&tmp3);

  //x^4 - mul
  fp_mul(&tmp0,&tmp_A.x0,&tmp_B.x4);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_B.x3);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_B.x2);
  fp_mul(&tmp3,&tmp_A.x3,&tmp_B.x1);
  fp_mul(&tmp4,&tmp_A.x4,&tmp_B.x0);
  fp_mul(&tmp5,&tmp_A.x5,&tmp_B.x6);
  fp_mul(&tmp6,&tmp_A.x6,&tmp_B.x5);
  //x^4 - sumB
  fp_add(&tmp_sum,&tmp5,&tmp6);
  //x^4 - mul B
  fp_mul_base(&tmp_sum,&tmp_sum);
  //x^4 - add all
  fp_add(&ANS->x4,&tmp0,&tmp_sum);
  fp_add(&ANS->x4,&ANS->x4,&tmp1);
  fp_add(&ANS->x4,&ANS->x4,&tmp2);
  fp_add(&ANS->x4,&ANS->x4,&tmp3);
  fp_add(&ANS->x4,&ANS->x4,&tmp4);

  //x^5 - mul
  fp_mul(&tmp0,&tmp_A.x0,&tmp_B.x5);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_B.x4);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_B.x3);
  fp_mul(&tmp3,&tmp_A.x3,&tmp_B.x2);
  fp_mul(&tmp4,&tmp_A.x4,&tmp_B.x1);
  fp_mul(&tmp5,&tmp_A.x5,&tmp_B.x0);
  fp_mul(&tmp6,&tmp_A.x6,&tmp_B.x6);
  //x^5 - mul B
  fp_mul_base(&tmp_sum,&tmp6);
  //x^5 - add all
  fp_add(&ANS->x5,&tmp0,&tmp_sum);
  fp_add(&ANS->x5,&ANS->x5,&tmp1);
  fp_add(&ANS->x5,&ANS->x5,&tmp2);
  fp_add(&ANS->x5,&ANS->x5,&tmp3);
  fp_add(&ANS->x5,&ANS->x5,&tmp4);
  fp_add(&ANS->x5,&ANS->x5,&tmp5);

  //x^6 - mul
  fp_mul(&tmp0,&tmp_A.x0,&tmp_B.x6);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_B.x5);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_B.x4);
  fp_mul(&tmp3,&tmp_A.x3,&tmp_B.x3);
  fp_mul(&tmp4,&tmp_A.x4,&tmp_B.x2);
  fp_mul(&tmp5,&tmp_A.x5,&tmp_B.x1);
  fp_mul(&tmp6,&tmp_A.x6,&tmp_B.x0);

  //x^6 - add all
  fp_add(&ANS->x6,&tmp0,&tmp1);
  fp_add(&ANS->x6,&ANS->x6,&tmp2);
  fp_add(&ANS->x6,&ANS->x6,&tmp3);
  fp_add(&ANS->x6,&ANS->x6,&tmp4);
  fp_add(&ANS->x6,&ANS->x6,&tmp5);
  fp_add(&ANS->x6,&ANS->x6,&tmp6);
  #endif

  #ifdef Karatsuba40
  static fp_t tmp1_fp,tmp2_fp,tmp3_fp,tmp4_fp,tmp5_fp,tmp6_fp,tmp7_fp,tmp8_fp,tmp9_fp;
  static fp_t tmp10_fp,tmp11_fp,tmp12_fp,tmp13_fp,tmp14_fp,tmp15_fp,tmp16_fp,tmp17_fp,tmp18_fp,tmp19_fp;
  static fp_t tmp20_fp,tmp21_fp,tmp22_fp,tmp23_fp,tmp24_fp,tmp25_fp,tmp26_fp,tmp27_fp,tmp28_fp,tmp29_fp;
  static fp_t tmp30_fp,tmp31_fp,tmp32_fp,tmp33_fp,tmp34_fp,tmp35_fp,tmp36_fp,tmp37_fp,tmp38_fp,tmp39_fp;
  static fp_t tmp40_fp,tmp41_fp;

  static fp_t fp_tmp1,fp_tmp2,fp_tmp3,fp_tmp4,fp_tmp5,fp_tmp6,fp_tmp7,fp_tmp8,fp_tmp9;
  static fp_t fp_tmp10,fp_tmp11,fp_tmp12,fp_tmp13,fp_tmp14,fp_tmp15,fp_tmp16,fp_tmp17,fp_tmp18;

  //1 thirdtic school-book  //mul x 16
  fp_mul(&tmp1_fp,&tmp_A.x0,&tmp_B.x0);//1   

  fp_mul(&tmp2_fp,&tmp_A.x0,&tmp_B.x1);//x   
  fp_mul(&tmp5_fp,&tmp_A.x1,&tmp_B.x0);//x   

  fp_mul(&tmp3_fp,&tmp_A.x0,&tmp_B.x2);//x^2
  fp_mul(&tmp6_fp,&tmp_A.x1,&tmp_B.x1);//x^2
  fp_mul(&tmp9_fp,&tmp_A.x2,&tmp_B.x0);//x^2

  fp_mul(&tmp4_fp,&tmp_A.x0,&tmp_B.x3);//x^3 
  fp_mul(&tmp7_fp,&tmp_A.x1,&tmp_B.x2);//x^3
  fp_mul(&tmp10_fp,&tmp_A.x2,&tmp_B.x1);//x^3
  fp_mul(&tmp13_fp,&tmp_A.x3,&tmp_B.x0);//x^3

  fp_mul(&tmp8_fp,&tmp_A.x1,&tmp_B.x3);//x^4
  fp_mul(&tmp11_fp,&tmp_A.x2,&tmp_B.x2);//x^4
  fp_mul(&tmp14_fp,&tmp_A.x3,&tmp_B.x1);//x^4

  fp_mul(&tmp12_fp,&tmp_A.x2,&tmp_B.x3);//x^5
  fp_mul(&tmp15_fp,&tmp_A.x3,&tmp_B.x2);//x^5

  fp_mul(&tmp16_fp,&tmp_A.x3,&tmp_B.x3);//x^6

  //2 secondtic school-book //mul x 9
  fp_mul(&tmp17_fp,&tmp_A.x4,&tmp_B.x4);//1   * x^8 = B*x
  fp_mul(&tmp18_fp,&tmp_A.x4,&tmp_B.x5);//x   * x^8 = B*x^2
  fp_mul(&tmp19_fp,&tmp_A.x4,&tmp_B.x6);//x^2 * x^8 = B*x^3

  fp_mul(&tmp20_fp,&tmp_A.x5,&tmp_B.x4);//x   * x^8 = B*x^2
  fp_mul(&tmp21_fp,&tmp_A.x5,&tmp_B.x5);//x^2 * x^8 = B*x^3
  fp_mul(&tmp22_fp,&tmp_A.x5,&tmp_B.x6);//x^3 * x^8 = B*x^4
 
  fp_mul(&tmp23_fp,&tmp_A.x6,&tmp_B.x4);//x^2 * x^8 = B*x^3
  fp_mul(&tmp24_fp,&tmp_A.x6,&tmp_B.x5);//x^3 * x^8 = B*x^4
  fp_mul(&tmp25_fp,&tmp_A.x6,&tmp_B.x6);//x^4 * x^8 = B*x^5

  //3 karatsuba trick (thirdtic school-book)  //mul x 16
  fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x4);//a0+a4
  fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x4);//b0+b4

  fp_add(&fp_tmp3,&tmp_A.x1,&tmp_A.x5);//a1+a5
  fp_add(&fp_tmp4,&tmp_B.x1,&tmp_B.x5);//b1+b5

  fp_add(&fp_tmp5,&tmp_A.x2,&tmp_A.x6);//a2+a6
  fp_add(&fp_tmp6,&tmp_B.x2,&tmp_B.x6);//b2+b6

  fp_mul(&tmp26_fp,&fp_tmp1,&fp_tmp2);//1   * x^4 = x^4
  fp_mul(&tmp27_fp,&fp_tmp1,&fp_tmp4);//x   * x^4 = x^5
  fp_mul(&tmp28_fp,&fp_tmp1,&fp_tmp6);//x^2   * x^4 = x^6
  fp_mul(&tmp29_fp,&fp_tmp1,&tmp_B.x3);//x^3   * x^4 = x^7 = B

  fp_mul(&tmp30_fp,&fp_tmp3,&fp_tmp2);//x   * x^4 = x^5
  fp_mul(&tmp31_fp,&fp_tmp3,&fp_tmp4);//x^2   * x^4 =x^6
  fp_mul(&tmp32_fp,&fp_tmp3,&fp_tmp6);//x^3   * x^4 = x^7 =B
  fp_mul(&tmp33_fp,&fp_tmp3,&tmp_B.x3);//x^4   * x^4 =x^8 =B*x

  fp_mul(&tmp34_fp,&fp_tmp5,&fp_tmp2);//x^2   * x^4 = x^6
  fp_mul(&tmp35_fp,&fp_tmp5,&fp_tmp4);//x^3  * x^4 = x^7 = B
  fp_mul(&tmp36_fp,&fp_tmp5,&fp_tmp6);//x^4  * x^4 = x^8 = B*x
  fp_mul(&tmp37_fp,&fp_tmp5,&tmp_B.x3);//x^5   * x^4 = x^4 = B*x^2

  fp_mul(&tmp38_fp,&tmp_A.x3,&fp_tmp2);//x^3   * x^4 = x^7 = B
  fp_mul(&tmp39_fp,&tmp_A.x3,&fp_tmp4);//x^4   * x^4 = x^8 = B*x
  fp_mul(&tmp40_fp,&tmp_A.x3,&fp_tmp6);//x^5   * x^4 = x^9 = B*x^2
  //fp_mul(&tmp41_fp,&tmp_A.x3,&tmp_B.x3);//x^6  * x^4 = x^11 = tmp16_fp = B*x3

  //1
  fp_add(&fp_tmp1,&tmp24_fp,&tmp22_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp13_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp10_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp7_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp4_fp);

  fp_add(&fp_tmp2,&tmp38_fp,&tmp35_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp32_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp29_fp);

  fp_sub(&fp_tmp1,&fp_tmp2,&fp_tmp1);
  fp_mul_base(&fp_tmp1,&fp_tmp1);

  fp_add(&ANS->x0,&fp_tmp1,&tmp1_fp);

  //x
  fp_add(&fp_tmp1,&tmp8_fp,&tmp11_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp14_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp25_fp);

  fp_add(&fp_tmp2,&tmp33_fp,&tmp36_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp39_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp17_fp);

  fp_sub(&fp_tmp1,&fp_tmp2,&fp_tmp1);
  fp_mul_base(&fp_tmp1,&fp_tmp1);

  fp_add(&ANS->x1,&fp_tmp1,&tmp2_fp);
  fp_add(&ANS->x1,&ANS->x1,&tmp5_fp);

  //x^2
  fp_add(&fp_tmp1,&tmp12_fp,&tmp15_fp);

  fp_add(&fp_tmp2,&tmp37_fp,&tmp40_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp20_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp18_fp);

  fp_sub(&fp_tmp1,&fp_tmp2,&fp_tmp1);
  fp_mul_base(&fp_tmp1,&fp_tmp1);

  fp_add(&ANS->x2,&fp_tmp1,&tmp3_fp);
  fp_add(&ANS->x2,&ANS->x2,&tmp6_fp);
  fp_add(&ANS->x2,&ANS->x2,&tmp9_fp);

  //x^3
  fp_add(&fp_tmp1,&tmp23_fp,&tmp21_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp19_fp);
  fp_mul_base(&fp_tmp1,&fp_tmp1);

  fp_add(&ANS->x3,&fp_tmp1,&tmp4_fp);
  fp_add(&ANS->x3,&ANS->x3,&tmp7_fp);
  fp_add(&ANS->x3,&ANS->x3,&tmp10_fp);
  fp_add(&ANS->x3,&ANS->x3,&tmp13_fp);

  //x^4
  fp_add(&fp_tmp1,&tmp22_fp,&tmp24_fp);
  fp_mul_base(&fp_tmp1,&fp_tmp1);

  fp_add(&ANS->x4,&fp_tmp1,&tmp8_fp); //8
  fp_add(&ANS->x4,&ANS->x4,&tmp11_fp);  //11
  fp_add(&ANS->x4,&ANS->x4,&tmp14_fp);  //14
  fp_add(&ANS->x4,&ANS->x4,&tmp26_fp);  //26
  fp_sub(&ANS->x4,&ANS->x4,&tmp1_fp);   //1
  fp_sub(&ANS->x4,&ANS->x4,&tmp17_fp);    //17

  //x^5
  fp_mul_base(&fp_tmp1,&tmp25_fp);
  fp_add(&fp_tmp2,&tmp12_fp,&tmp15_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp27_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp30_fp);

  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);

  fp_add(&fp_tmp2,&tmp2_fp,&tmp5_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp18_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp20_fp);

  fp_sub(&ANS->x5,&fp_tmp1,&fp_tmp2);
  //x^6
  fp_add(&fp_tmp1,&tmp16_fp,&tmp28_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp31_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp34_fp);

  fp_add(&fp_tmp2,&tmp3_fp,&tmp6_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp9_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp19_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp21_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp23_fp);

  fp_sub(&ANS->x6,&fp_tmp1,&fp_tmp2);
  #endif

  #ifdef Karatsuba30
  static fp_t tmp1_fp,tmp2_fp,tmp3_fp,tmp4_fp,tmp5_fp,tmp6_fp,tmp7_fp,tmp8_fp,tmp9_fp;
  static fp_t tmp10_fp,tmp11_fp,tmp12_fp,tmp13_fp,tmp14_fp,tmp15_fp,tmp16_fp,tmp17_fp,tmp18_fp,tmp19_fp;
  static fp_t tmp20_fp,tmp21_fp,tmp22_fp,tmp23_fp,tmp24_fp,tmp25_fp,tmp26_fp,tmp27_fp,tmp28_fp,tmp29_fp;
  static fp_t tmp30_fp;//,tmp31_fp

  static fp_t fp_tmp1,fp_tmp2,fp_tmp3,fp_tmp4,fp_tmp5,fp_tmp6;

  //A0*B0 * 1 = mul * 9
    //A00*B00 * 1
      fp_mul(&tmp1_fp,&tmp_A.x0,&tmp_B.x0); //1
      fp_mul(&tmp2_fp,&tmp_A.x1,&tmp_B.x1); //x^2

      fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x1);
      fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x1);
      fp_mul(&tmp3_fp,&fp_tmp1,&fp_tmp2);   //x

    //A01*B01 * x^4
      fp_mul(&tmp4_fp,&tmp_A.x2,&tmp_B.x2); //1
      fp_mul(&tmp5_fp,&tmp_A.x3,&tmp_B.x3); //x^2

      fp_add(&fp_tmp1,&tmp_A.x2,&tmp_A.x3);
      fp_add(&fp_tmp2,&tmp_B.x2,&tmp_B.x3);
      fp_mul(&tmp6_fp,&fp_tmp1,&fp_tmp2);   //x

    //A0*B0 Karatsuba trick * x^2
      fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x2);
      fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x2);
      fp_mul(&tmp7_fp,&fp_tmp1,&fp_tmp2);   //1

      fp_add(&fp_tmp3,&tmp_A.x1,&tmp_A.x3);
      fp_add(&fp_tmp4,&tmp_B.x1,&tmp_B.x3);
      fp_mul(&tmp8_fp,&fp_tmp3,&fp_tmp4);   //x^2

      fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp3);
      fp_add(&fp_tmp2,&fp_tmp2,&fp_tmp4);
      fp_mul(&tmp9_fp,&fp_tmp1,&fp_tmp2);   //x

  //A1*B1 * x^8 = mul * 6
    //A10*B10 * 1
      fp_mul(&tmp10_fp,&tmp_A.x4,&tmp_B.x4);  //1

    //A11*B11 * x^2
      fp_mul(&tmp11_fp,&tmp_A.x5,&tmp_B.x5);  //1
      fp_mul(&tmp12_fp,&tmp_A.x6,&tmp_B.x6);  //x^2

      fp_add(&fp_tmp1,&tmp_A.x5,&tmp_A.x6);
      fp_add(&fp_tmp2,&tmp_B.x5,&tmp_B.x6);
      fp_mul(&tmp13_fp,&fp_tmp1,&fp_tmp2);   //x

    //A1*B1 Karatsuba trick * x
      fp_add(&fp_tmp1,&tmp_A.x4,&tmp_A.x5);
      fp_add(&fp_tmp2,&tmp_B.x4,&tmp_B.x5);
      fp_mul(&tmp14_fp,&fp_tmp1,&fp_tmp2);   //1

      //fp_mul(&tmp12_fp,&tmp_A.x6,&tmp_B.x6);  //x^2 = tmp12 //x^2

      fp_add(&fp_tmp1,&fp_tmp1,&tmp_A.x6);
      fp_add(&fp_tmp2,&fp_tmp2,&tmp_B.x6);
      fp_mul(&tmp15_fp,&fp_tmp1,&fp_tmp2);   //x

  //A*B Karatsuba trick * x^4 = mul * 15
    fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x4);//a0+a4
    fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x4);//b0+b4

    fp_add(&fp_tmp3,&tmp_A.x1,&tmp_A.x5);//a1+a5
    fp_add(&fp_tmp4,&tmp_B.x1,&tmp_B.x5);//b1+b5

    fp_add(&fp_tmp5,&tmp_A.x2,&tmp_A.x6);//a2+a6
    fp_add(&fp_tmp6,&tmp_B.x2,&tmp_B.x6);//b2+b6

    fp_mul(&tmp16_fp,&fp_tmp1,&fp_tmp2);//1   * x^4 = x^4
    fp_mul(&tmp17_fp,&fp_tmp1,&fp_tmp4);//x   * x^4 = x^5
    fp_mul(&tmp18_fp,&fp_tmp1,&fp_tmp6);//x^2   * x^4 = x^6
    fp_mul(&tmp19_fp,&fp_tmp1,&tmp_B.x3);//x^3   * x^4 = x^7 = B

    fp_mul(&tmp20_fp,&fp_tmp3,&fp_tmp2);//x   * x^4 = x^5
    fp_mul(&tmp21_fp,&fp_tmp3,&fp_tmp4);//x^2   * x^4 =x^6
    fp_mul(&tmp22_fp,&fp_tmp3,&fp_tmp6);//x^3   * x^4 = x^7 =B
    fp_mul(&tmp23_fp,&fp_tmp3,&tmp_B.x3);//x^4   * x^4 =x^8 =B*x

    fp_mul(&tmp24_fp,&fp_tmp5,&fp_tmp2);//x^2   * x^4 = x^6
    fp_mul(&tmp25_fp,&fp_tmp5,&fp_tmp4);//x^3  * x^4 = x^7 = B
    fp_mul(&tmp26_fp,&fp_tmp5,&fp_tmp6);//x^4  * x^4 = x^8 = B*x
    fp_mul(&tmp27_fp,&fp_tmp5,&tmp_B.x3);//x^5   * x^4 = x^4 = B*x^2

    fp_mul(&tmp28_fp,&tmp_A.x3,&fp_tmp2);//x^3   * x^4 = x^7 = B
    fp_mul(&tmp29_fp,&tmp_A.x3,&fp_tmp4);//x^4   * x^4 = x^8 = B*x
    fp_mul(&tmp30_fp,&tmp_A.x3,&fp_tmp6);//x^5   * x^4 = x^9 = B*x^2
    //tmp31 = fp_mul(&tmp5_fp,&tmp_A.x3,&tmp_B.x3); //x^6 * x^4 = x^10 = B*x^3

    //1
    fp_add(&fp_tmp1,&tmp19_fp,&tmp22_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp25_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp28_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp7_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp8_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp3_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp6_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp9_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp13_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp1_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp2_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp5_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&ANS->x0,&fp_tmp1,&tmp1_fp);

    //x
    fp_add(&fp_tmp1,&tmp10_fp,&tmp23_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp26_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp29_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp2_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp5_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp8_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&ANS->x1,&fp_tmp1,&tmp3_fp);
    fp_sub(&ANS->x1,&ANS->x1,&tmp1_fp);
    fp_sub(&ANS->x1,&ANS->x1,&tmp2_fp);

    //x^2
    fp_add(&fp_tmp1,&tmp14_fp,&tmp27_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp30_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp5_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp6_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp10_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&ANS->x2,&fp_tmp1,&tmp2_fp);
    fp_add(&ANS->x2,&ANS->x2,&tmp7_fp);
    fp_sub(&ANS->x2,&ANS->x2,&tmp1_fp);
    fp_sub(&ANS->x2,&ANS->x2,&tmp4_fp);

    //x^3
    fp_add(&fp_tmp1,&tmp11_fp,&tmp15_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp14_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp13_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&ANS->x3,&fp_tmp1,&tmp9_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp1_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp2_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp4_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp5_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp7_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp8_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp3_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp6_fp);
    //x^4
    fp_sub(&fp_tmp1,&tmp13_fp,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);

    fp_add(&fp_tmp2,&tmp8_fp,&tmp4_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp16_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp1_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp10_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp2_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp5_fp);
    fp_add(&ANS->x4,&fp_tmp1,&fp_tmp2);

    //x^5
    fp_mul_base(&fp_tmp1,&tmp12_fp);

    fp_add(&fp_tmp2,&tmp6_fp,&tmp17_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp20_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp1_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp2_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp10_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp11_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp3_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp4_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp5_fp);
    fp_sub(&ANS->x5,&fp_tmp2,&tmp14_fp);
    fp_add(&ANS->x5,&ANS->x5,&fp_tmp1);

    //x^6
    fp_add(&fp_tmp1,&tmp5_fp,&tmp18_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp21_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp24_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp14_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp1_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp13_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp2_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp7_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&ANS->x6,&fp_tmp1,&tmp15_fp);

  #endif

  #ifdef Karatsuba23
  static fp_t tmp1_fp,tmp2_fp,tmp3_fp,tmp4_fp,tmp5_fp,tmp6_fp,tmp7_fp,tmp8_fp,tmp9_fp;
  static fp_t tmp10_fp,tmp11_fp,tmp12_fp,tmp13_fp,tmp14_fp,tmp15_fp,tmp16_fp,tmp17_fp,tmp18_fp,tmp19_fp;
  static fp_t tmp20_fp,tmp21_fp,tmp22_fp,tmp23_fp;//

  static fp_t fp_tmp1,fp_tmp2,fp_tmp3,fp_tmp4,fp_tmp5,fp_tmp6;

//A*B
  //A0*B0 * 1 = mul * 9
    //A00*B00 * 1
      fp_mul(&tmp1_fp,&tmp_A.x0,&tmp_B.x0); //1
      fp_mul(&tmp2_fp,&tmp_A.x1,&tmp_B.x1); //x^2

      fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x1);
      fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x1);
      fp_mul(&tmp3_fp,&fp_tmp1,&fp_tmp2);   //x

    //A01*B01 * x^4
      fp_mul(&tmp4_fp,&tmp_A.x2,&tmp_B.x2); //1
      fp_mul(&tmp5_fp,&tmp_A.x3,&tmp_B.x3); //x^2

      fp_add(&fp_tmp1,&tmp_A.x2,&tmp_A.x3);
      fp_add(&fp_tmp2,&tmp_B.x2,&tmp_B.x3);
      fp_mul(&tmp6_fp,&fp_tmp1,&fp_tmp2);   //x

    //A0*B0 Karatsuba trick * x^2
      fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x2);
      fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x2);
      fp_mul(&tmp7_fp,&fp_tmp1,&fp_tmp2);   //1

      fp_add(&fp_tmp3,&tmp_A.x1,&tmp_A.x3);
      fp_add(&fp_tmp4,&tmp_B.x1,&tmp_B.x3);
      fp_mul(&tmp8_fp,&fp_tmp3,&fp_tmp4);   //x^2

      fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp3);
      fp_add(&fp_tmp2,&fp_tmp2,&fp_tmp4);
      fp_mul(&tmp9_fp,&fp_tmp1,&fp_tmp2);   //x

  //A1*B1 * x^8 = mul * 6
    //A10*B10 * 1
      fp_mul(&tmp10_fp,&tmp_A.x4,&tmp_B.x4);  //1

    //A11*B11 * x^2
      fp_mul(&tmp11_fp,&tmp_A.x5,&tmp_B.x5);  //1
      fp_mul(&tmp12_fp,&tmp_A.x6,&tmp_B.x6);  //x^2

      fp_add(&fp_tmp1,&tmp_A.x5,&tmp_A.x6);
      fp_add(&fp_tmp2,&tmp_B.x5,&tmp_B.x6);
      fp_mul(&tmp13_fp,&fp_tmp1,&fp_tmp2);   //x

    //A1*B1 Karatsuba trick * x
      fp_add(&fp_tmp1,&tmp_A.x4,&tmp_A.x5);
      fp_add(&fp_tmp2,&tmp_B.x4,&tmp_B.x5);
      fp_mul(&tmp14_fp,&fp_tmp1,&fp_tmp2);   //1

      //fp_mul(&tmp12_fp,&tmp_A.x6,&tmp_B.x6);  //x^2 = tmp12 //x^2

      fp_add(&fp_tmp1,&fp_tmp1,&tmp_A.x6);
      fp_add(&fp_tmp2,&fp_tmp2,&tmp_B.x6);
      fp_mul(&tmp15_fp,&fp_tmp1,&fp_tmp2);   //x

  //A*B Karatsuba trick * x^4 = mul * 8

    //A(1+0)0*B(1+0)0 * 1

      fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x4);
      fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x4);
      fp_mul(&tmp16_fp,&fp_tmp1,&fp_tmp2);   //1

      fp_add(&fp_tmp3,&tmp_A.x1,&tmp_A.x5);
      fp_add(&fp_tmp4,&tmp_B.x1,&tmp_B.x5);
      fp_mul(&tmp17_fp,&fp_tmp3,&fp_tmp4);   //x^2

      fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp3);
      fp_add(&fp_tmp2,&fp_tmp2,&fp_tmp4);
      fp_mul(&tmp18_fp,&fp_tmp1,&fp_tmp2);   //x

    //A(1+0)1*B(1+0)1 * x^4

      fp_add(&fp_tmp1,&tmp_A.x2,&tmp_A.x6);
      fp_add(&fp_tmp2,&tmp_B.x2,&tmp_B.x6);
      fp_mul(&tmp19_fp,&fp_tmp1,&fp_tmp2);   //1

      //fp_mul(&tmp19.5_fp,&fp_tmp1,&fp_tmp2);//x^2 = tmp5

      fp_add(&fp_tmp1,&fp_tmp1,&tmp_A.x3);
      fp_add(&fp_tmp2,&fp_tmp2,&tmp_B.x3);
      fp_mul(&tmp20_fp,&fp_tmp1,&fp_tmp2);   //x

    //A(1+0)*B(1+0) Karatsuba trick * x^2

      fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x4);
      fp_add(&fp_tmp1,&fp_tmp1,&tmp_A.x2);
      fp_add(&fp_tmp1,&fp_tmp1,&tmp_A.x6);
      fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x4);
      fp_add(&fp_tmp2,&fp_tmp2,&tmp_B.x2);
      fp_add(&fp_tmp2,&fp_tmp2,&tmp_B.x6);
      fp_mul(&tmp21_fp,&fp_tmp1,&fp_tmp2);   //1

      fp_add(&fp_tmp3,&tmp_A.x1,&tmp_A.x5);
      fp_add(&fp_tmp3,&fp_tmp3,&tmp_A.x3);
      fp_add(&fp_tmp4,&tmp_B.x1,&tmp_B.x5);
      fp_add(&fp_tmp4,&fp_tmp4,&tmp_B.x3);
      fp_mul(&tmp22_fp,&fp_tmp3,&fp_tmp4);   //x^2

      fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp3);
      fp_add(&fp_tmp2,&fp_tmp2,&fp_tmp4);
      fp_mul(&tmp23_fp,&fp_tmp1,&fp_tmp2);   //x

    //1
    fp_add(&fp_tmp1,&tmp23_fp,&tmp16_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp17_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp19_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp7_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp8_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp3_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp6_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp9_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp13_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp1_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp2_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp21_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp22_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp18_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp20_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&ANS->x0,&fp_tmp1,&tmp1_fp);

    //x
    fp_add(&fp_tmp1,&tmp10_fp,&tmp22_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp19_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp2_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp17_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp8_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&ANS->x1,&fp_tmp1,&tmp3_fp);
    fp_sub(&ANS->x1,&ANS->x1,&tmp1_fp);
    fp_sub(&ANS->x1,&ANS->x1,&tmp2_fp);

    //x^2
    fp_add(&fp_tmp1,&tmp14_fp,&tmp20_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp6_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp10_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp19_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&ANS->x2,&fp_tmp1,&tmp2_fp);
    fp_add(&ANS->x2,&ANS->x2,&tmp7_fp);
    fp_sub(&ANS->x2,&ANS->x2,&tmp1_fp);
    fp_sub(&ANS->x2,&ANS->x2,&tmp4_fp);

    //x^3
    fp_add(&fp_tmp1,&tmp11_fp,&tmp15_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp14_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp13_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    
    fp_add(&ANS->x3,&fp_tmp1,&tmp9_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp1_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp2_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp4_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp5_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp7_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp8_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp3_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp6_fp);

    //x^4
    fp_sub(&fp_tmp1,&tmp13_fp,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);

    fp_add(&fp_tmp2,&tmp8_fp,&tmp4_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp16_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp1_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp10_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp2_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp5_fp);
    fp_add(&ANS->x4,&fp_tmp1,&fp_tmp2);

    //x^5
    fp_mul_base(&fp_tmp1,&tmp12_fp);

    fp_add(&fp_tmp2,&tmp6_fp,&tmp18_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp1_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp2_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp10_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp11_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp3_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp4_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp5_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp16_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp17_fp);
    fp_sub(&ANS->x5,&fp_tmp2,&tmp14_fp);
    fp_add(&ANS->x5,&ANS->x5,&fp_tmp1);

    //x^6
    fp_add(&fp_tmp1,&tmp5_fp,&tmp17_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp21_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp14_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp1_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp13_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp2_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp7_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp15_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp16_fp);
    fp_sub(&ANS->x6,&fp_tmp1,&tmp19_fp);

  #endif

  #ifdef Mont22
  static fp_t tmp1_fp,tmp2_fp,tmp3_fp,tmp4_fp,tmp5_fp,tmp6_fp,tmp7_fp,tmp8_fp,tmp9_fp;
  static fp_t tmp10_fp,tmp11_fp,tmp12_fp,tmp13_fp,tmp14_fp,tmp15_fp,tmp16_fp,tmp17_fp,tmp18_fp,tmp19_fp;
  static fp_t tmp20_fp,tmp21_fp,tmp22_fp,tmp23_fp;
  static fp_t fp_tmp1,fp_tmp2,fp_tmp3,fp_tmp4,fp_tmp5,fp_tmp6,fp_tmp7,fp_tmp8,fp_tmp9;
  static fp_t fp_tmp10,fp_tmp11,fp_tmp12,fp_tmp13,fp_tmp14,fp_tmp15,fp_tmp16,fp_tmp17,fp_tmp18;

  //Peter L Montgomery Karatsuba like method
  //23
  fp_mul(&tmp23_fp,&tmp_A.x6,&tmp_B.x6);//a6b6 = BX^5 - BX^4 + BX^3 + BX - 3B + 3X^6 -2X^5
  //22
  fp_mul(&tmp22_fp,&tmp_A.x5,&tmp_B.x5);//a5b5 = -BX^4 + BX^3 -BX + B
  //21
  fp_mul(&tmp21_fp,&tmp_A.x4,&tmp_B.x4);//a4b4 = BX^3 - BX^2 + BX -2B + 3X^6 - 3X^5 + X^4
  //20
  fp_mul(&tmp20_fp,&tmp_A.x3,&tmp_B.x3);//a3b3 = C + 2BX^2 - BX -5B + 8X^6 -5X^5 -X^4 + 2X^3
  //19
  fp_mul(&tmp19_fp,&tmp_A.x2,&tmp_B.x2);//a2b2 = BX - 3B + 3X^6 - 2X^5 + X^4 - X^3 + X^2
  //18
  fp_mul(&tmp18_fp,&tmp_A.x1,&tmp_B.x1);//a1b1 = X^5 - X^4 + X^2 - X
  //17
  fp_mul(&tmp17_fp,&tmp_A.x0,&tmp_B.x0);//a0b0 = -2B + 3X^6 - 3X^5 +X^4 + X^2 -X + 1
  //16
  fp_add(&fp_tmp2,&tmp_A.x5,&tmp_A.x6);//(a5+a6)
  fp_add(&fp_tmp3,&tmp_B.x5,&tmp_B.x6);//(b5+b6)
  fp_mul(&tmp16_fp,&fp_tmp2,&fp_tmp3);  //(a5+a6)(b5+b6) = BX^4 + BX^2 - 4B + 6X^6 - 5X^5 + X^3
  //15
  fp_sub(&fp_tmp1,&tmp_A.x4,&tmp_A.x6);//a4-a6
  fp_sub(&fp_tmp2,&tmp_B.x4,&tmp_B.x6);//b4-b6
  fp_mul(&tmp15_fp,&fp_tmp1,&fp_tmp2);  //(a4-a6)(b4-b6) = -C - BX^3 + 3B - 5X^6 + 4X^5 - X^3
  //14
  fp_add(&fp_tmp3,&tmp_A.x3,&tmp_A.x5);//a3+a5
  fp_add(&fp_tmp4,&tmp_B.x3,&tmp_B.x5);//b3+b5
  fp_mul(&tmp14_fp,&fp_tmp3,&fp_tmp4); //(a3+a5)(b3+b5) = -BX^2 + BX - X^6 + X^5
  //13
  fp_sub(&fp_tmp5,&tmp_A.x2,&tmp_A.x6);//a2-a6
  fp_sub(&fp_tmp6,&tmp_B.x2,&tmp_B.x6);//b2-b6
  fp_mul(&tmp13_fp,&fp_tmp5,&fp_tmp6); //(a2-a6)(b2-b6) = -BX + 2B - 2X^6 + X^5
  //12
  fp_add(&fp_tmp7,&tmp_A.x1,&tmp_A.x3);//a1+a3
  fp_add(&fp_tmp8,&tmp_B.x1,&tmp_B.x3);//b1+b3
  fp_mul(&tmp12_fp,&fp_tmp7,&fp_tmp8); //(a1+a3)(b1+b3) = B - X^6 + X^4 - X^3
  //11
  fp_sub(&fp_tmp9,&tmp_A.x0,&tmp_A.x4);//a0-a4
  fp_sub(&fp_tmp10,&tmp_B.x0,&tmp_B.x4);//b0-b4
  fp_mul(&tmp11_fp,&fp_tmp9,&fp_tmp10); //(a0-a4)(b0-b4) = B - 2X^6 + 2X^5 - X^4
  //10
  fp_sub(&fp_tmp11,&tmp_A.x0,&tmp_A.x2);//a0-a2
  fp_sub(&fp_tmp12,&tmp_B.x0,&tmp_B.x2);//b0-b2
  fp_mul(&tmp10_fp,&fp_tmp11,&fp_tmp12);//(a0-a2)(b0-b2) = -C -BX^2 + 4B - 5X^6 + 3X^5 - X^2
  //9
  fp_add(&fp_tmp13,&tmp_A.x0,&tmp_A.x1);//a0+a1
  fp_add(&fp_tmp14,&tmp_B.x0,&tmp_B.x1);//b0+b1
  fp_mul(&tmp9_fp,&fp_tmp13,&fp_tmp14); //(a0+a1)(b0+b1) = BX^2 - 5B + 6X^6 - 4X^5 + X^3 + X
  //7
  fp_sub(&fp_tmp15,&fp_tmp9,&fp_tmp11);//a2-a4
  fp_sub(&fp_tmp16,&fp_tmp10,&fp_tmp12);//b2-b4    
  fp_sub(&fp_tmp17,&fp_tmp7,&fp_tmp3);  //a1-a5
  fp_sub(&fp_tmp18,&fp_tmp8,&fp_tmp4);  //b1-b5
  fp_add(&fp_tmp15,&fp_tmp15,&fp_tmp17);//a1+a2-a4-a5
  fp_add(&fp_tmp16,&fp_tmp16,&fp_tmp18);//b1+b2-b4-b5
  fp_mul(&tmp7_fp,&fp_tmp15,&fp_tmp16);//(a1+a2-a4-a5)(b1+b2-b4-b5) = C + BX^2 - 3B + 4X^6 -3X^5 + X^3
  //6
  fp_sub(&fp_tmp15,&fp_tmp13,&fp_tmp1);//a0+a1-(a4-a6)
  fp_sub(&fp_tmp16,&fp_tmp14,&fp_tmp2);//b0+b1-(b4-b6)
  fp_sub(&fp_tmp15,&fp_tmp15,&tmp_A.x3);//a0+a1-(a4-a6) - a3
  fp_sub(&fp_tmp16,&fp_tmp16,&tmp_B.x3);//b0+b1-(b4-b6) - b3
  fp_mul(&tmp6_fp,&fp_tmp15,&fp_tmp16);//(a0+a1-(a4-a6) - a3)(b0+b1-(b4-b6) - b3) = -BX^2 + 2B - 2X^6 +X^5
  //5
  fp_sub(&fp_tmp15,&fp_tmp13,&fp_tmp7);//a0-a3
  fp_sub(&fp_tmp16,&fp_tmp14,&fp_tmp8);//b0-b3
  fp_sub(&fp_tmp15,&fp_tmp15,&fp_tmp5);//a0-a3-(a2-a6)
  fp_sub(&fp_tmp16,&fp_tmp16,&fp_tmp6);//a0-a3-(a2-a6)
  fp_add(&fp_tmp15,&fp_tmp15,&tmp_A.x5);//a0-a3-(a2-a6)+a5
  fp_add(&fp_tmp16,&fp_tmp16,&tmp_B.x5);//a0-a3-(a2-a6)+b5
  fp_mul(&tmp5_fp,&fp_tmp15,&fp_tmp16);//(a0-a3-(a2-a6)+a5)(a0-a3-(a2-a6)+b5) = B - 2X^6 + 2X^5 - X^3
  //4
  fp_sub(&fp_tmp15,&fp_tmp11,&fp_tmp1);      //a0-a2-a4+a6
  fp_sub(&fp_tmp16,&fp_tmp12,&fp_tmp2);      //b0-b2-b4+b6
  fp_sub(&fp_tmp15,&fp_tmp15,&tmp_A.x3);  //a0-a2-a4+a6-a3
  fp_sub(&fp_tmp16,&fp_tmp16,&tmp_B.x3);  //b0-b2-b4+b6-b3
  fp_mul(&tmp4_fp,&fp_tmp15,&fp_tmp16);    //(a0-a2-a4+a6-a3)(b0-b2-b4+b6-b3) = C + BX^2 - 4B + 6X^6 - 4X^5 +X^3
  //3
  fp_sub(&fp_tmp15,&fp_tmp9,&fp_tmp3);      //(a0-a4)-(a3+a5)
  fp_sub(&fp_tmp16,&fp_tmp10,&fp_tmp4);     //(b0-b4)-(b3+b5)
  fp_add(&fp_tmp15,&fp_tmp15,&tmp_A.x1);  //(a0-a4)-(a3+a5)+a1
  fp_add(&fp_tmp16,&fp_tmp16,&tmp_B.x1);  //(b0-b4)-(b3+b5)+b1
  fp_mul(&tmp3_fp,&fp_tmp15,&fp_tmp16);    //((a0-a4)-(a3+a5)+a1)((b0-b4)-(b3+b5)+b1) = -C + 2B - 3X^6 + 2X^5 - X^3
  //2
  fp_add(&fp_tmp15,&fp_tmp7,&fp_tmp5);//a1+a3+a2-a6
  fp_add(&fp_tmp16,&fp_tmp8,&fp_tmp6);//b1+b3+b2-b6
  fp_sub(&fp_tmp15,&fp_tmp15,&tmp_A.x5);//a1+a3+a2-a6-a5
  fp_sub(&fp_tmp16,&fp_tmp16,&tmp_B.x5);//b1+b3+b2-b6-b5
  fp_mul(&tmp2_fp,&fp_tmp15,&fp_tmp16);//(a1+a3+a2-a6-a5)(b1+b3+b2-b6-b5) = -C - BX^2 + 2B - 3X^6 + 2X^5
  //1
  fp_add(&fp_tmp15,&fp_tmp13,&fp_tmp3);//a0+a1+a3+a5
  fp_add(&fp_tmp16,&fp_tmp14,&fp_tmp4);//b0+b1+b3+b5
  fp_add(&fp_tmp15,&fp_tmp15,&tmp_A.x2);//a0+a1+a3+a5+a2
  fp_add(&fp_tmp15,&fp_tmp15,&tmp_A.x4);//a0+a1+a3+a5+a2+a4
  fp_add(&fp_tmp15,&fp_tmp15,&tmp_A.x6);//a0+a1+a3+a5+a2+a4+a6
  fp_add(&fp_tmp16,&fp_tmp16,&tmp_B.x2);//b0+b1+b3+b5+b2
  fp_add(&fp_tmp16,&fp_tmp16,&tmp_B.x4);//b0+b1+b3+b5+b2+b4
  fp_add(&fp_tmp16,&fp_tmp16,&tmp_B.x6);//b0+b1+b3+b5+b2+b4+b6
  fp_mul(&tmp1_fp,&fp_tmp15,&fp_tmp16);//(a0+a1+a3+a5+a2+a4+a6)(b0+b1+b3+b5+b2+b4+b6) = B -X^6 +X^5
  //++//
  //.1
  fp_add(&fp_tmp1,&tmp1_fp,&tmp5_fp);
  fp_lshift_1(&fp_tmp2,&tmp2_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_lshift_1(&fp_tmp2,&tmp3_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp4_fp,4);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_lshift_1(&fp_tmp2,&tmp6_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp7_fp,3);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp9_fp,5);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp10_fp,4);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp11_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp12_fp);
  fp_lshift_1(&fp_tmp2,&tmp13_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp15_fp,3);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp16_fp,4);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_lshift_1(&fp_tmp2,&tmp17_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp19_fp,3);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp20_fp,5);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_lshift_1(&fp_tmp2,&tmp21_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp22_fp);
  fp_mul_ui(&fp_tmp2,&tmp23_fp,3);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_base(&fp_tmp1,&fp_tmp1);
  fp_add(&ANS->x0,&fp_tmp1,&tmp17_fp);

  //.X
  fp_sub(&fp_tmp1,&tmp14_fp,&tmp13_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp19_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp20_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp21_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp22_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp23_fp);
  fp_mul_base(&fp_tmp1,&fp_tmp1);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp9_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp17_fp);
  fp_sub(&ANS->x1,&fp_tmp1,&tmp18_fp);

  //.X^2
  fp_sub(&fp_tmp1,&tmp4_fp,&tmp6_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp2_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp7_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp9_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp10_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp14_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp16_fp);
  fp_lshift_1(&fp_tmp2,&tmp20_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp21_fp);
  fp_mul_base(&fp_tmp1,&fp_tmp1);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp10_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp17_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp18_fp);
  fp_add(&ANS->x2,&fp_tmp1,&tmp19_fp);

  //.X^3
  fp_sub(&fp_tmp1,&tmp21_fp,&tmp15_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp22_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp23_fp);
  fp_mul_base(&fp_tmp1,&fp_tmp1);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp3_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp4_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp5_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp7_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp9_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp12_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp15_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp16_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp19_fp);
  fp_lshift_1(&fp_tmp2,&tmp20_fp);
  fp_add(&ANS->x3,&fp_tmp1,&fp_tmp2);

  //.X^4
  fp_sub(&fp_tmp1,&tmp16_fp,&tmp22_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp23_fp);
  fp_mul_base(&fp_tmp1,&fp_tmp1);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp12_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp17_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp18_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp19_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp20_fp);
  fp_add(&ANS->x4,&fp_tmp1,&tmp21_fp);

  //.X^5
  fp_mul_base(&fp_tmp1,&tmp23_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp1_fp);
  fp_lshift_1(&fp_tmp2,&tmp2_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_lshift_1(&fp_tmp2,&tmp3_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp4_fp,4);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_lshift_1(&fp_tmp2,&tmp5_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp6_fp);
  fp_mul_ui(&fp_tmp2,&tmp7_fp,3);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp9_fp,4);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp10_fp,3);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_lshift_1(&fp_tmp2,&tmp11_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp13_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp14_fp);
  fp_mul_ui(&fp_tmp2,&tmp15_fp,4);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp16_fp,5);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp17_fp,3);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp18_fp);
  fp_lshift_1(&fp_tmp2,&tmp19_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp20_fp,5);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp21_fp,3);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_lshift_1(&fp_tmp2,&tmp23_fp);
  fp_sub(&ANS->x5,&fp_tmp1,&fp_tmp2);

  //.X^6
  fp_set_ui(&fp_tmp1,0);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp1_fp);
  fp_mul_ui(&fp_tmp2,&tmp2_fp,3);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp3_fp,3);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp4_fp,6);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_lshift_1(&fp_tmp2,&tmp5_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_lshift_1(&fp_tmp2,&tmp6_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp7_fp,4);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp9_fp,6);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp10_fp,5);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_lshift_1(&fp_tmp2,&tmp11_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp12_fp);
  fp_lshift_1(&fp_tmp2,&tmp13_fp);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_sub(&fp_tmp1,&fp_tmp1,&tmp14_fp);
  fp_mul_ui(&fp_tmp2,&tmp15_fp,5);
  fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp16_fp,6);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp17_fp,3);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp19_fp,3);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp20_fp,8);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp21_fp,3);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
  fp_mul_ui(&fp_tmp2,&tmp23_fp,3);
  fp_add(&ANS->x6,&fp_tmp1,&fp_tmp2);
  #endif

}

  void fp7_mul_lazy_montgomery(fp7_t *ANS,fp7_t *A,fp7_t *B){
  static fp7_t tmp_A,tmp_B;
  static fp_t tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp_sum;
  //school-book
  fp7_set(&tmp_A,A);
  fp7_set(&tmp_B,B);

  //1 - mul
  fp_mul(&tmp0,&tmp_A.x0,&tmp_B.x0);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_B.x6);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_B.x5);
  fp_mul(&tmp3,&tmp_A.x3,&tmp_B.x4);
  fp_mul(&tmp4,&tmp_A.x4,&tmp_B.x3);
  fp_mul(&tmp5,&tmp_A.x5,&tmp_B.x2);
  fp_mul(&tmp6,&tmp_A.x6,&tmp_B.x1);
  
  //1 - sum B
  fp_add(&tmp_sum,&tmp1,&tmp2);
  fp_add(&tmp_sum,&tmp_sum,&tmp3);
  fp_add(&tmp_sum,&tmp_sum,&tmp4);
  fp_add(&tmp_sum,&tmp_sum,&tmp5);
  fp_add(&tmp_sum,&tmp_sum,&tmp6);
  //1 - mul B
  fp_mul_base(&tmp_sum,&tmp_sum);
  //1 - add all
  fp_add(&ANS->x0,&tmp0,&tmp_sum);

  //x - mul
  fp_mul(&tmp0,&tmp_A.x0,&tmp_B.x1);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_B.x0);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_B.x6);
  fp_mul(&tmp3,&tmp_A.x3,&tmp_B.x5);
  fp_mul(&tmp4,&tmp_A.x4,&tmp_B.x4);
  fp_mul(&tmp5,&tmp_A.x5,&tmp_B.x3);
  fp_mul(&tmp6,&tmp_A.x6,&tmp_B.x2);
  //x - sumB
  fp_add(&tmp_sum,&tmp2,&tmp3);
  fp_add(&tmp_sum,&tmp_sum,&tmp4);
  fp_add(&tmp_sum,&tmp_sum,&tmp5);
  fp_add(&tmp_sum,&tmp_sum,&tmp6);
  //1 - mul B
  fp_mul_base(&tmp_sum,&tmp_sum);
  //1 - add all
  fp_add(&ANS->x1,&tmp0,&tmp_sum);
  fp_add(&ANS->x1,&ANS->x1,&tmp1);

  //x^2 - mul
  fp_mul(&tmp0,&tmp_A.x0,&tmp_B.x2);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_B.x1);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_B.x0);
  fp_mul(&tmp3,&tmp_A.x3,&tmp_B.x6);
  fp_mul(&tmp4,&tmp_A.x4,&tmp_B.x5);
  fp_mul(&tmp5,&tmp_A.x5,&tmp_B.x4);
  fp_mul(&tmp6,&tmp_A.x6,&tmp_B.x3);
  //x^2 - sumB
  fp_add(&tmp_sum,&tmp3,&tmp4);
  fp_add(&tmp_sum,&tmp_sum,&tmp5);
  fp_add(&tmp_sum,&tmp_sum,&tmp6);
  //x^2 - mul B
  fp_mul_base(&tmp_sum,&tmp_sum);
  //x^2 - add all
  fp_add(&ANS->x2,&tmp0,&tmp_sum);
  fp_add(&ANS->x2,&ANS->x2,&tmp1);
  fp_add(&ANS->x2,&ANS->x2,&tmp2);

  //x^3 - mul
  fp_mul(&tmp0,&tmp_A.x0,&tmp_B.x3);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_B.x2);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_B.x1);
  fp_mul(&tmp3,&tmp_A.x3,&tmp_B.x0);
  fp_mul(&tmp4,&tmp_A.x4,&tmp_B.x6);
  fp_mul(&tmp5,&tmp_A.x5,&tmp_B.x5);
  fp_mul(&tmp6,&tmp_A.x6,&tmp_B.x4);
  //x^3 - sumB
  fp_add(&tmp_sum,&tmp4,&tmp5);
  fp_add(&tmp_sum,&tmp_sum,&tmp6);
  //x^3 - mul B
  fp_mul_base(&tmp_sum,&tmp_sum);
  //x^3 - add all
  fp_add(&ANS->x3,&tmp0,&tmp_sum);
  fp_add(&ANS->x3,&ANS->x3,&tmp1);
  fp_add(&ANS->x3,&ANS->x3,&tmp2);
  fp_add(&ANS->x3,&ANS->x3,&tmp3);

  //x^4 - mul
  fp_mul(&tmp0,&tmp_A.x0,&tmp_B.x4);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_B.x3);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_B.x2);
  fp_mul(&tmp3,&tmp_A.x3,&tmp_B.x1);
  fp_mul(&tmp4,&tmp_A.x4,&tmp_B.x0);
  fp_mul(&tmp5,&tmp_A.x5,&tmp_B.x6);
  fp_mul(&tmp6,&tmp_A.x6,&tmp_B.x5);
  //x^4 - sumB
  fp_add(&tmp_sum,&tmp5,&tmp6);
  //x^4 - mul B
  fp_mul_base(&tmp_sum,&tmp_sum);
  //x^4 - add all
  fp_add(&ANS->x4,&tmp0,&tmp_sum);
  fp_add(&ANS->x4,&ANS->x4,&tmp1);
  fp_add(&ANS->x4,&ANS->x4,&tmp2);
  fp_add(&ANS->x4,&ANS->x4,&tmp3);
  fp_add(&ANS->x4,&ANS->x4,&tmp4);

  //x^5 - mul
  fp_mul(&tmp0,&tmp_A.x0,&tmp_B.x5);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_B.x4);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_B.x3);
  fp_mul(&tmp3,&tmp_A.x3,&tmp_B.x2);
  fp_mul(&tmp4,&tmp_A.x4,&tmp_B.x1);
  fp_mul(&tmp5,&tmp_A.x5,&tmp_B.x0);
  fp_mul(&tmp6,&tmp_A.x6,&tmp_B.x6);
  //x^5 - mul B
  fp_mul_base(&tmp_sum,&tmp6);
  //x^5 - add all
  fp_add(&ANS->x5,&tmp0,&tmp_sum);
  fp_add(&ANS->x5,&ANS->x5,&tmp1);
  fp_add(&ANS->x5,&ANS->x5,&tmp2);
  fp_add(&ANS->x5,&ANS->x5,&tmp3);
  fp_add(&ANS->x5,&ANS->x5,&tmp4);
  fp_add(&ANS->x5,&ANS->x5,&tmp5);

  //x^6 - mul
  fp_mul(&tmp0,&tmp_A.x0,&tmp_B.x6);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_B.x5);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_B.x4);
  fp_mul(&tmp3,&tmp_A.x3,&tmp_B.x3);
  fp_mul(&tmp4,&tmp_A.x4,&tmp_B.x2);
  fp_mul(&tmp5,&tmp_A.x5,&tmp_B.x1);
  fp_mul(&tmp6,&tmp_A.x6,&tmp_B.x0);

  //x^6 - add all
  fp_add(&ANS->x6,&tmp0,&tmp1);
  fp_add(&ANS->x6,&ANS->x6,&tmp2);
  fp_add(&ANS->x6,&ANS->x6,&tmp3);
  fp_add(&ANS->x6,&ANS->x6,&tmp4);
  fp_add(&ANS->x6,&ANS->x6,&tmp5);
  fp_add(&ANS->x6,&ANS->x6,&tmp6);
  }

void fp7_mul_ui(fp7_t *ANS,fp7_t *A,unsigned long int UI){
  fp_mul_ui(&ANS->x0,&A->x0,UI);
  fp_mul_ui(&ANS->x1,&A->x1,UI);
  fp_mul_ui(&ANS->x2,&A->x2,UI);
  fp_mul_ui(&ANS->x3,&A->x3,UI);
  fp_mul_ui(&ANS->x4,&A->x4,UI);
  fp_mul_ui(&ANS->x5,&A->x5,UI);
  fp_mul_ui(&ANS->x6,&A->x6,UI);
}

void fp7_mul_mpn(fp7_t *ANS,fp7_t *A,mp_limb_t *B){
  fp_mul_mpn(&ANS->x0,&A->x0,B);
  fp_mul_mpn(&ANS->x1,&A->x1,B);
  fp_mul_mpn(&ANS->x2,&A->x2,B);
  fp_mul_mpn(&ANS->x3,&A->x3,B);
  fp_mul_mpn(&ANS->x4,&A->x4,B);
  fp_mul_mpn(&ANS->x5,&A->x5,B);
  fp_mul_mpn(&ANS->x6,&A->x6,B);
}

void fp7_mul_mpn_montgomery(fp7_t *ANS,fp7_t *A,mp_limb_t *B){
  mpn_mulmod_montgomery(ANS->x0.x0,FPLIMB,A->x0.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x1.x0,FPLIMB,A->x1.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x2.x0,FPLIMB,A->x2.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x3.x0,FPLIMB,A->x3.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x4.x0,FPLIMB,A->x4.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x5.x0,FPLIMB,A->x5.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x6.x0,FPLIMB,A->x6.x0,FPLIMB,B,FPLIMB);
}

void fp7_sqr(fp7_t *ANS,fp7_t *A){
  static fp7_t tmp_A;
  fp7_set(&tmp_A,A);

  #ifdef SB49  //school-book

  static fp_t tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp_sum;

  //1
  fp_sqr(&tmp0,&tmp_A.x0);

  fp_mul(&tmp1,&tmp_A.x1,&tmp_A.x6);
  fp_add(&tmp1,&tmp1,&tmp1);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_A.x5);
  fp_add(&tmp2,&tmp2,&tmp2);
  fp_mul(&tmp3,&tmp_A.x3,&tmp_A.x4);
  fp_add(&tmp3,&tmp3,&tmp3);
  //1 - sum B
  fp_add(&tmp_sum,&tmp1,&tmp2);
  fp_add(&tmp_sum,&tmp_sum,&tmp3);
  //1 - mul B
  fp_mul_base(&tmp_sum,&tmp_sum);
  //1 - add all
  fp_add(&ANS->x0,&tmp0,&tmp_sum);

  //x
  fp_mul(&tmp0,&tmp_A.x1,&tmp_A.x0);
  fp_add(&tmp0,&tmp0,&tmp0);

  fp_mul(&tmp1,&tmp_A.x2,&tmp_A.x6);
  fp_add(&tmp1,&tmp1,&tmp1);
  fp_mul(&tmp2,&tmp_A.x3,&tmp_A.x5);
  fp_add(&tmp2,&tmp2,&tmp2);
  fp_sqr(&tmp3,&tmp_A.x4);
  //x - sum B
  fp_add(&tmp_sum,&tmp1,&tmp2);
  fp_add(&tmp_sum,&tmp_sum,&tmp3);
  //x - mul B
  fp_mul_base(&tmp_sum,&tmp_sum);
  //x - add all
  fp_add(&ANS->x1,&tmp0,&tmp_sum);

  //x^2
  fp_mul(&tmp0,&tmp_A.x2,&tmp_A.x0);
  fp_add(&tmp0,&tmp0,&tmp0);
  fp_sqr(&tmp1,&tmp_A.x1);

  fp_mul(&tmp2,&tmp_A.x3,&tmp_A.x6);
  fp_add(&tmp2,&tmp2,&tmp2);
  fp_mul(&tmp3,&tmp_A.x4,&tmp_A.x5);
  fp_add(&tmp3,&tmp3,&tmp3);
  //x^2 - sum B
  fp_add(&tmp_sum,&tmp2,&tmp3);
  //x^2 - mul B
  fp_mul_base(&tmp_sum,&tmp_sum);
  //x^2 - add all
  fp_add(&ANS->x2,&tmp0,&tmp_sum);
  fp_add(&ANS->x2,&ANS->x2,&tmp1);

  //x^3
  fp_mul(&tmp0,&tmp_A.x0,&tmp_A.x3);
  fp_add(&tmp0,&tmp0,&tmp0);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_A.x2);
  fp_add(&tmp1,&tmp1,&tmp1);

  fp_mul(&tmp2,&tmp_A.x4,&tmp_A.x6);
  fp_add(&tmp2,&tmp2,&tmp2);
  fp_sqr(&tmp3,&tmp_A.x5);
  //x^3 - sum B
  fp_add(&tmp_sum,&tmp2,&tmp3);
  //x^3 - mul B
  fp_mul_base(&tmp_sum,&tmp_sum);
  //x^3 - add all
  fp_add(&ANS->x3,&tmp0,&tmp_sum);
  fp_add(&ANS->x3,&ANS->x3,&tmp1);

  //x^4
  fp_mul(&tmp0,&tmp_A.x0,&tmp_A.x4);
  fp_add(&tmp0,&tmp0,&tmp0);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_A.x3);
  fp_add(&tmp1,&tmp1,&tmp1);
  fp_sqr(&tmp2,&tmp_A.x2);

  fp_mul(&tmp3,&tmp_A.x5,&tmp_A.x6);
  fp_add(&tmp3,&tmp3,&tmp3);
  //x^4 - mul B
  fp_mul_base(&tmp3,&tmp3);
  //x^4 - add all
  fp_add(&ANS->x4,&tmp0,&tmp3);
  fp_add(&ANS->x4,&ANS->x4,&tmp1);
  fp_add(&ANS->x4,&ANS->x4,&tmp2);

  //x^5
  fp_mul(&tmp0,&tmp_A.x0,&tmp_A.x5);
  fp_add(&tmp0,&tmp0,&tmp0);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_A.x4);
  fp_add(&tmp1,&tmp1,&tmp1);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_A.x3);
  fp_add(&tmp2,&tmp2,&tmp2);

  fp_sqr(&tmp3,&tmp_A.x6);
  //x^5 - mul B
  fp_mul_base(&tmp3,&tmp3);
  //x^5 - add all
  fp_add(&ANS->x5,&tmp0,&tmp3);
  fp_add(&ANS->x5,&ANS->x5,&tmp1);
  fp_add(&ANS->x5,&ANS->x5,&tmp2);

  //x^6
  fp_mul(&tmp0,&tmp_A.x0,&tmp_A.x6);
  fp_add(&tmp0,&tmp0,&tmp0);
  fp_mul(&tmp1,&tmp_A.x1,&tmp_A.x5);
  fp_add(&tmp1,&tmp1,&tmp1);
  fp_mul(&tmp2,&tmp_A.x2,&tmp_A.x4);
  fp_add(&tmp2,&tmp2,&tmp2);
  fp_sqr(&tmp3,&tmp_A.x3);
  //x^5 - add all
  fp_add(&ANS->x6,&tmp0,&tmp1);
  fp_add(&ANS->x6,&ANS->x6,&tmp2);
  fp_add(&ANS->x6,&ANS->x6,&tmp3);
  #endif

  #ifdef Karatsuba40
  static fp_t tmp1_fp,tmp2_fp,tmp3_fp,tmp4_fp,tmp6_fp,tmp7_fp,tmp8_fp;
  static fp_t tmp11_fp,tmp12_fp,tmp16_fp,tmp17_fp,tmp18_fp,tmp19_fp;
  static fp_t tmp21_fp,tmp22_fp,tmp25_fp,tmp26_fp,tmp27_fp,tmp28_fp,tmp29_fp;
  static fp_t tmp31_fp,tmp32_fp,tmp33_fp,tmp36_fp,tmp37_fp;

  static fp_t fp_tmp1,fp_tmp2,fp_tmp3,fp_tmp4,fp_tmp5,fp_tmp6,fp_tmp7,fp_tmp8,fp_tmp9;
  static fp_t fp_tmp10,fp_tmp11,fp_tmp12,fp_tmp13,fp_tmp14,fp_tmp15,fp_tmp16,fp_tmp17,fp_tmp18;

  //1 thirdtic school-book  //mul x 16
  fp_sqr(&tmp1_fp,&tmp_A.x0);//1   

  fp_mul(&tmp2_fp,&tmp_A.x0,&tmp_A.x1);//x  //tmp5
  //fp_mul(&tmp5_fp,&tmp_A.x1,&tmp_B.x0);//x   

  fp_mul(&tmp3_fp,&tmp_A.x0,&tmp_A.x2);//x^2 //tmp9
  fp_sqr(&tmp6_fp,&tmp_A.x1);//x^2
  //fp_mul(&tmp9_fp,&tmp_A.x2,&tmp_B.x0);//x^2

  fp_mul(&tmp4_fp,&tmp_A.x0,&tmp_A.x3);//x^3 //tmp13
  fp_mul(&tmp7_fp,&tmp_A.x1,&tmp_A.x2);//x^3  //tmp10
  //fp_mul(&tmp10_fp,&tmp_A.x2,&tmp_B.x1);//x^3
  //fp_mul(&tmp13_fp,&tmp_A.x3,&tmp_B.x0);//x^3

  fp_mul(&tmp8_fp,&tmp_A.x1,&tmp_A.x3);//x^4//tmp14
  fp_sqr(&tmp11_fp,&tmp_A.x2);//x^4
  //fp_mul(&tmp14_fp,&tmp_A.x3,&tmp_B.x1);//x^4

  fp_mul(&tmp12_fp,&tmp_A.x2,&tmp_A.x3);//x^5//tmp15
  //fp_mul(&tmp15_fp,&tmp_A.x3,&tmp_B.x2);//x^5

  fp_sqr(&tmp16_fp,&tmp_A.x3);//x^6

  //2 secondtic school-book //mul x 9
  fp_sqr(&tmp17_fp,&tmp_A.x4);//1   * x^8 = B*x
  fp_mul(&tmp18_fp,&tmp_A.x4,&tmp_A.x5);//x   * x^8 = B*x^2//tmp20
  fp_mul(&tmp19_fp,&tmp_A.x4,&tmp_A.x6);//x^2 * x^8 = B*x^3//tmp23

  //fp_mul(&tmp20_fp,&tmp_A.x5,&tmp_B.x4);//x   * x^8 = B*x^2
  fp_sqr(&tmp21_fp,&tmp_A.x5);//x^2 * x^8 = B*x^3
  fp_mul(&tmp22_fp,&tmp_A.x5,&tmp_A.x6);//x^3 * x^8 = B*x^4//tmp24
 
  //fp_mul(&tmp23_fp,&tmp_A.x6,&tmp_B.x4);//x^2 * x^8 = B*x^3
  //fp_mul(&tmp24_fp,&tmp_A.x6,&tmp_B.x5);//x^3 * x^8 = B*x^4
  fp_sqr(&tmp25_fp,&tmp_A.x6);//x^4 * x^8 = B*x^5

  //3 karatsuba trick (thirdtic school-book)  //mul x 16
  fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x4);//a0+a4 //tmp2
  //fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x4);//b0+b4

  fp_add(&fp_tmp3,&tmp_A.x1,&tmp_A.x5);//a1+a5//tmp4
  //fp_add(&fp_tmp4,&tmp_B.x1,&tmp_B.x5);//b1+b5

  fp_add(&fp_tmp5,&tmp_A.x2,&tmp_A.x6);//a2+a6//tmp6
  //fp_add(&fp_tmp6,&tmp_B.x2,&tmp_B.x6);//b2+b6

  fp_sqr(&tmp26_fp,&fp_tmp1);//1   * x^4 = x^4
  fp_mul(&tmp27_fp,&fp_tmp1,&fp_tmp3);//x   * x^4 = x^5//tmp30
  fp_mul(&tmp28_fp,&fp_tmp1,&fp_tmp5);//x^2   * x^4 = x^6//tmp34
  fp_mul(&tmp29_fp,&fp_tmp1,&tmp_A.x3);//x^3   * x^4 = x^7 = B//tmp38

  //fp_mul(&tmp30_fp,&fp_tmp3,&fp_tmp2);//x   * x^4 = x^5
  fp_sqr(&tmp31_fp,&fp_tmp3);//x^2   * x^4 =x^6
  fp_mul(&tmp32_fp,&fp_tmp3,&fp_tmp5);//x^3   * x^4 = x^7 =B//tmp35
  fp_mul(&tmp33_fp,&fp_tmp3,&tmp_A.x3);//x^4   * x^4 =x^8 =B*x//tmp39

  //fp_mul(&tmp34_fp,&fp_tmp5,&fp_tmp2);//x^2   * x^4 = x^6
  //fp_mul(&tmp35_fp,&fp_tmp5,&fp_tmp4);//x^3  * x^4 = x^7 = B
  fp_sqr(&tmp36_fp,&fp_tmp5);//x^4  * x^4 = x^8 = B*x
  fp_mul(&tmp37_fp,&fp_tmp5,&tmp_A.x3);//x^5   * x^4 = x^4 = B*x^2//40

  //fp_mul(&tmp38_fp,&tmp_A.x3,&fp_tmp2);//x^3   * x^4 = x^7 = B
  //fp_mul(&tmp39_fp,&tmp_A.x3,&fp_tmp4);//x^4   * x^4 = x^8 = B*x
  //fp_mul(&tmp40_fp,&tmp_A.x3,&fp_tmp6);//x^5   * x^4 = x^9 = B*x^2
  //fp_mul(&tmp41_fp,&tmp_A.x3,&tmp_B.x3);//x^6  * x^4 = x^11 = tmp16_fp = B*x3

  //1
  fp_lshift_1(&fp_tmp1,&tmp22_fp);
  fp_add(&fp_tmp2,&tmp4_fp,&tmp7_fp);
  fp_lshift_1(&fp_tmp2,&fp_tmp2);
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);

  fp_add(&fp_tmp2,&tmp32_fp,&tmp29_fp);
  fp_lshift_1(&fp_tmp2,&fp_tmp2);

  fp_sub(&fp_tmp1,&fp_tmp2,&fp_tmp1);
  fp_mul_base(&fp_tmp1,&fp_tmp1);

  fp_add(&ANS->x0,&fp_tmp1,&tmp1_fp);

  //x
  fp_add(&fp_tmp1,&tmp25_fp,&tmp11_fp);//8,11
  fp_lshift_1(&fp_tmp2,&tmp8_fp);//14 = 8
  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);

  fp_add(&fp_tmp2,&tmp17_fp,&tmp36_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp33_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp33_fp);

  fp_sub(&fp_tmp1,&fp_tmp2,&fp_tmp1);
  fp_mul_base(&fp_tmp1,&fp_tmp1);

  fp_add(&ANS->x1,&fp_tmp1,&tmp2_fp);
  fp_add(&ANS->x1,&ANS->x1,&tmp2_fp);

  //x^2
  fp_lshift_1(&fp_tmp1,&tmp12_fp);

  fp_add(&fp_tmp2,&tmp37_fp,&tmp18_fp);
  fp_lshift_1(&fp_tmp2,&fp_tmp2);

  fp_sub(&fp_tmp1,&fp_tmp2,&fp_tmp1);
  fp_mul_base(&fp_tmp1,&fp_tmp1);

  fp_add(&ANS->x2,&fp_tmp1,&tmp6_fp);
  fp_add(&ANS->x2,&ANS->x2,&tmp3_fp);
  fp_add(&ANS->x2,&ANS->x2,&tmp3_fp);

  //x^3
  fp_lshift_1(&fp_tmp1,&tmp19_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp21_fp);
  fp_mul_base(&fp_tmp1,&fp_tmp1);

  fp_add(&fp_tmp2,&tmp4_fp,&tmp7_fp);
  fp_lshift_1(&fp_tmp2,&fp_tmp2);

  fp_add(&ANS->x3,&fp_tmp1,&fp_tmp2);

  //x^4
  fp_lshift_1(&fp_tmp1,&tmp22_fp);
  fp_mul_base(&fp_tmp1,&fp_tmp1);

  fp_lshift_1(&fp_tmp2,&tmp8_fp);
  fp_add(&ANS->x4,&fp_tmp1,&fp_tmp2);   //8+14
  fp_add(&ANS->x4,&ANS->x4,&tmp11_fp);  //11
  fp_add(&ANS->x4,&ANS->x4,&tmp26_fp);  //26
  fp_sub(&ANS->x4,&ANS->x4,&tmp1_fp);   //1
  fp_sub(&ANS->x4,&ANS->x4,&tmp17_fp);  //17

  //x^5
  fp_mul_base(&fp_tmp1,&tmp25_fp);
  fp_add(&fp_tmp2,&tmp12_fp,&tmp27_fp);
  fp_lshift_1(&fp_tmp2,&fp_tmp2);

  fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);

  fp_add(&fp_tmp2,&tmp2_fp,&tmp18_fp);
  fp_lshift_1(&fp_tmp2,&fp_tmp2);

  fp_sub(&ANS->x5,&fp_tmp1,&fp_tmp2);
  //x^6
  fp_lshift_1(&fp_tmp1,&tmp28_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp16_fp);
  fp_add(&fp_tmp1,&fp_tmp1,&tmp31_fp);

  fp_add(&fp_tmp2,&tmp3_fp,&tmp19_fp);
  fp_lshift_1(&fp_tmp2,&fp_tmp2);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp6_fp);
  fp_add(&fp_tmp2,&fp_tmp2,&tmp21_fp);

  fp_sub(&ANS->x6,&fp_tmp1,&fp_tmp2);

  #endif

  #ifdef Karatsuba30 //30
  static fp_t tmp1_fp,tmp2_fp,tmp3_fp,tmp4_fp,tmp5_fp,tmp6_fp,tmp7_fp,tmp8_fp,tmp9_fp;
  static fp_t tmp10_fp,tmp11_fp,tmp12_fp,tmp13_fp,tmp14_fp,tmp15_fp,tmp16_fp,tmp17_fp,tmp18_fp,tmp19_fp;
  static fp_t tmp21_fp,tmp22_fp,tmp23_fp,tmp26_fp,tmp27_fp;

  static fp_t fp_tmp1,fp_tmp2,fp_tmp3,fp_tmp4,fp_tmp5,fp_tmp6;

  //A0*B0 * 1 = mul * 9
    //A00*B00 * 1
      fp_sqr(&tmp1_fp,&tmp_A.x0); //1
      fp_sqr(&tmp2_fp,&tmp_A.x1); //x^2

      fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x1);
      //fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x1);
      fp_sqr(&tmp3_fp,&fp_tmp1);   //x

    //A01*B01 * x^4
      fp_sqr(&tmp4_fp,&tmp_A.x2); //1
      fp_sqr(&tmp5_fp,&tmp_A.x3); //x^2

      fp_add(&fp_tmp1,&tmp_A.x2,&tmp_A.x3);
      //fp_add(&fp_tmp2,&tmp_B.x2,&tmp_B.x3);
      fp_sqr(&tmp6_fp,&fp_tmp1);   //x

    //A0*B0 Karatsuba trick * x^2
      fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x2);
      //fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x2);
      fp_sqr(&tmp7_fp,&fp_tmp1);   //1

      fp_add(&fp_tmp3,&tmp_A.x1,&tmp_A.x3);
      //fp_add(&fp_tmp4,&tmp_B.x1,&tmp_B.x3);
      fp_sqr(&tmp8_fp,&fp_tmp3);   //x^2

      fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp3);
      //fp_add(&fp_tmp2,&fp_tmp2,&fp_tmp4);
      fp_sqr(&tmp9_fp,&fp_tmp1);   //x

  //A1*B1 * x^8 = mul * 6
    //A10*B10 * 1
      fp_sqr(&tmp10_fp,&tmp_A.x4);  //1

    //A11*B11 * x^2
      fp_sqr(&tmp11_fp,&tmp_A.x5);  //1
      fp_sqr(&tmp12_fp,&tmp_A.x6);  //x^2

      fp_add(&fp_tmp1,&tmp_A.x5,&tmp_A.x6);
      //fp_add(&fp_tmp2,&tmp_B.x5,&tmp_B.x6);
      fp_sqr(&tmp13_fp,&fp_tmp1);   //x

    //A1*B1 Karatsuba trick * x
      fp_add(&fp_tmp1,&tmp_A.x4,&tmp_A.x5);
      //fp_add(&fp_tmp2,&tmp_B.x4,&tmp_B.x5);
      fp_sqr(&tmp14_fp,&fp_tmp1);   //1

      //fp_mul(&tmp12_fp,&tmp_A.x6,&tmp_B.x6);  //x^2 = tmp12 //x^2

      fp_add(&fp_tmp1,&fp_tmp1,&tmp_A.x6);
      //fp_add(&fp_tmp2,&fp_tmp2,&tmp_B.x6);
      fp_sqr(&tmp15_fp,&fp_tmp1);   //x

  //A*B Karatsuba trick * x^4 = mul * 15
    fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x4);//a0+a4
    //fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x4);//b0+b4

    fp_add(&fp_tmp3,&tmp_A.x1,&tmp_A.x5);//a1+a5
    //fp_add(&fp_tmp4,&tmp_B.x1,&tmp_B.x5);//b1+b5

    fp_add(&fp_tmp5,&tmp_A.x2,&tmp_A.x6);//a2+a6
    //fp_add(&fp_tmp6,&tmp_B.x2,&tmp_B.x6);//b2+b6

    fp_sqr(&tmp16_fp,&fp_tmp1);//1   * x^4 = x^4
    fp_mul(&tmp17_fp,&fp_tmp1,&fp_tmp3);//x   * x^4 = x^5//tmp20
    fp_mul(&tmp18_fp,&fp_tmp1,&fp_tmp5);//x^2   * x^4 = x^6//tmp24
    fp_mul(&tmp19_fp,&fp_tmp1,&tmp_A.x3);//x^3   * x^4 = x^7 = B//tmp28

    //fp_mul(&tmp20_fp,&fp_tmp3,&fp_tmp2);//x   * x^4 = x^5
    fp_sqr(&tmp21_fp,&fp_tmp3);//x^2   * x^4 =x^6
    fp_mul(&tmp22_fp,&fp_tmp3,&fp_tmp5);//x^3   * x^4 = x^7 =B//tmp25
    fp_mul(&tmp23_fp,&fp_tmp3,&tmp_A.x3);//x^4   * x^4 =x^8 =B*x//tmp29

    //fp_mul(&tmp24_fp,&fp_tmp5,&fp_tmp2);//x^2   * x^4 = x^6
    //fp_mul(&tmp25_fp,&fp_tmp5,&fp_tmp4);//x^3  * x^4 = x^7 = B
    fp_sqr(&tmp26_fp,&fp_tmp5);//x^4  * x^4 = x^8 = B*x
    fp_mul(&tmp27_fp,&fp_tmp5,&tmp_A.x3);//x^5   * x^4 = x^4 = B*x^2//tmp30

    //fp_mul(&tmp28_fp,&tmp_A.x3,&fp_tmp2);//x^3   * x^4 = x^7 = B
    //fp_mul(&tmp29_fp,&tmp_A.x3,&fp_tmp4);//x^4   * x^4 = x^8 = B*x
    //fp_mul(&tmp30_fp,&tmp_A.x3,&fp_tmp6);//x^5   * x^4 = x^9 = B*x^2
    //tmp31 = fp_mul(&tmp5_fp,&tmp_A.x3,&tmp_B.x3); //x^6 * x^4 = x^10 = B*x^3

    //1
    fp_add(&fp_tmp1,&tmp19_fp,&tmp22_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp22_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp19_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp7_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp8_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp3_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp6_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp9_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp13_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp1_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp2_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp5_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&ANS->x0,&fp_tmp1,&tmp1_fp);

    //x
    fp_add(&fp_tmp1,&tmp10_fp,&tmp23_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp26_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp23_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp2_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp5_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp8_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&ANS->x1,&fp_tmp1,&tmp3_fp);
    fp_sub(&ANS->x1,&ANS->x1,&tmp1_fp);
    fp_sub(&ANS->x1,&ANS->x1,&tmp2_fp);

    //x^2
    fp_add(&fp_tmp1,&tmp14_fp,&tmp27_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp27_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp5_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp6_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp10_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&ANS->x2,&fp_tmp1,&tmp2_fp);
    fp_add(&ANS->x2,&ANS->x2,&tmp7_fp);
    fp_sub(&ANS->x2,&ANS->x2,&tmp1_fp);
    fp_sub(&ANS->x2,&ANS->x2,&tmp4_fp);

    //x^3
    fp_add(&fp_tmp1,&tmp11_fp,&tmp15_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp14_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp13_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&ANS->x3,&fp_tmp1,&tmp9_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp1_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp2_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp4_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp5_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp7_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp8_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp3_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp6_fp);
    //x^4
    fp_sub(&fp_tmp1,&tmp13_fp,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);

    fp_add(&fp_tmp2,&tmp8_fp,&tmp4_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp16_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp1_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp10_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp2_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp5_fp);
    fp_add(&ANS->x4,&fp_tmp1,&fp_tmp2);

    //x^5
    fp_mul_base(&fp_tmp1,&tmp12_fp);

    fp_add(&fp_tmp2,&tmp6_fp,&tmp17_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp17_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp1_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp2_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp10_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp11_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp3_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp4_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp5_fp);
    fp_sub(&ANS->x5,&fp_tmp2,&tmp14_fp);
    fp_add(&ANS->x5,&ANS->x5,&fp_tmp1);

    //x^6
    fp_add(&fp_tmp1,&tmp5_fp,&tmp18_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp21_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp18_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp14_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp1_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp13_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp2_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp7_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&ANS->x6,&fp_tmp1,&tmp15_fp);
  #endif

  #ifdef Karatsuba23
  static fp_t tmp1_fp,tmp2_fp,tmp3_fp,tmp4_fp,tmp5_fp,tmp6_fp,tmp7_fp,tmp8_fp,tmp9_fp;
  static fp_t tmp10_fp,tmp11_fp,tmp12_fp,tmp13_fp,tmp14_fp,tmp15_fp,tmp16_fp,tmp17_fp,tmp18_fp,tmp19_fp;
  static fp_t tmp20_fp,tmp21_fp,tmp22_fp,tmp23_fp;//

  static fp_t fp_tmp1,fp_tmp2,fp_tmp3,fp_tmp4,fp_tmp5,fp_tmp6;

  //A0*B0 * 1 = mul * 9
    //A00*B00 * 1
      fp_sqr(&tmp1_fp,&tmp_A.x0); //1
      fp_sqr(&tmp2_fp,&tmp_A.x1); //x^2

      fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x1);
      //fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x1);
      fp_sqr(&tmp3_fp,&fp_tmp1);   //x

    //A01*B01 * x^4
      fp_sqr(&tmp4_fp,&tmp_A.x2); //1
      fp_sqr(&tmp5_fp,&tmp_A.x3); //x^2

      fp_add(&fp_tmp1,&tmp_A.x2,&tmp_A.x3);
      //fp_add(&fp_tmp2,&tmp_B.x2,&tmp_B.x3);
      fp_sqr(&tmp6_fp,&fp_tmp1);   //x

    //A0*B0 Karatsuba trick * x^2
      fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x2);
      //fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x2);
      fp_sqr(&tmp7_fp,&fp_tmp1);   //1

      fp_add(&fp_tmp3,&tmp_A.x1,&tmp_A.x3);
      //fp_add(&fp_tmp4,&tmp_B.x1,&tmp_B.x3);
      fp_sqr(&tmp8_fp,&fp_tmp3);   //x^2

      fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp3);
      //fp_add(&fp_tmp2,&fp_tmp2,&fp_tmp4);
      fp_sqr(&tmp9_fp,&fp_tmp1);   //x

  //A1*B1 * x^8 = mul * 6
    //A10*B10 * 1
      fp_sqr(&tmp10_fp,&tmp_A.x4);  //1

    //A11*B11 * x^2
      fp_sqr(&tmp11_fp,&tmp_A.x5);  //1
      fp_sqr(&tmp12_fp,&tmp_A.x6);  //x^2

      fp_add(&fp_tmp1,&tmp_A.x5,&tmp_A.x6);
      //fp_add(&fp_tmp2,&tmp_B.x5,&tmp_B.x6);
      fp_sqr(&tmp13_fp,&fp_tmp1);   //x

    //A1*B1 Karatsuba trick * x
      fp_add(&fp_tmp1,&tmp_A.x4,&tmp_A.x5);
      //fp_add(&fp_tmp2,&tmp_B.x4,&tmp_B.x5);
      fp_sqr(&tmp14_fp,&fp_tmp1);   //1

      //fp_mul(&tmp12_fp,&tmp_A.x6,&tmp_B.x6);  //x^2 = tmp12 //x^2

      fp_add(&fp_tmp1,&fp_tmp1,&tmp_A.x6);
      //fp_add(&fp_tmp2,&fp_tmp2,&tmp_B.x6);
      fp_sqr(&tmp15_fp,&fp_tmp1);   //x

  //A*B Karatsuba trick * x^4 = mul * 8

    //A(1+0)0*B(1+0)0 * 1

      fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x4);
      //fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x4);
      fp_sqr(&tmp16_fp,&fp_tmp1);   //1

      fp_add(&fp_tmp3,&tmp_A.x1,&tmp_A.x5);
      //fp_add(&fp_tmp4,&tmp_B.x1,&tmp_B.x5);
      fp_sqr(&tmp17_fp,&fp_tmp3);   //x^2

      fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp3);
      //fp_add(&fp_tmp2,&fp_tmp2,&fp_tmp4);
      fp_sqr(&tmp18_fp,&fp_tmp1);   //x

    //A(1+0)1*B(1+0)1 * x^4

      fp_add(&fp_tmp1,&tmp_A.x2,&tmp_A.x6);
      //fp_add(&fp_tmp2,&tmp_B.x2,&tmp_B.x6);
      fp_sqr(&tmp19_fp,&fp_tmp1);   //1

      //fp_mul(&tmp19.5_fp,&fp_tmp1,&fp_tmp2);//x^2 = tmp5

      fp_add(&fp_tmp1,&fp_tmp1,&tmp_A.x3);
      //fp_add(&fp_tmp2,&fp_tmp2,&tmp_B.x3);
      fp_sqr(&tmp20_fp,&fp_tmp1);   //x

    //A(1+0)*B(1+0) Karatsuba trick * x^2

      fp_add(&fp_tmp1,&tmp_A.x0,&tmp_A.x4);
      fp_add(&fp_tmp1,&fp_tmp1,&tmp_A.x2);
      fp_add(&fp_tmp1,&fp_tmp1,&tmp_A.x6);
      // fp_add(&fp_tmp2,&tmp_B.x0,&tmp_B.x4);
      // fp_add(&fp_tmp2,&fp_tmp2,&tmp_B.x2);
      // fp_add(&fp_tmp2,&fp_tmp2,&tmp_B.x6);
      fp_sqr(&tmp21_fp,&fp_tmp1);   //1

      fp_add(&fp_tmp3,&tmp_A.x1,&tmp_A.x5);
      fp_add(&fp_tmp3,&fp_tmp3,&tmp_A.x3);
      // fp_add(&fp_tmp4,&tmp_B.x1,&tmp_B.x5);
      // fp_add(&fp_tmp4,&fp_tmp4,&tmp_B.x3);
      fp_sqr(&tmp22_fp,&fp_tmp3);   //x^2

      fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp3);
      //fp_add(&fp_tmp2,&fp_tmp2,&fp_tmp4);
      fp_sqr(&tmp23_fp,&fp_tmp1);   //x

    //1
    fp_add(&fp_tmp1,&tmp23_fp,&tmp16_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp17_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp19_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp7_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp8_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp3_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp6_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp9_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp13_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp1_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp2_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp21_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp22_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp18_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp20_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&ANS->x0,&fp_tmp1,&tmp1_fp);

    //x
    fp_add(&fp_tmp1,&tmp10_fp,&tmp22_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp19_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp2_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp17_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp8_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&ANS->x1,&fp_tmp1,&tmp3_fp);
    fp_sub(&ANS->x1,&ANS->x1,&tmp1_fp);
    fp_sub(&ANS->x1,&ANS->x1,&tmp2_fp);

    //x^2
    fp_add(&fp_tmp1,&tmp14_fp,&tmp20_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp6_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp10_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp19_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&ANS->x2,&fp_tmp1,&tmp2_fp);
    fp_add(&ANS->x2,&ANS->x2,&tmp7_fp);
    fp_sub(&ANS->x2,&ANS->x2,&tmp1_fp);
    fp_sub(&ANS->x2,&ANS->x2,&tmp4_fp);

    //x^3
    fp_add(&fp_tmp1,&tmp11_fp,&tmp15_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp14_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp13_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    
    fp_add(&ANS->x3,&fp_tmp1,&tmp9_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp1_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp2_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp4_fp);
    fp_add(&ANS->x3,&ANS->x3,&tmp5_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp7_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp8_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp3_fp);
    fp_sub(&ANS->x3,&ANS->x3,&tmp6_fp);

    //x^4
    fp_sub(&fp_tmp1,&tmp13_fp,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);

    fp_add(&fp_tmp2,&tmp8_fp,&tmp4_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp16_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp1_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp10_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp2_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp5_fp);
    fp_add(&ANS->x4,&fp_tmp1,&fp_tmp2);

    //x^5
    fp_mul_base(&fp_tmp1,&tmp12_fp);

    fp_add(&fp_tmp2,&tmp6_fp,&tmp18_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp1_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp2_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp10_fp);
    fp_add(&fp_tmp2,&fp_tmp2,&tmp11_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp3_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp4_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp5_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp16_fp);
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp17_fp);
    fp_sub(&ANS->x5,&fp_tmp2,&tmp14_fp);
    fp_add(&ANS->x5,&ANS->x5,&fp_tmp1);

    //x^6
    fp_add(&fp_tmp1,&tmp5_fp,&tmp17_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp21_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp14_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp1_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp13_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp2_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp7_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp15_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp16_fp);
    fp_sub(&ANS->x6,&fp_tmp1,&tmp19_fp);

  #endif


  #ifdef Mont22
    static fp_t tmp1_fp,tmp2_fp,tmp3_fp,tmp4_fp,tmp5_fp,tmp6_fp,tmp7_fp,tmp8_fp,tmp9_fp;
    static fp_t tmp10_fp,tmp11_fp,tmp12_fp,tmp13_fp,tmp14_fp,tmp15_fp,tmp16_fp,tmp17_fp,tmp18_fp,tmp19_fp;
    static fp_t tmp20_fp,tmp21_fp,tmp22_fp,tmp23_fp;
    static fp_t fp_tmp1,fp_tmp2,fp_tmp3,fp_tmp4,fp_tmp5,fp_tmp6,fp_tmp7,fp_tmp8,fp_tmp9;
    static fp_t fp_tmp10,fp_tmp11,fp_tmp12,fp_tmp13,fp_tmp14,fp_tmp15,fp_tmp16,fp_tmp17,fp_tmp18;

    //Peter L Montgomery Karatsuba like method
    //23
    fp_sqr(&tmp23_fp,&tmp_A.x6);//a6b6 = BX^5 - BX^4 + BX^3 + BX - 3B + 3X^6 -2X^5
    //22
    fp_sqr(&tmp22_fp,&tmp_A.x5);//a5b5 = -BX^4 + BX^3 -BX + B
    //21
    fp_sqr(&tmp21_fp,&tmp_A.x4);//a4b4 = BX^3 - BX^2 + BX -2B + 3X^6 - 3X^5 + X^4
    //20
    fp_sqr(&tmp20_fp,&tmp_A.x3);//a3b3 = C + 2BX^2 - BX -5B + 8X^6 -5X^5 -X^4 + 2X^3
    //19
    fp_sqr(&tmp19_fp,&tmp_A.x2);//a2b2 = BX - 3B + 3X^6 - 2X^5 + X^4 - X^3 + X^2
    //18
    fp_sqr(&tmp18_fp,&tmp_A.x1);//a1b1 = X^5 - X^4 + X^2 - X
    //17
    fp_sqr(&tmp17_fp,&tmp_A.x0);//a0b0 = -2B + 3X^6 - 3X^5 +X^4 + X^2 -X + 1
    //16
    fp_add(&fp_tmp2,&tmp_A.x5,&tmp_A.x6);//(a5+a6)
    fp_sqr(&tmp16_fp,&fp_tmp2);  //(a5+a6)(b5+b6) = BX^4 + BX^2 - 4B + 6X^6 - 5X^5 + X^3
    //15
    fp_sub(&fp_tmp1,&tmp_A.x4,&tmp_A.x6);//a4-a6
    fp_sqr(&tmp15_fp,&fp_tmp1);  //(a4-a6)(b4-b6) = -C - BX^3 + 3B - 5X^6 + 4X^5 - X^3
    //14
    fp_add(&fp_tmp3,&tmp_A.x3,&tmp_A.x5);//a3+a5
    fp_sqr(&tmp14_fp,&fp_tmp3); //(a3+a5)(b3+b5) = -BX^2 + BX - X^6 + X^5
    //13
    fp_sub(&fp_tmp5,&tmp_A.x2,&tmp_A.x6);//a2-a6
    fp_sqr(&tmp13_fp,&fp_tmp5); //(a2-a6)(b2-b6) = -BX + 2B - 2X^6 + X^5
    //12
    fp_add(&fp_tmp7,&tmp_A.x1,&tmp_A.x3);//a1+a3
    fp_sqr(&tmp12_fp,&fp_tmp7); //(a1+a3)(b1+b3) = B - X^6 + X^4 - X^3
    //11
    fp_sub(&fp_tmp9,&tmp_A.x0,&tmp_A.x4);//a0-a4
    fp_sqr(&tmp11_fp,&fp_tmp9); //(a0-a4)(b0-b4) = B - 2X^6 + 2X^5 - X^4
    //10
    fp_sub(&fp_tmp11,&tmp_A.x0,&tmp_A.x2);//a0-a2
    fp_sqr(&tmp10_fp,&fp_tmp11);//(a0-a2)(b0-b2) = -C -BX^2 + 4B - 5X^6 + 3X^5 - X^2
    //9
    fp_add(&fp_tmp13,&tmp_A.x0,&tmp_A.x1);//a0+a1
    fp_sqr(&tmp9_fp,&fp_tmp13); //(a0+a1)(b0+b1) = BX^2 - 5B + 6X^6 - 4X^5 + X^3 + X
    //7
    fp_sub(&fp_tmp15,&fp_tmp9,&fp_tmp11);//a2-a4
    fp_sub(&fp_tmp17,&fp_tmp7,&fp_tmp3);  //a1-a5
    fp_add(&fp_tmp15,&fp_tmp15,&fp_tmp17);//a1+a2-a4-a5
    fp_sqr(&tmp7_fp,&fp_tmp15);//(a1+a2-a4-a5)(b1+b2-b4-b5) = C + BX^2 - 3B + 4X^6 -3X^5 + X^3
    //6
    fp_sub(&fp_tmp15,&fp_tmp13,&fp_tmp1);//a0+a1-(a4-a6)
    fp_sub(&fp_tmp15,&fp_tmp15,&tmp_A.x3);//a0+a1-(a4-a6) - a3
    fp_sqr(&tmp6_fp,&fp_tmp15);//(a0+a1-(a4-a6) - a3)(b0+b1-(b4-b6) - b3) = -BX^2 + 2B - 2X^6 +X^5
    //5
    fp_sub(&fp_tmp15,&fp_tmp13,&fp_tmp7);//a0-a3
    fp_sub(&fp_tmp15,&fp_tmp15,&fp_tmp5);//a0-a3-(a2-a6)
    fp_add(&fp_tmp15,&fp_tmp15,&tmp_A.x5);//a0-a3-(a2-a6)+a5
    fp_sqr(&tmp5_fp,&fp_tmp15);//(a0-a3-(a2-a6)+a5)(a0-a3-(a2-a6)+b5) = B - 2X^6 + 2X^5 - X^3
    //4
    fp_sub(&fp_tmp15,&fp_tmp11,&fp_tmp1);      //a0-a2-a4+a6
    fp_sub(&fp_tmp15,&fp_tmp15,&tmp_A.x3);  //a0-a2-a4+a6-a3
    fp_sqr(&tmp4_fp,&fp_tmp15);    //(a0-a2-a4+a6-a3)(b0-b2-b4+b6-b3) = C + BX^2 - 4B + 6X^6 - 4X^5 +X^3
    //3
    fp_sub(&fp_tmp15,&fp_tmp9,&fp_tmp3);      //(a0-a4)-(a3+a5)
    fp_add(&fp_tmp15,&fp_tmp15,&tmp_A.x1);  //(a0-a4)-(a3+a5)+a1
    fp_sqr(&tmp3_fp,&fp_tmp15);    //((a0-a4)-(a3+a5)+a1)((b0-b4)-(b3+b5)+b1) = -C + 2B - 3X^6 + 2X^5 - X^3
    //2
    fp_add(&fp_tmp15,&fp_tmp7,&fp_tmp5);//a1+a3+a2-a6
    fp_sub(&fp_tmp15,&fp_tmp15,&tmp_A.x5);//a1+a3+a2-a6-a5
    fp_sqr(&tmp2_fp,&fp_tmp15);//(a1+a3+a2-a6-a5)(b1+b3+b2-b6-b5) = -C - BX^2 + 2B - 3X^6 + 2X^5
    //1
    fp_add(&fp_tmp15,&fp_tmp13,&fp_tmp3);//a0+a1+a3+a5
    fp_add(&fp_tmp15,&fp_tmp15,&tmp_A.x2);//a0+a1+a3+a5+a2
    fp_add(&fp_tmp15,&fp_tmp15,&tmp_A.x4);//a0+a1+a3+a5+a2+a4
    fp_add(&fp_tmp15,&fp_tmp15,&tmp_A.x6);//a0+a1+a3+a5+a2+a4+a6
    fp_sqr(&tmp1_fp,&fp_tmp15);//(a0+a1+a3+a5+a2+a4+a6)(b0+b1+b3+b5+b2+b4+b6) = B -X^6 +X^5
    //++//
    //.1
    fp_add(&fp_tmp1,&tmp1_fp,&tmp5_fp);
    fp_lshift_1(&fp_tmp2,&tmp2_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_lshift_1(&fp_tmp2,&tmp3_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp4_fp,4);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_lshift_1(&fp_tmp2,&tmp6_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp7_fp,3);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp9_fp,5);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp10_fp,4);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_lshift_1(&fp_tmp2,&tmp13_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp15_fp,3);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp16_fp,4);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_lshift_1(&fp_tmp2,&tmp17_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp19_fp,3);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp20_fp,5);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_lshift_1(&fp_tmp2,&tmp21_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp22_fp);
    fp_mul_ui(&fp_tmp2,&tmp23_fp,3);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&ANS->x0,&fp_tmp1,&tmp17_fp);

    //.X
    fp_sub(&fp_tmp1,&tmp14_fp,&tmp13_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp19_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp20_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp21_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp22_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp23_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp9_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp17_fp);
    fp_sub(&ANS->x1,&fp_tmp1,&tmp18_fp);

    //.X^2
    fp_sub(&fp_tmp1,&tmp4_fp,&tmp6_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp2_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp7_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp9_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp10_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp14_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp16_fp);
    fp_lshift_1(&fp_tmp2,&tmp20_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp21_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp10_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp17_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp18_fp);
    fp_add(&ANS->x2,&fp_tmp1,&tmp19_fp);

    //.X^3
    fp_sub(&fp_tmp1,&tmp21_fp,&tmp15_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp22_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp23_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp3_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp5_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp7_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp9_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp15_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp16_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp19_fp);
    fp_lshift_1(&fp_tmp2,&tmp20_fp);
    fp_add(&ANS->x3,&fp_tmp1,&fp_tmp2);

    //.X^4
    fp_sub(&fp_tmp1,&tmp16_fp,&tmp22_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp23_fp);
    fp_mul_base(&fp_tmp1,&fp_tmp1);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp17_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp18_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp19_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp20_fp);
    fp_add(&ANS->x4,&fp_tmp1,&tmp21_fp);

    //.X^5
    fp_mul_base(&fp_tmp1,&tmp23_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp1_fp);
    fp_lshift_1(&fp_tmp2,&tmp2_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_lshift_1(&fp_tmp2,&tmp3_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp4_fp,4);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_lshift_1(&fp_tmp2,&tmp5_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp6_fp);
    fp_mul_ui(&fp_tmp2,&tmp7_fp,3);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp9_fp,4);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp10_fp,3);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_lshift_1(&fp_tmp2,&tmp11_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp13_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp14_fp);
    fp_mul_ui(&fp_tmp2,&tmp15_fp,4);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp16_fp,5);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp17_fp,3);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp18_fp);
    fp_lshift_1(&fp_tmp2,&tmp19_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp20_fp,5);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp21_fp,3);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_lshift_1(&fp_tmp2,&tmp23_fp);
    fp_sub(&ANS->x5,&fp_tmp1,&fp_tmp2);

    //.X^6
    fp_set_ui(&fp_tmp1,0);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp1_fp);
    fp_mul_ui(&fp_tmp2,&tmp2_fp,3);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp3_fp,3);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp4_fp,6);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_lshift_1(&fp_tmp2,&tmp5_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_lshift_1(&fp_tmp2,&tmp6_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp7_fp,4);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp9_fp,6);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp10_fp,5);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_lshift_1(&fp_tmp2,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_lshift_1(&fp_tmp2,&tmp13_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp14_fp);
    fp_mul_ui(&fp_tmp2,&tmp15_fp,5);
    fp_sub(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp16_fp,6);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp17_fp,3);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp19_fp,3);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp20_fp,8);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp21_fp,3);
    fp_add(&fp_tmp1,&fp_tmp1,&fp_tmp2);
    fp_mul_ui(&fp_tmp2,&tmp23_fp,3);
    fp_add(&ANS->x6,&fp_tmp1,&fp_tmp2);

  #endif
}

  void fp7_sqr_lazy_montgomery(fp7_t *ANS,fp7_t *A){
    static fp7_t tmp_A,tmp_B;
    static fp_t tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp_sum;
    //school-book
    fp7_set(&tmp_A,A);

    //1
    fp_sqr(&tmp0,&tmp_A.x0);

    fp_mul(&tmp1,&tmp_A.x1,&tmp_A.x6);
    fp_add(&tmp1,&tmp1,&tmp1);
    fp_mul(&tmp2,&tmp_A.x2,&tmp_A.x5);
    fp_add(&tmp2,&tmp2,&tmp2);
    fp_mul(&tmp3,&tmp_A.x3,&tmp_A.x4);
    fp_add(&tmp3,&tmp3,&tmp3);
    //1 - sum B
    fp_add(&tmp_sum,&tmp1,&tmp2);
    fp_add(&tmp_sum,&tmp_sum,&tmp3);
    //1 - mul B
    fp_mul_base(&tmp_sum,&tmp_sum);
    //1 - add all
    fp_add(&ANS->x0,&tmp0,&tmp_sum);

    //x
    fp_mul(&tmp0,&tmp_A.x1,&tmp_A.x0);
    fp_add(&tmp0,&tmp0,&tmp0);

    fp_mul(&tmp1,&tmp_A.x2,&tmp_A.x6);
    fp_add(&tmp1,&tmp1,&tmp1);
    fp_mul(&tmp2,&tmp_A.x3,&tmp_A.x5);
    fp_add(&tmp2,&tmp2,&tmp2);
    fp_sqr(&tmp3,&tmp_A.x4);
    //x - sum B
    fp_add(&tmp_sum,&tmp1,&tmp2);
    fp_add(&tmp_sum,&tmp_sum,&tmp3);
    //x - mul B
    fp_mul_base(&tmp_sum,&tmp_sum);
    //x - add all
    fp_add(&ANS->x1,&tmp0,&tmp_sum);

    //x^2
    fp_mul(&tmp0,&tmp_A.x2,&tmp_A.x0);
    fp_add(&tmp0,&tmp0,&tmp0);
    fp_sqr(&tmp1,&tmp_A.x1);

    fp_mul(&tmp2,&tmp_A.x3,&tmp_A.x6);
    fp_add(&tmp2,&tmp2,&tmp2);
    fp_mul(&tmp3,&tmp_A.x4,&tmp_A.x5);
    fp_add(&tmp3,&tmp3,&tmp3);
    //x^2 - sum B
    fp_add(&tmp_sum,&tmp2,&tmp3);
    //x^2 - mul B
    fp_mul_base(&tmp_sum,&tmp_sum);
    //x^2 - add all
    fp_add(&ANS->x2,&tmp0,&tmp_sum);
    fp_add(&ANS->x2,&ANS->x2,&tmp1);

    //x^3
    fp_mul(&tmp0,&tmp_A.x0,&tmp_A.x3);
    fp_add(&tmp0,&tmp0,&tmp0);
    fp_mul(&tmp1,&tmp_A.x1,&tmp_A.x2);
    fp_add(&tmp1,&tmp1,&tmp1);

    fp_mul(&tmp2,&tmp_A.x4,&tmp_A.x6);
    fp_add(&tmp2,&tmp2,&tmp2);
    fp_sqr(&tmp3,&tmp_A.x5);
    //x^3 - sum B
    fp_add(&tmp_sum,&tmp2,&tmp3);
    //x^3 - mul B
    fp_mul_base(&tmp_sum,&tmp_sum);
    //x^3 - add all
    fp_add(&ANS->x3,&tmp0,&tmp_sum);
    fp_add(&ANS->x3,&ANS->x3,&tmp1);

    //x^4
    fp_mul(&tmp0,&tmp_A.x0,&tmp_A.x4);
    fp_add(&tmp0,&tmp0,&tmp0);
    fp_mul(&tmp1,&tmp_A.x1,&tmp_A.x3);
    fp_add(&tmp1,&tmp1,&tmp1);
    fp_sqr(&tmp2,&tmp_A.x2);

    fp_mul(&tmp3,&tmp_A.x5,&tmp_A.x6);
    fp_add(&tmp3,&tmp3,&tmp3);
    //x^4 - mul B
    fp_mul_base(&tmp3,&tmp3);
    //x^4 - add all
    fp_add(&ANS->x4,&tmp0,&tmp3);
    fp_add(&ANS->x4,&ANS->x4,&tmp1);
    fp_add(&ANS->x4,&ANS->x4,&tmp2);

    //x^5
    fp_mul(&tmp0,&tmp_A.x0,&tmp_A.x5);
    fp_add(&tmp0,&tmp0,&tmp0);
    fp_mul(&tmp1,&tmp_A.x1,&tmp_A.x4);
    fp_add(&tmp1,&tmp1,&tmp1);
    fp_mul(&tmp2,&tmp_A.x2,&tmp_A.x3);
    fp_add(&tmp2,&tmp2,&tmp2);

    fp_sqr(&tmp3,&tmp_A.x6);
    //x^5 - mul B
    fp_mul_base(&tmp3,&tmp3);
    //x^5 - add all
    fp_add(&ANS->x5,&tmp0,&tmp3);
    fp_add(&ANS->x5,&ANS->x5,&tmp1);
    fp_add(&ANS->x5,&ANS->x5,&tmp2);

    //x^6
    fp_mul(&tmp0,&tmp_A.x0,&tmp_A.x6);
    fp_add(&tmp0,&tmp0,&tmp0);
    fp_mul(&tmp1,&tmp_A.x1,&tmp_A.x5);
    fp_add(&tmp1,&tmp1,&tmp1);
    fp_mul(&tmp2,&tmp_A.x2,&tmp_A.x4);
    fp_add(&tmp2,&tmp2,&tmp2);
    fp_sqr(&tmp3,&tmp_A.x3);
    //x^5 - add all
    fp_add(&ANS->x6,&tmp0,&tmp1);
    fp_add(&ANS->x6,&ANS->x6,&tmp2);
    fp_add(&ANS->x6,&ANS->x6,&tmp3);
  }


void fp7_add(fp7_t *ANS,fp7_t *A,fp7_t *B){
  fp_add(&ANS->x0,&A->x0,&B->x0);
  fp_add(&ANS->x1,&A->x1,&B->x1);
  fp_add(&ANS->x2,&A->x2,&B->x2);
  fp_add(&ANS->x3,&A->x3,&B->x3);
  fp_add(&ANS->x4,&A->x4,&B->x4);
  fp_add(&ANS->x5,&A->x5,&B->x5);
  fp_add(&ANS->x6,&A->x6,&B->x6);
}

void fp7_add_nonmod_single(fp7_t *ANS,fp7_t *A,fp7_t *B){
  fp_add_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp_add_nonmod_single(&ANS->x1,&A->x1,&B->x1);
  fp_add_nonmod_single(&ANS->x2,&A->x2,&B->x2);
  fp_add_nonmod_single(&ANS->x3,&A->x3,&B->x3);
  fp_add_nonmod_single(&ANS->x4,&A->x4,&B->x4);
  fp_add_nonmod_single(&ANS->x5,&A->x5,&B->x5);
  fp_add_nonmod_single(&ANS->x6,&A->x6,&B->x6);
}

void fp7_add_nonmod_double(fpd7_t *ANS,fpd7_t *A,fpd7_t *B){
  fp_add_nonmod_double(&ANS->x0,&A->x0,&B->x0);
  fp_add_nonmod_double(&ANS->x1,&A->x1,&B->x1);
  fp_add_nonmod_double(&ANS->x2,&A->x2,&B->x2);
  fp_add_nonmod_double(&ANS->x3,&A->x3,&B->x3);
  fp_add_nonmod_double(&ANS->x4,&A->x4,&B->x4);
  fp_add_nonmod_double(&ANS->x5,&A->x5,&B->x5);
  fp_add_nonmod_double(&ANS->x6,&A->x6,&B->x6);
}

void fp7_add_ui(fp7_t *ANS,fp7_t *A,unsigned long int UI){
  fp_add_ui(&ANS->x0,&A->x0,UI);
  fp_set(&ANS->x1,&A->x1);
  fp_set(&ANS->x2,&A->x2);
  fp_set(&ANS->x3,&A->x3);
  fp_set(&ANS->x4,&A->x4);
  fp_set(&ANS->x5,&A->x5);
  fp_set(&ANS->x6,&A->x6);
}

void fp7_add_ui_ui(fp7_t *ANS,fp7_t *A,unsigned long int UI){
  fp_add_ui(&ANS->x0,&A->x0,UI);
  fp_add_ui(&ANS->x1,&A->x1,UI);
  fp_add_ui(&ANS->x2,&A->x2,UI);
  fp_add_ui(&ANS->x3,&A->x3,UI);
  fp_add_ui(&ANS->x4,&A->x4,UI);
  fp_add_ui(&ANS->x5,&A->x5,UI);
  fp_add_ui(&ANS->x6,&A->x6,UI);
}

void fp7_add_mpn(fp7_t *ANS,fp7_t *A,mp_limb_t *B){
  fp_add_mpn(&ANS->x0,&A->x0,B);
  fp_add_mpn(&ANS->x1,&A->x1,B);
  fp_add_mpn(&ANS->x2,&A->x2,B);
  fp_add_mpn(&ANS->x3,&A->x3,B);
  fp_add_mpn(&ANS->x4,&A->x4,B);
  fp_add_mpn(&ANS->x5,&A->x5,B);
  fp_add_mpn(&ANS->x6,&A->x6,B);
}

void fp7_sub(fp7_t *ANS,fp7_t *A,fp7_t *B){
  fp_sub(&ANS->x0,&A->x0,&B->x0);
  fp_sub(&ANS->x1,&A->x1,&B->x1);
  fp_sub(&ANS->x2,&A->x2,&B->x2);
  fp_sub(&ANS->x3,&A->x3,&B->x3);
  fp_sub(&ANS->x4,&A->x4,&B->x4);
  fp_sub(&ANS->x5,&A->x5,&B->x5);
  fp_sub(&ANS->x6,&A->x6,&B->x6);
}

void fp7_sub_nonmod_single(fp7_t *ANS,fp7_t *A,fp7_t *B){
  fp_sub_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp_sub_nonmod_single(&ANS->x1,&A->x1,&B->x1);
  fp_sub_nonmod_single(&ANS->x2,&A->x2,&B->x2);
  fp_sub_nonmod_single(&ANS->x3,&A->x3,&B->x3);
  fp_sub_nonmod_single(&ANS->x4,&A->x4,&B->x4);
  fp_sub_nonmod_single(&ANS->x5,&A->x5,&B->x5);
  fp_sub_nonmod_single(&ANS->x6,&A->x6,&B->x6);
}

void fp7_sub_nonmod_double(fpd7_t *ANS,fpd7_t *A,fpd7_t *B){
  fp_sub_nonmod_double(&ANS->x0,&A->x0,&B->x0);
  fp_sub_nonmod_double(&ANS->x1,&A->x1,&B->x1);
  fp_sub_nonmod_double(&ANS->x2,&A->x2,&B->x2);
  fp_sub_nonmod_double(&ANS->x3,&A->x3,&B->x3);
  fp_sub_nonmod_double(&ANS->x4,&A->x4,&B->x4);
  fp_sub_nonmod_double(&ANS->x5,&A->x5,&B->x5);
  fp_sub_nonmod_double(&ANS->x6,&A->x6,&B->x6);
}

void fp7_sub_ui(fp7_t *ANS,fp7_t *A,unsigned long int UI){
  fp_sub_ui(&ANS->x0,&A->x0,UI);
  fp_set(&ANS->x1,&A->x1);
  fp_set(&ANS->x2,&A->x2);
  fp_set(&ANS->x3,&A->x3);
  fp_set(&ANS->x4,&A->x4);
  fp_set(&ANS->x5,&A->x5);
  fp_set(&ANS->x6,&A->x6);
}

void fp7_sub_ui_ui(fp7_t *ANS,fp7_t *A,unsigned long int UI){
  fp_sub_ui(&ANS->x0,&A->x0,UI);
  fp_sub_ui(&ANS->x1,&A->x1,UI);
  fp_sub_ui(&ANS->x2,&A->x2,UI);
  fp_sub_ui(&ANS->x3,&A->x3,UI);
  fp_sub_ui(&ANS->x4,&A->x4,UI);
  fp_sub_ui(&ANS->x5,&A->x5,UI);
  fp_sub_ui(&ANS->x6,&A->x6,UI);
}

void fp7_sub_mpn(fp7_t *ANS,fp7_t *A,mp_limb_t *B){
  fp_sub_mpn(&ANS->x0,&A->x0,B);
  fp_sub_mpn(&ANS->x1,&A->x1,B);
  fp_sub_mpn(&ANS->x2,&A->x2,B);
  fp_sub_mpn(&ANS->x3,&A->x3,B);
  fp_sub_mpn(&ANS->x4,&A->x4,B);
  fp_sub_mpn(&ANS->x5,&A->x5,B);
  fp_sub_mpn(&ANS->x6,&A->x6,B);
}

void fp7_inv(fp7_t *ANS,fp7_t *A){  //do frobenius first
  static fp7_t tmp_A,tmp1,tmp2,tmp5;
  static fp_t tmp3,tmp4;

  //cal conjugate
  fp7_set(&tmp_A,A);
  //tmp1 = A^p * A^(p^2) *A^(p^3) *A^(p^4) *A^(p^5) *A^(p^6) から、
  //tmp1 = {A^p * A^(p^2) * A^(p^3)} * {A^p * A^(p^2) * A^(p^3)}^(p^3)
  fp7_frobenius_map_p1(&tmp1,&tmp_A);//A^p
  fp7_frobenius_map_p1(&tmp2,&tmp1);//A^(p^2)
  fp7_frobenius_map_p1(&tmp5,&tmp2);//A^(p^3)

  fp7_mul(&tmp1,&tmp1,&tmp2);//A^p * A^(p^2)
  fp7_mul(&tmp1,&tmp1,&tmp5);//A^p * A^(p^2) * A^(p^3)

  fp7_frobenius_map_p3(&tmp2,&tmp1);//{A^p * A^(p^2) * A^(p^3)}^(p^3) = A^(p^4) *A^(p^5) *A^(p^6)
  fp7_mul(&tmp1,&tmp1,&tmp2); // {A^p * A^(p^2) * A^(p^3)} * {A^p * A^(p^2) * A^(p^3)}^(p^3)

  //tmp2 = A * A^p * A^(p^2) * A^(p^3) * A^(p^4) * A^(p^5) * A^(p^6)
  //tmp2 = A * tmp1
  #if 0
  fp7_mul(&tmp2,&tmp1,&tmp_A);
  fp7_printf("fp7_inv",&tmp2);
  getchar();
  fp_inv(&tmp3,&tmp2.x0);
  #else//どうせ tmp2 = (s,0,0,0,0,0,0) となるので、基底1の係数だけ計算しても良い！！
  //基底1だけ求めるならkaratsubaよりschool_bookのほうが効率的な気がする！！
  //tmp3 = (a4b1 + a3b2 + a2b3 + a1b4)*base_c
  fp_mul(&tmp3,&tmp1.x1,&tmp_A.x6);
  fp_mul(&tmp4,&tmp1.x2,&tmp_A.x5);
  fp_add(&tmp3,&tmp3,&tmp4);
  fp_mul(&tmp4,&tmp1.x3,&tmp_A.x4);
  fp_add(&tmp3,&tmp3,&tmp4);
  fp_mul(&tmp4,&tmp1.x4,&tmp_A.x3);
  fp_add(&tmp3,&tmp3,&tmp4);
  fp_mul(&tmp4,&tmp1.x5,&tmp_A.x2);
  fp_add(&tmp3,&tmp3,&tmp4);
  fp_mul(&tmp4,&tmp1.x6,&tmp_A.x1);
  fp_add(&tmp3,&tmp3,&tmp4);
  fp_mul_base(&tmp3,&tmp3);
  //tmp3 = a0b0 + (a4b1 + a3b2 + a2b3 + a1b4)*base_c
  fp_mul(&tmp4,&tmp1.x0,&tmp_A.x0);
  fp_add(&tmp3,&tmp3,&tmp4);
  fp_inv(&tmp3,&tmp3);
  #endif

  fp_mul(&ANS->x0,&tmp1.x0,&tmp3);
  fp_mul(&ANS->x1,&tmp1.x1,&tmp3);
  fp_mul(&ANS->x2,&tmp1.x2,&tmp3);
  fp_mul(&ANS->x3,&tmp1.x3,&tmp3);
  fp_mul(&ANS->x4,&tmp1.x4,&tmp3);
  fp_mul(&ANS->x5,&tmp1.x5,&tmp3);
  fp_mul(&ANS->x6,&tmp1.x6,&tmp3);
}

void fp7_inv_lazy_montgomery(fp7_t *ANS,fp7_t *A){
  static fp7_t tmp_A,tmp1,tmp2,tmp5;
  static fp_t tmp3,tmp4;

  //cal conjugate
  fp7_set(&tmp_A,A);
  //tmp1 = A^p * A^(p^2) *A^(p^3) *A^(p^4) *A^(p^5) *A^(p^6) から、
  //tmp1 = {A^p * A^(p^2) * A^(p^3)} * {A^p * A^(p^2) * A^(p^3)}^(p^3)
  fp7_frobenius_map_p1(&tmp1,&tmp_A);//A^p
  fp7_frobenius_map_p1(&tmp2,&tmp1);//A^(p^2)
  fp7_frobenius_map_p1(&tmp5,&tmp2);//A^(p^3)

  fp7_mul(&tmp1,&tmp1,&tmp2);//A^p * A^(p^2)
  fp7_mul(&tmp1,&tmp1,&tmp5);//A^p * A^(p^2) * A^(p^3)

  fp7_frobenius_map_p3(&tmp2,&tmp1);//{A^p * A^(p^2) * A^(p^3)}^(p^3) = A^(p^4) *A^(p^5) *A^(p^6)
  fp7_mul(&tmp1,&tmp1,&tmp2); // {A^p * A^(p^2) * A^(p^3)} * {A^p * A^(p^2) * A^(p^3)}^(p^3)

  //tmp2 = A * A^p * A^(p^2) * A^(p^3) * A^(p^4) * A^(p^5) * A^(p^6)
  //tmp2 = A * tmp1
  #if 1
  fp7_mul(&tmp2,&tmp1,&tmp_A);
  fp7_printf("fp7_inv",&tmp2);
  getchar();
  fp_inv(&tmp3,&tmp2.x0);
  #else//どうせ tmp2 = (s,0,0,0,0,0,0) となるので、基底1の係数だけ計算しても良い！！
  //基底1だけ求めるならkaratsubaよりschool_bookのほうが効率的な気がする！！
  //tmp3 = (a4b1 + a3b2 + a2b3 + a1b4)*base_c
  fp_mul(&tmp3,&tmp1.x1,&tmp_A.x6);
  fp_mul(&tmp4,&tmp1.x2,&tmp_A.x5);
  fp_add(&tmp3,&tmp3,&tmp4);//here
  fp_mul(&tmp4,&tmp1.x3,&tmp_A.x4);
  fp_add(&tmp3,&tmp3,&tmp4);
  fp_mul(&tmp4,&tmp1.x4,&tmp_A.x3);
  fp_add(&tmp3,&tmp3,&tmp4);
  fp_mul(&tmp4,&tmp1.x5,&tmp_A.x2);
  fp_add(&tmp3,&tmp3,&tmp4);
  fp_mul(&tmp4,&tmp1.x6,&tmp_A.x1);
  fp_add(&tmp3,&tmp3,&tmp4);
  fp_mul_base(&tmp3,&tmp3);
  //tmp3 = a0b0 + (a4b1 + a3b2 + a2b3 + a1b4)*base_c
  fp_mul(&tmp4,&tmp1.x0,&tmp_A.x0);
  fp_add(&tmp3,&tmp3,&tmp4);
  fp_inv(&tmp3,&tmp3);
  #endif

  fp_mul(&ANS->x0,&tmp1.x0,&tmp3);
  fp_mul(&ANS->x1,&tmp1.x1,&tmp3);
  fp_mul(&ANS->x2,&tmp1.x2,&tmp3);
  fp_mul(&ANS->x3,&tmp1.x3,&tmp3);
  fp_mul(&ANS->x4,&tmp1.x4,&tmp3);
  fp_mul(&ANS->x5,&tmp1.x5,&tmp3);
  fp_mul(&ANS->x6,&tmp1.x6,&tmp3);

}

int fp7_legendre(fp7_t *A){
  fp7_t tmp;
  mpz_t expo;
  fp7_init(&tmp);
  mpz_init(expo);

  //(p^7 -1)/2 を計算
  mpz_pow_ui(expo,prime_z,7);
  mpz_sub_ui(expo,expo,1);
  mpz_tdiv_q_ui(expo,expo,2);
  fp7_pow(&tmp,A,expo);

  if(fp7_cmp_one(&tmp)==0){
    mpz_clear(expo);
    return 1;
  }
  else{
     mpz_clear(expo);
    return -1;
  }
}

void fp7_sqrt(fp7_t *ANS,fp7_t *A){
  fp7_t x,y,t,k,n,tmp;
  fp7_init(&x);
  fp7_init(&y);
  fp7_init(&t);
  fp7_init(&k);
  fp7_init(&n);
  fp7_init(&tmp);
  unsigned long int e,m;
  mpz_t exp,q,z,result;
  mpz_init(exp);
  mpz_init(q);
  mpz_init(z);
  mpz_init(result);
  //gmp_randstate_t state;
  //gmp_randinit_default(state);
  //gmp_randseed_ui(state,(unsigned long)time(NULL));

  fp7_set_random(&n,state);
  while(fp7_legendre(&n)!=-1){
    fp7_set_random(&n,state);
  }
  mpz_pow_ui(q,prime_z,7);
  mpz_sub_ui(q,q,1);
  mpz_mod_ui(result,q,2);
  e=0;
  while(mpz_cmp_ui(result,0)==0){
    mpz_tdiv_q_ui(q,q,2);
    mpz_mod_ui(result,q,2);
    e++;
  }
  fp7_pow(&y,&n,q);
  mpz_set_ui(z,e);
  mpz_sub_ui(exp,q,1);
  mpz_tdiv_q_ui(exp,exp,2);
  fp7_pow(&x,A,exp);
  fp7_mul(&tmp,&x,&x);
  fp7_mul(&k,&tmp,A);
  fp7_mul(&x,&x,A);
  while(fp7_cmp_one(&k)!=0){
    m=1;
    mpz_ui_pow_ui(exp,2,m);
    fp7_pow(&tmp,&k,exp);
    while(fp7_cmp_one(&tmp)!=0){
      m++;
      mpz_ui_pow_ui(exp,2,m);
      fp7_pow(&tmp,&k,exp);
    }
    mpz_sub_ui(exp,z,m);
    mpz_sub_ui(exp,exp,1);
    mpz_ui_pow_ui(result,2,mpz_get_ui(exp));
    fp7_pow(&t,&y,result);
    fp7_mul(&y,&t,&t);
    mpz_set_ui(z,m);
    fp7_mul(&x,&x,&t);
    fp7_mul(&k,&k,&y);
  }
  fp7_set(ANS,&x);

  mpz_clear(exp);
  mpz_clear(q);
  mpz_clear(z);
  mpz_clear(result);
}

void fp7_pow(fp7_t *ANS,fp7_t *A,mpz_t scalar){
  int i,length;
  length=(int)mpz_sizeinbase(scalar,2);
  char binary[length+1];
  mpz_get_str(binary,2,scalar);
  fp7_t tmp;
  fp7_init(&tmp);
  fp7_set(&tmp,A);

  for(i=1;i<length; i++){
    fp7_sqr(&tmp,&tmp);
    if(binary[i]=='1')  fp7_mul(&tmp,A,&tmp);
  }
  fp7_set(ANS,&tmp);
}

int fp7_cmp(fp7_t *A,fp7_t *B){
  if(fp_cmp(&A->x0,&B->x0)==0 && fp_cmp(&A->x1,&B->x1)==0 && fp_cmp(&A->x2,&B->x2)==0 && fp_cmp(&A->x3,&B->x3)==0 && fp_cmp(&A->x4,&B->x4)==0 && fp_cmp(&A->x5,&B->x5)==0 && fp_cmp(&A->x6,&B->x6)==0){
    return 0;
  }
  return 1;
}

int fp7_cmp_ui(fp7_t *A,unsigned long int UI){
  if(fp_cmp_ui(&A->x0,UI)==0 && fp_cmp_ui(&A->x1,UI)==0 && fp_cmp_ui(&A->x2,UI)==0 && fp_cmp_ui(&A->x3,UI)==0 && fp_cmp_ui(&A->x4,UI)==0 && fp_cmp_ui(&A->x5,UI)==0 && fp_cmp_ui(&A->x6,UI)==0){
    return 0;
  }
  return 1;
}

int fp7_cmp_mpn(fp7_t *A,mp_limb_t *B){
  if(fp_cmp_mpn(&A->x0,B)==0 && fp_cmp_mpn(&A->x1,B)==0 && fp_cmp_mpn(&A->x2,B)==0 && fp_cmp_mpn(&A->x3,B)==0 && fp_cmp_mpn(&A->x4,B)==0 && fp_cmp_mpn(&A->x5,B)==0 && fp_cmp_mpn(&A->x6,B)==0){
    return 0;
  }
  return 1;
}

int fp7_cmp_zero(fp7_t *A){
  if(fp_cmp_zero(&A->x0)==0 && fp_cmp_zero(&A->x1)==0 && fp_cmp_zero(&A->x2)==0 && fp_cmp_zero(&A->x3)==0 && fp_cmp_zero(&A->x4)==0 && fp_cmp_zero(&A->x5)==0 && fp_cmp_zero(&A->x6)==0){
    return 0;
  }
  return 1;
}

int fp7_cmp_one(fp7_t *A){
  if(fp_cmp_one(&A->x0)==0 && fp_cmp_zero(&A->x1)==0 && fp_cmp_zero(&A->x2)==0 && fp_cmp_zero(&A->x3)==0 && fp_cmp_zero(&A->x4)==0 && fp_cmp_zero(&A->x5)==0 && fp_cmp_zero(&A->x6)==0){
    return 0;
  }
  return 1;
}

int fp7_montgomery_trick_montgomery(fp7_t *A_inv,fp7_t *A,int n){
  int i;
  fp7_t ANS[n],ALL_inv;
  fp7_set(&ANS[0],&A[0]);
  fp7_t check;

  for(i=1;i<n;i++){
    fp7_mul_lazy_montgomery(&ANS[i],&ANS[i-1],&A[i]);
  }
  fp7_inv_lazy_montgomery(&ALL_inv,&ANS[n-1]);
  for(i=n-1;i>0;i--){
    fp7_mul_lazy_montgomery(&A_inv[i],&ALL_inv,&ANS[i-1]);
    fp7_mul_lazy_montgomery(&ALL_inv,&ALL_inv,&A[i]);
  }

  fp7_set(&A_inv[0],&ALL_inv);
  return 0;
}

void fp7_frobenius_map_p1(fp7_t *ANS,fp7_t *A){
  fp_set(&ANS->x0,&A->x0);
  fp_mul(&ANS->x1,&A->x1,&frobenius_2_14);
  fp_mul(&ANS->x2,&A->x2,&frobenius_4_14);
  fp_mul(&ANS->x3,&A->x3,&frobenius_6_14);
  fp_mul(&ANS->x4,&A->x4,&frobenius_8_14);
  fp_mul(&ANS->x5,&A->x5,&frobenius_10_14);
  fp_mul(&ANS->x6,&A->x6,&frobenius_12_14);
}

// void fp7_frobenius_map_p2(fp7_t *ANS,fp7_t *A){
//   fp_set(&ANS->x0,&A->x0);
//   fp_mul(&ANS->x1,&A->x1,&frobenius_4_14);
//   fp_mul(&ANS->x2,&A->x2,&frobenius_8_14);
//   fp_mul(&ANS->x3,&A->x3,&frobenius_12_14);
//   fp_mul(&ANS->x4,&A->x4,&frobenius_2_14);
//   fp_mul(&ANS->x5,&A->x5,&frobenius_6_14);
//   fp_mul(&ANS->x6,&A->x6,&frobenius_10_14);
// }

void fp7_frobenius_map_p3(fp7_t *ANS,fp7_t *A){
  fp_set(&ANS->x0,&A->x0);
  fp_mul(&ANS->x1,&A->x1,&frobenius_6_14);
  fp_mul(&ANS->x2,&A->x2,&frobenius_12_14);
  fp_mul(&ANS->x3,&A->x3,&frobenius_4_14);
  fp_mul(&ANS->x4,&A->x4,&frobenius_10_14);
  fp_mul(&ANS->x5,&A->x5,&frobenius_2_14);
  fp_mul(&ANS->x6,&A->x6,&frobenius_8_14);
}

// void fp7_frobenius_map_p4(fp7_t *ANS,fp7_t *A){
//   fp_set(&ANS->x0,&A->x0);
//   fp_mul(&ANS->x1,&A->x1,&frobenius_8_14);
//   fp_mul(&ANS->x2,&A->x2,&frobenius_2_14);
//   fp_mul(&ANS->x3,&A->x3,&frobenius_10_14);
//   fp_mul(&ANS->x4,&A->x4,&frobenius_4_14);
//   fp_mul(&ANS->x5,&A->x5,&frobenius_12_14);
//   fp_mul(&ANS->x6,&A->x6,&frobenius_6_14);
// }

// void fp7_frobenius_map_p5(fp7_t *ANS,fp7_t *A){
//   fp_set(&ANS->x0,&A->x0);
//   fp_mul(&ANS->x1,&A->x1,&frobenius_10_14);
//   fp_mul(&ANS->x2,&A->x2,&frobenius_6_14);
//   fp_mul(&ANS->x3,&A->x3,&frobenius_2_14);
//   fp_mul(&ANS->x4,&A->x4,&frobenius_12_14);
//   fp_mul(&ANS->x5,&A->x5,&frobenius_8_14);
//   fp_mul(&ANS->x6,&A->x6,&frobenius_4_14);
// }

void fp7_mul_base(fp7_t *ANS,fp7_t *A){
  static fp7_t tmp_A;
  fp7_set(&tmp_A,A);

  fp_mul_base(&ANS->x0,&tmp_A.x6);
  fp_set(&ANS->x1,&tmp_A.x0);
  fp_set(&ANS->x2,&tmp_A.x1);
  fp_set(&ANS->x3,&tmp_A.x2);
  fp_set(&ANS->x4,&tmp_A.x3);
  fp_set(&ANS->x5,&tmp_A.x4);
  fp_set(&ANS->x6,&tmp_A.x5);
}

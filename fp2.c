#include "fp2.h"

void fp2_init(fp2_t *A){
  fp_init(&A->x0);
  fp_init(&A->x1);
}

void fp2_printf(char *str,fp2_t *A){
  gmp_printf("%s(",str);
  fp_printf("",&A->x0);
  gmp_printf(",");
  fp_printf("",&A->x1);
  gmp_printf(")\n");
}

void fp2_println(char *str,fp2_t *A){
  gmp_printf("%s(",str);
  fp_printf("",&A->x0);
  gmp_printf(",");
  fp_printf("",&A->x1);
  gmp_printf(")\n");
}

void fpd2_println(char *str,fpd2_t *A){
  gmp_printf("%s(",str);
  fpd_printf("",&A->x0);
  gmp_printf(",");
  fpd_printf("",&A->x1);
  gmp_printf(")\n");

}

void fp2_printf_montgomery(char *str,fp2_t *A){
  gmp_printf("%s(",str);
  fp_printf_montgomery("",&A->x0);
  gmp_printf(",");
  fp_printf_montgomery("",&A->x1);
  gmp_printf(")");
}

void fp2_set(fp2_t *ANS,fp2_t *A){
  fp_set(&ANS->x0,&A->x0);
  fp_set(&ANS->x1,&A->x1);
}

void fp2_set_ui(fp2_t *ANS,unsigned long int UI){
  fp_set_ui(&ANS->x0,UI);
  fp_set_ui(&ANS->x1,0);
}

void fp2_set_ui_ui(fp2_t *ANS,unsigned long int UI){
  fp_set_ui(&ANS->x0,UI);
  fp_set_ui(&ANS->x1,UI);
}

void fp2_set_mpn(fp2_t *ANS,mp_limb_t *A){
  fp_set_mpn(&ANS->x0,A);
  fp_set_ui(&ANS->x1,0);
}

void fp2_set_neg(fp2_t *ANS,fp2_t *A){
  fp_set_neg(&ANS->x0,&A->x0);
  fp_set_neg(&ANS->x1,&A->x1);
}

void fp2_to_montgomery(fp2_t *ANS,fp2_t *A){
  fp_to_montgomery(&ANS->x0,&A->x0);
  fp_to_montgomery(&ANS->x1,&A->x1);
}

void fp2_mod_montgomery(fp2_t *ANS,fp2_t *A){
  fp_mod_montgomery(&ANS->x0,&A->x0);
  fp_mod_montgomery(&ANS->x1,&A->x1);
}

void fp2_mod_montgomery_double(fp2_t *ANS,fpd2_t *A){
  mpn_mod_montgomery(ANS->x0.x0,FPLIMB,A->x0.x0,FPLIMB2);
  mpn_mod_montgomery(ANS->x1.x0,FPLIMB,A->x1.x0,FPLIMB2);
}

void fp2_lshift_1(fp2_t *ANS,fp2_t *A){
  fp_lshift_1(&ANS->x0,&A->x0);
  fp_lshift_1(&ANS->x1,&A->x1);
}

void fp2_hlv(fp2_t *ANS,fp2_t *A){
  fp_hlv(&ANS->x0, &A->x0);
  fp_hlv(&ANS->x1, &A->x1);
}

void fp2_set_random(fp2_t *ANS,gmp_randstate_t state){
  fp_set_random(&ANS->x0,state);
  fp_set_random(&ANS->x1,state);
}

void fp2_mul(fp2_t *ANS,fp2_t *A,fp2_t *B){ 
  static fp2_t tmp_A,tmp_B;
  fp2_set(&tmp_A,A);
  fp2_set(&tmp_B,B);

  static fp_t tmp1_fp,tmp2_fp,tmp3_fp,tmp4_fp,tmp5_fp,tmp6_fp,tmp2_fp,tmp8_fp,tmp9_fp;
  fp_mul(&tmp1_fp,&tmp_A.x0,&tmp_B.x0); //ac
  fp_mul(&tmp2_fp,&tmp_A.x1,&tmp_B.x1); //bd

  fp_mul_base(&ANS->x0, &tmp2_fp);  //ab+bdΘ

  fp_add(&tmp3_fp,&tmp_A.x0,&tmp_A.x1);//a+b
  fp_add(&tmp4_fp,&tmp_B.x0,&tmp_B.x1);//c+d
  fp_mul(&tmp5_fp,&tmp3_fp,&tmp4_fp); //(a+b)(c+d)
  
  fp_sub(&tmp5_fp,&tmp5_fp,&tmp1_fp);//(a+b)(c+d) - ac
  fp_sub(&tmp5_fp,&tmp5_fp,&tmp2_fp);//(a+b)(c+d) - ac -bd

  fp2_add();

}

  void fp2_mul_lazy_montgomery(fp2_t *ANS,fp2_t *A,fp2_t *B){
  static fp2_t tmp_A,tmp_B;
  static fp_t tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp_sum;
  //school-book
  fp2_set(&tmp_A,A);
  fp2_set(&tmp_B,B);

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

void fp2_mul_ui(fp2_t *ANS,fp2_t *A,unsigned long int UI){
  fp_mul_ui(&ANS->x0,&A->x0,UI);
  fp_mul_ui(&ANS->x1,&A->x1,UI);
  fp_mul_ui(&ANS->x2,&A->x2,UI);
  fp_mul_ui(&ANS->x3,&A->x3,UI);
  fp_mul_ui(&ANS->x4,&A->x4,UI);
  fp_mul_ui(&ANS->x5,&A->x5,UI);
  fp_mul_ui(&ANS->x6,&A->x6,UI);
}

void fp2_mul_mpn(fp2_t *ANS,fp2_t *A,mp_limb_t *B){
  fp_mul_mpn(&ANS->x0,&A->x0,B);
  fp_mul_mpn(&ANS->x1,&A->x1,B);
  fp_mul_mpn(&ANS->x2,&A->x2,B);
  fp_mul_mpn(&ANS->x3,&A->x3,B);
  fp_mul_mpn(&ANS->x4,&A->x4,B);
  fp_mul_mpn(&ANS->x5,&A->x5,B);
  fp_mul_mpn(&ANS->x6,&A->x6,B);
}

void fp2_mul_mpn_montgomery(fp2_t *ANS,fp2_t *A,mp_limb_t *B){
  mpn_mulmod_montgomery(ANS->x0.x0,FPLIMB,A->x0.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x1.x0,FPLIMB,A->x1.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x2.x0,FPLIMB,A->x2.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x3.x0,FPLIMB,A->x3.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x4.x0,FPLIMB,A->x4.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x5.x0,FPLIMB,A->x5.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x6.x0,FPLIMB,A->x6.x0,FPLIMB,B,FPLIMB);
}

void fp2_sqr(fp2_t *ANS,fp2_t *A){
  static fp2_t tmp_A;
  fp2_set(&tmp_A,A);

  static fp_t tmp1_fp,tmp2_fp,tmp3_fp,tmp4_fp,tmp5_fp,tmp6_fp,tmp2_fp,tmp8_fp,tmp9_fp;
  static fp_t tmp10_fp,tmp11_fp,tmp12_fp,tmp13_fp,tmp14_fp,tmp15_fp,tmp16_fp,tmp12_fp,tmp18_fp,tmp19_fp;
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
      fp_sqr(&tmp2_fp,&fp_tmp1);   //1

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
      fp_sqr(&tmp12_fp,&fp_tmp3);   //x^2

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
    fp_add(&fp_tmp1,&fp_tmp1,&tmp12_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp19_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp2_fp);
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
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp12_fp);
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
    fp_add(&ANS->x2,&ANS->x2,&tmp2_fp);
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
    fp_sub(&ANS->x3,&ANS->x3,&tmp2_fp);
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
    fp_sub(&fp_tmp2,&fp_tmp2,&tmp12_fp);
    fp_sub(&ANS->x5,&fp_tmp2,&tmp14_fp);
    fp_add(&ANS->x5,&ANS->x5,&fp_tmp1);

    //x^6
    fp_add(&fp_tmp1,&tmp5_fp,&tmp12_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp21_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp14_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp1_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp4_fp);
    fp_add(&fp_tmp1,&fp_tmp1,&tmp13_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp2_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp2_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp11_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp15_fp);
    fp_sub(&fp_tmp1,&fp_tmp1,&tmp16_fp);
    fp_sub(&ANS->x6,&fp_tmp1,&tmp19_fp);

}

  void fp2_sqr_lazy_montgomery(fp2_t *ANS,fp2_t *A){
    static fp2_t tmp_A,tmp_B;
    static fp_t tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp_sum;
    //school-book
    fp2_set(&tmp_A,A);

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


void fp2_add(fp2_t *ANS,fp2_t *A,fp2_t *B){
  fp_add(&ANS->x0,&A->x0,&B->x0);
  fp_add(&ANS->x1,&A->x1,&B->x1);
  fp_add(&ANS->x2,&A->x2,&B->x2);
  fp_add(&ANS->x3,&A->x3,&B->x3);
  fp_add(&ANS->x4,&A->x4,&B->x4);
  fp_add(&ANS->x5,&A->x5,&B->x5);
  fp_add(&ANS->x6,&A->x6,&B->x6);
}

void fp2_add_nonmod_single(fp2_t *ANS,fp2_t *A,fp2_t *B){
  fp_add_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp_add_nonmod_single(&ANS->x1,&A->x1,&B->x1);
  fp_add_nonmod_single(&ANS->x2,&A->x2,&B->x2);
  fp_add_nonmod_single(&ANS->x3,&A->x3,&B->x3);
  fp_add_nonmod_single(&ANS->x4,&A->x4,&B->x4);
  fp_add_nonmod_single(&ANS->x5,&A->x5,&B->x5);
  fp_add_nonmod_single(&ANS->x6,&A->x6,&B->x6);
}

void fp2_add_nonmod_double(fpd2_t *ANS,fpd2_t *A,fpd2_t *B){
  fp_add_nonmod_double(&ANS->x0,&A->x0,&B->x0);
  fp_add_nonmod_double(&ANS->x1,&A->x1,&B->x1);
  fp_add_nonmod_double(&ANS->x2,&A->x2,&B->x2);
  fp_add_nonmod_double(&ANS->x3,&A->x3,&B->x3);
  fp_add_nonmod_double(&ANS->x4,&A->x4,&B->x4);
  fp_add_nonmod_double(&ANS->x5,&A->x5,&B->x5);
  fp_add_nonmod_double(&ANS->x6,&A->x6,&B->x6);
}

void fp2_add_ui(fp2_t *ANS,fp2_t *A,unsigned long int UI){
  fp_add_ui(&ANS->x0,&A->x0,UI);
  fp_set(&ANS->x1,&A->x1);
  fp_set(&ANS->x2,&A->x2);
  fp_set(&ANS->x3,&A->x3);
  fp_set(&ANS->x4,&A->x4);
  fp_set(&ANS->x5,&A->x5);
  fp_set(&ANS->x6,&A->x6);
}

void fp2_add_ui_ui(fp2_t *ANS,fp2_t *A,unsigned long int UI){
  fp_add_ui(&ANS->x0,&A->x0,UI);
  fp_add_ui(&ANS->x1,&A->x1,UI);
  fp_add_ui(&ANS->x2,&A->x2,UI);
  fp_add_ui(&ANS->x3,&A->x3,UI);
  fp_add_ui(&ANS->x4,&A->x4,UI);
  fp_add_ui(&ANS->x5,&A->x5,UI);
  fp_add_ui(&ANS->x6,&A->x6,UI);
}

void fp2_add_mpn(fp2_t *ANS,fp2_t *A,mp_limb_t *B){
  fp_add_mpn(&ANS->x0,&A->x0,B);
  fp_add_mpn(&ANS->x1,&A->x1,B);
  fp_add_mpn(&ANS->x2,&A->x2,B);
  fp_add_mpn(&ANS->x3,&A->x3,B);
  fp_add_mpn(&ANS->x4,&A->x4,B);
  fp_add_mpn(&ANS->x5,&A->x5,B);
  fp_add_mpn(&ANS->x6,&A->x6,B);
}

void fp2_sub(fp2_t *ANS,fp2_t *A,fp2_t *B){
  fp_sub(&ANS->x0,&A->x0,&B->x0);
  fp_sub(&ANS->x1,&A->x1,&B->x1);
  fp_sub(&ANS->x2,&A->x2,&B->x2);
  fp_sub(&ANS->x3,&A->x3,&B->x3);
  fp_sub(&ANS->x4,&A->x4,&B->x4);
  fp_sub(&ANS->x5,&A->x5,&B->x5);
  fp_sub(&ANS->x6,&A->x6,&B->x6);
}

void fp2_sub_nonmod_single(fp2_t *ANS,fp2_t *A,fp2_t *B){
  fp_sub_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp_sub_nonmod_single(&ANS->x1,&A->x1,&B->x1);
  fp_sub_nonmod_single(&ANS->x2,&A->x2,&B->x2);
  fp_sub_nonmod_single(&ANS->x3,&A->x3,&B->x3);
  fp_sub_nonmod_single(&ANS->x4,&A->x4,&B->x4);
  fp_sub_nonmod_single(&ANS->x5,&A->x5,&B->x5);
  fp_sub_nonmod_single(&ANS->x6,&A->x6,&B->x6);
}

void fp2_sub_nonmod_double(fpd2_t *ANS,fpd2_t *A,fpd2_t *B){
  fp_sub_nonmod_double(&ANS->x0,&A->x0,&B->x0);
  fp_sub_nonmod_double(&ANS->x1,&A->x1,&B->x1);
  fp_sub_nonmod_double(&ANS->x2,&A->x2,&B->x2);
  fp_sub_nonmod_double(&ANS->x3,&A->x3,&B->x3);
  fp_sub_nonmod_double(&ANS->x4,&A->x4,&B->x4);
  fp_sub_nonmod_double(&ANS->x5,&A->x5,&B->x5);
  fp_sub_nonmod_double(&ANS->x6,&A->x6,&B->x6);
}

void fp2_sub_ui(fp2_t *ANS,fp2_t *A,unsigned long int UI){
  fp_sub_ui(&ANS->x0,&A->x0,UI);
  fp_set(&ANS->x1,&A->x1);
  fp_set(&ANS->x2,&A->x2);
  fp_set(&ANS->x3,&A->x3);
  fp_set(&ANS->x4,&A->x4);
  fp_set(&ANS->x5,&A->x5);
  fp_set(&ANS->x6,&A->x6);
}

void fp2_sub_ui_ui(fp2_t *ANS,fp2_t *A,unsigned long int UI){
  fp_sub_ui(&ANS->x0,&A->x0,UI);
  fp_sub_ui(&ANS->x1,&A->x1,UI);
  fp_sub_ui(&ANS->x2,&A->x2,UI);
  fp_sub_ui(&ANS->x3,&A->x3,UI);
  fp_sub_ui(&ANS->x4,&A->x4,UI);
  fp_sub_ui(&ANS->x5,&A->x5,UI);
  fp_sub_ui(&ANS->x6,&A->x6,UI);
}

void fp2_sub_mpn(fp2_t *ANS,fp2_t *A,mp_limb_t *B){
  fp_sub_mpn(&ANS->x0,&A->x0,B);
  fp_sub_mpn(&ANS->x1,&A->x1,B);
  fp_sub_mpn(&ANS->x2,&A->x2,B);
  fp_sub_mpn(&ANS->x3,&A->x3,B);
  fp_sub_mpn(&ANS->x4,&A->x4,B);
  fp_sub_mpn(&ANS->x5,&A->x5,B);
  fp_sub_mpn(&ANS->x6,&A->x6,B);
}

void fp2_inv(fp2_t *ANS,fp2_t *A){  //do frobenius first
  static fp2_t tmp_A,tmp1,tmp2,tmp5;
  static fp_t tmp3,tmp4;

  //cal conjugate
  fp2_set(&tmp_A,A);
  //tmp1 = A^p * A^(p^2) *A^(p^3) *A^(p^4) *A^(p^5) *A^(p^6) から、
  //tmp1 = {A^p * A^(p^2) * A^(p^3)} * {A^p * A^(p^2) * A^(p^3)}^(p^3)
  fp2_frobenius_map_p1(&tmp1,&tmp_A);//A^p
  fp2_frobenius_map_p1(&tmp2,&tmp1);//A^(p^2)
  fp2_frobenius_map_p1(&tmp5,&tmp2);//A^(p^3)

  fp2_mul(&tmp1,&tmp1,&tmp2);//A^p * A^(p^2)
  fp2_mul(&tmp1,&tmp1,&tmp5);//A^p * A^(p^2) * A^(p^3)

  fp2_frobenius_map_p3(&tmp2,&tmp1);//{A^p * A^(p^2) * A^(p^3)}^(p^3) = A^(p^4) *A^(p^5) *A^(p^6)
  fp2_mul(&tmp1,&tmp1,&tmp2); // {A^p * A^(p^2) * A^(p^3)} * {A^p * A^(p^2) * A^(p^3)}^(p^3)

  //tmp2 = A * A^p * A^(p^2) * A^(p^3) * A^(p^4) * A^(p^5) * A^(p^6)
  //tmp2 = A * tmp1
  #if 0
  fp2_mul(&tmp2,&tmp1,&tmp_A);
  fp2_printf("fp2_inv",&tmp2);
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

void fp2_inv_lazy_montgomery(fp2_t *ANS,fp2_t *A){
  static fp2_t tmp_A,tmp1,tmp2,tmp5;
  static fp_t tmp3,tmp4;

  //cal conjugate
  fp2_set(&tmp_A,A);
  //tmp1 = A^p * A^(p^2) *A^(p^3) *A^(p^4) *A^(p^5) *A^(p^6) から、
  //tmp1 = {A^p * A^(p^2) * A^(p^3)} * {A^p * A^(p^2) * A^(p^3)}^(p^3)
  fp2_frobenius_map_p1(&tmp1,&tmp_A);//A^p
  fp2_frobenius_map_p1(&tmp2,&tmp1);//A^(p^2)
  fp2_frobenius_map_p1(&tmp5,&tmp2);//A^(p^3)

  fp2_mul(&tmp1,&tmp1,&tmp2);//A^p * A^(p^2)
  fp2_mul(&tmp1,&tmp1,&tmp5);//A^p * A^(p^2) * A^(p^3)

  fp2_frobenius_map_p3(&tmp2,&tmp1);//{A^p * A^(p^2) * A^(p^3)}^(p^3) = A^(p^4) *A^(p^5) *A^(p^6)
  fp2_mul(&tmp1,&tmp1,&tmp2); // {A^p * A^(p^2) * A^(p^3)} * {A^p * A^(p^2) * A^(p^3)}^(p^3)

  //tmp2 = A * A^p * A^(p^2) * A^(p^3) * A^(p^4) * A^(p^5) * A^(p^6)
  //tmp2 = A * tmp1
  #if 1
  fp2_mul(&tmp2,&tmp1,&tmp_A);
  fp2_printf("fp2_inv",&tmp2);
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

int fp2_legendre(fp2_t *A){
  fp2_t tmp;
  mpz_t expo;
  fp2_init(&tmp);
  mpz_init(expo);

  //(p^2 -1)/2 を計算
  mpz_pow_ui(expo,prime_z,2);
  mpz_sub_ui(expo,expo,1);
  mpz_tdiv_q_ui(expo,expo,2);
  fp2_pow(&tmp,A,expo);

  if(fp2_cmp_one(&tmp)==0){
    mpz_clear(expo);
    return 1;
  }
  else{
     mpz_clear(expo);
    return -1;
  }
}

void fp2_sqrt(fp2_t *ANS,fp2_t *A){
  fp2_t x,y,t,k,n,tmp;
  fp2_init(&x);
  fp2_init(&y);
  fp2_init(&t);
  fp2_init(&k);
  fp2_init(&n);
  fp2_init(&tmp);
  unsigned long int e,m;
  mpz_t exp,q,z,result;
  mpz_init(exp);
  mpz_init(q);
  mpz_init(z);
  mpz_init(result);
  //gmp_randstate_t state;
  //gmp_randinit_default(state);
  //gmp_randseed_ui(state,(unsigned long)time(NULL));

  fp2_set_random(&n,state);
  while(fp2_legendre(&n)!=-1){
    fp2_set_random(&n,state);
  }
  mpz_pow_ui(q,prime_z,2);
  mpz_sub_ui(q,q,1);
  mpz_mod_ui(result,q,2);
  e=0;
  while(mpz_cmp_ui(result,0)==0){
    mpz_tdiv_q_ui(q,q,2);
    mpz_mod_ui(result,q,2);
    e++;
  }
  fp2_pow(&y,&n,q);
  mpz_set_ui(z,e);
  mpz_sub_ui(exp,q,1);
  mpz_tdiv_q_ui(exp,exp,2);
  fp2_pow(&x,A,exp);
  fp2_mul(&tmp,&x,&x);
  fp2_mul(&k,&tmp,A);
  fp2_mul(&x,&x,A);
  while(fp2_cmp_one(&k)!=0){
    m=1;
    mpz_ui_pow_ui(exp,2,m);
    fp2_pow(&tmp,&k,exp);
    while(fp2_cmp_one(&tmp)!=0){
      m++;
      mpz_ui_pow_ui(exp,2,m);
      fp2_pow(&tmp,&k,exp);
    }
    mpz_sub_ui(exp,z,m);
    mpz_sub_ui(exp,exp,1);
    mpz_ui_pow_ui(result,2,mpz_get_ui(exp));
    fp2_pow(&t,&y,result);
    fp2_mul(&y,&t,&t);
    mpz_set_ui(z,m);
    fp2_mul(&x,&x,&t);
    fp2_mul(&k,&k,&y);
  }
  fp2_set(ANS,&x);

  mpz_clear(exp);
  mpz_clear(q);
  mpz_clear(z);
  mpz_clear(result);
}

void fp2_pow(fp2_t *ANS,fp2_t *A,mpz_t scalar){
  int i,length;
  length=(int)mpz_sizeinbase(scalar,2);
  char binary[length+1];
  mpz_get_str(binary,2,scalar);
  fp2_t tmp;
  fp2_init(&tmp);
  fp2_set(&tmp,A);

  for(i=1;i<length; i++){
    fp2_sqr(&tmp,&tmp);
    if(binary[i]=='1')  fp2_mul(&tmp,A,&tmp);
  }
  fp2_set(ANS,&tmp);
}

int fp2_cmp(fp2_t *A,fp2_t *B){
  if(fp_cmp(&A->x0,&B->x0)==0 && fp_cmp(&A->x1,&B->x1)==0 && fp_cmp(&A->x2,&B->x2)==0 && fp_cmp(&A->x3,&B->x3)==0 && fp_cmp(&A->x4,&B->x4)==0 && fp_cmp(&A->x5,&B->x5)==0 && fp_cmp(&A->x6,&B->x6)==0){
    return 0;
  }
  return 1;
}

int fp2_cmp_ui(fp2_t *A,unsigned long int UI){
  if(fp_cmp_ui(&A->x0,UI)==0 && fp_cmp_ui(&A->x1,UI)==0 && fp_cmp_ui(&A->x2,UI)==0 && fp_cmp_ui(&A->x3,UI)==0 && fp_cmp_ui(&A->x4,UI)==0 && fp_cmp_ui(&A->x5,UI)==0 && fp_cmp_ui(&A->x6,UI)==0){
    return 0;
  }
  return 1;
}

int fp2_cmp_mpn(fp2_t *A,mp_limb_t *B){
  if(fp_cmp_mpn(&A->x0,B)==0 && fp_cmp_mpn(&A->x1,B)==0 && fp_cmp_mpn(&A->x2,B)==0 && fp_cmp_mpn(&A->x3,B)==0 && fp_cmp_mpn(&A->x4,B)==0 && fp_cmp_mpn(&A->x5,B)==0 && fp_cmp_mpn(&A->x6,B)==0){
    return 0;
  }
  return 1;
}

int fp2_cmp_zero(fp2_t *A){
  if(fp_cmp_zero(&A->x0)==0 && fp_cmp_zero(&A->x1)==0 && fp_cmp_zero(&A->x2)==0 && fp_cmp_zero(&A->x3)==0 && fp_cmp_zero(&A->x4)==0 && fp_cmp_zero(&A->x5)==0 && fp_cmp_zero(&A->x6)==0){
    return 0;
  }
  return 1;
}

int fp2_cmp_one(fp2_t *A){
  if(fp_cmp_one(&A->x0)==0 && fp_cmp_zero(&A->x1)==0 && fp_cmp_zero(&A->x2)==0 && fp_cmp_zero(&A->x3)==0 && fp_cmp_zero(&A->x4)==0 && fp_cmp_zero(&A->x5)==0 && fp_cmp_zero(&A->x6)==0){
    return 0;
  }
  return 1;
}

int fp2_montgomery_trick_montgomery(fp2_t *A_inv,fp2_t *A,int n){
  int i;
  fp2_t ANS[n],ALL_inv;
  fp2_set(&ANS[0],&A[0]);
  fp2_t check;

  for(i=1;i<n;i++){
    fp2_mul_lazy_montgomery(&ANS[i],&ANS[i-1],&A[i]);
  }
  fp2_inv_lazy_montgomery(&ALL_inv,&ANS[n-1]);
  for(i=n-1;i>0;i--){
    fp2_mul_lazy_montgomery(&A_inv[i],&ALL_inv,&ANS[i-1]);
    fp2_mul_lazy_montgomery(&ALL_inv,&ALL_inv,&A[i]);
  }

  fp2_set(&A_inv[0],&ALL_inv);
  return 0;
}

void fp2_frobenius_map_p1(fp2_t *ANS,fp2_t *A){
  fp_set(&ANS->x0,&A->x0);
  fp_mul(&ANS->x1,&A->x1,&frobenius_2_14);
  fp_mul(&ANS->x2,&A->x2,&frobenius_4_14);
  fp_mul(&ANS->x3,&A->x3,&frobenius_6_14);
  fp_mul(&ANS->x4,&A->x4,&frobenius_8_14);
  fp_mul(&ANS->x5,&A->x5,&frobenius_10_14);
  fp_mul(&ANS->x6,&A->x6,&frobenius_12_14);
}

void fp2_frobenius_map_p3(fp2_t *ANS,fp2_t *A){
  fp_set(&ANS->x0,&A->x0);
  fp_mul(&ANS->x1,&A->x1,&frobenius_6_14);
  fp_mul(&ANS->x2,&A->x2,&frobenius_12_14);
  fp_mul(&ANS->x3,&A->x3,&frobenius_4_14);
  fp_mul(&ANS->x4,&A->x4,&frobenius_10_14);
  fp_mul(&ANS->x5,&A->x5,&frobenius_2_14);
  fp_mul(&ANS->x6,&A->x6,&frobenius_8_14);
}

void fp2_mul_base(fp2_t *ANS,fp2_t *A){
  static fp2_t tmp_A;
  fp2_set(&tmp_A,A);

  fp_mul_base(&ANS->x0,&tmp_A.x6);
  fp_set(&ANS->x1,&tmp_A.x0);
  fp_set(&ANS->x2,&tmp_A.x1);
  fp_set(&ANS->x3,&tmp_A.x2);
  fp_set(&ANS->x4,&tmp_A.x3);
  fp_set(&ANS->x5,&tmp_A.x4);
  fp_set(&ANS->x6,&tmp_A.x5);
}
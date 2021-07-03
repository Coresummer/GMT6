#include "fp5.h"

void fp5_init(fp5_t *A){
  fp_init(&A->x0);
  fp_init(&A->x1);
  fp_init(&A->x2);
  fp_init(&A->x3);
  fp_init(&A->x4);
}

void fp5_printf(std::string str ,fp5_t *A){
  gmp_printf("%s(",str);
  fp_printf("",&A->x0);
  gmp_printf(",");
  fp_printf("",&A->x1);
  gmp_printf(",");
  fp_printf("",&A->x2);
  gmp_printf(",");
  fp_printf("",&A->x3);
  gmp_printf(",");
  fp_printf("",&A->x4);
  gmp_printf(")");
}

void fp5_println(std::string str ,fp5_t *A){
  gmp_printf("%s(",str);
  fp_printf("",&A->x0);
  gmp_printf(",");
  fp_printf("",&A->x1);
  gmp_printf(",");
  fp_printf("",&A->x2);
  gmp_printf(",");
  fp_printf("",&A->x3);
  gmp_printf(",");
  fp_printf("",&A->x4);
  gmp_printf(")\n");
}

void fpd5_println(std::string str ,fpd5_t *A){
  gmp_printf("%s(",str);
  fpd_printf("",&A->x0);
  gmp_printf(",");
  fpd_printf("",&A->x1);
  gmp_printf(",");
  fpd_printf("",&A->x2);
  gmp_printf(",");
  fpd_printf("",&A->x3);
  gmp_printf(",");
  fpd_printf("",&A->x4);
  gmp_printf(")\n");
}

void fp5_printf_montgomery(std::string str ,fp5_t *A){
  gmp_printf("%s(",str);
  fp_printf_montgomery("",&A->x0);
  gmp_printf(",");
  fp_printf_montgomery("",&A->x1);
  gmp_printf(",");
  fp_printf_montgomery("",&A->x2);
  gmp_printf(",");
  fp_printf_montgomery("",&A->x3);
  gmp_printf(",");
  fp_printf_montgomery("",&A->x4);
  gmp_printf(")");
}

void fp5_set(fp5_t *ANS,fp5_t *A){
  fp_set(&ANS->x0,&A->x0);
  fp_set(&ANS->x1,&A->x1);
  fp_set(&ANS->x2,&A->x2);
  fp_set(&ANS->x3,&A->x3);
  fp_set(&ANS->x4,&A->x4);
}

void fp5_set_ui(fp5_t *ANS,unsigned long int UI){
  fp_set_ui(&ANS->x0,UI);
  fp_set_ui(&ANS->x1,0);
  fp_set_ui(&ANS->x2,0);
  fp_set_ui(&ANS->x3,0);
  fp_set_ui(&ANS->x4,0);
}

void fp5_set_ui_ui(fp5_t *ANS,unsigned long int UI){
  fp_set_ui(&ANS->x0,UI);
  fp_set_ui(&ANS->x1,UI);
  fp_set_ui(&ANS->x2,UI);
  fp_set_ui(&ANS->x3,UI);
  fp_set_ui(&ANS->x4,UI);
}

void fp5_set_mpn(fp5_t *ANS,mp_limb_t *A){
  fp_set_mpn(&ANS->x0,A);
  fp_set_ui(&ANS->x1,0);
  fp_set_ui(&ANS->x2,0);
  fp_set_ui(&ANS->x3,0);
  fp_set_ui(&ANS->x4,0);
}

void fp5_set_neg(fp5_t *ANS,fp5_t *A){
  fp_set_neg(&ANS->x0,&A->x0);
  fp_set_neg(&ANS->x1,&A->x1);
  fp_set_neg(&ANS->x2,&A->x2);
  fp_set_neg(&ANS->x3,&A->x3);
  fp_set_neg(&ANS->x4,&A->x4);
}

void fp5_to_montgomery(fp5_t *ANS,fp5_t *A){
  fp_to_montgomery(&ANS->x0,&A->x0);
  fp_to_montgomery(&ANS->x1,&A->x1);
  fp_to_montgomery(&ANS->x2,&A->x2);
  fp_to_montgomery(&ANS->x3,&A->x3);
  fp_to_montgomery(&ANS->x4,&A->x4);
}

void fp5_mod_montgomery(fp5_t *ANS,fp5_t *A){
  fp_mod_montgomery(&ANS->x0,&A->x0);
  fp_mod_montgomery(&ANS->x1,&A->x1);
  fp_mod_montgomery(&ANS->x2,&A->x2);
  fp_mod_montgomery(&ANS->x3,&A->x3);
  fp_mod_montgomery(&ANS->x4,&A->x4);
}

void fp5_mod_montgomery_double(fp5_t *ANS,fpd5_t *A){
  mpn_mod_montgomery(ANS->x0.x0,FPLIMB,A->x0.x0,FPLIMB2);
  mpn_mod_montgomery(ANS->x1.x0,FPLIMB,A->x1.x0,FPLIMB2);
  mpn_mod_montgomery(ANS->x2.x0,FPLIMB,A->x2.x0,FPLIMB2);
  mpn_mod_montgomery(ANS->x3.x0,FPLIMB,A->x3.x0,FPLIMB2);
  mpn_mod_montgomery(ANS->x4.x0,FPLIMB,A->x4.x0,FPLIMB2);
}

void fp5_lshift_1(fp5_t *ANS,fp5_t *A){
  fp_lshift_1(&ANS->x0,&A->x0);
  fp_lshift_1(&ANS->x1,&A->x1);
  fp_lshift_1(&ANS->x2,&A->x2);
  fp_lshift_1(&ANS->x3,&A->x3);
  fp_lshift_1(&ANS->x4,&A->x4);
}

void fp5_hlv(fp5_t *ANS,fp5_t *A){
  fp_hlv(&ANS->x0, &A->x0);
  fp_hlv(&ANS->x1, &A->x1);
  fp_hlv(&ANS->x2, &A->x2);
  fp_hlv(&ANS->x3, &A->x3);
  fp_hlv(&ANS->x4, &A->x4);
}

void fp5_set_random(fp5_t *ANS,gmp_randstate_t state){
  fp_set_random(&ANS->x0,state);
  fp_set_random(&ANS->x1,state);
  fp_set_random(&ANS->x2,state);
  fp_set_random(&ANS->x3,state);
  fp_set_random(&ANS->x4,state);
}

void fp5_mul(fp5_t *ANS,fp5_t *A,fp5_t *B){
  static fp5_t tmp_A,tmp_B;
  static fp_t tmp_a0,tmp_a1,tmp_a2,tmp_a3,tmp_a4,tmp_a5,tmp_a6,tmp_a7,tmp_a8,tmp_a9,tmp_a10;
  static fp_t tmp_b0,tmp_b1,tmp_b2,tmp_b3,tmp_b4,tmp_b5,tmp_b6,tmp_b7,tmp_b8,tmp_b9,tmp_b10;
  static fp_t tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8,tmp9,tmp10,tmp11,tmp12;
  //karatsuba
  fp5_set(&tmp_A,A);
  fp5_set(&tmp_B,B);

  //Aの前計算
  fp_add(&tmp_a0,&tmp_A.x0,&tmp_A.x1);
  fp_sub(&tmp_a1,&tmp_A.x0,&tmp_A.x4);
  fp_add(&tmp_a2,&tmp_A.x3,&tmp_A.x4);
  fp_sub(&tmp_a3,&tmp_a0,&tmp_a2);
  fp_add(&tmp_a4,&tmp_a0,&tmp_A.x2);
  fp_add(&tmp_a5,&tmp_A.x2,&tmp_a2);
  fp_add(&tmp_a6,&tmp_a0,&tmp_a5);
  fp_sub(&tmp_a7,&tmp_A.x0,&tmp_a5);
  fp_sub(&tmp_a8,&tmp_a4,&tmp_A.x4);
  fp_add(&tmp_a9,&tmp_a7,&tmp_A.x4);
  fp_sub(&tmp_a10,&tmp_a8,&tmp_A.x0);

  //Bの前計算
  fp_add(&tmp_b0,&tmp_B.x0,&tmp_B.x1);
  fp_sub(&tmp_b1,&tmp_B.x0,&tmp_B.x4);
  fp_add(&tmp_b2,&tmp_B.x3,&tmp_B.x4);
  fp_sub(&tmp_b3,&tmp_b0,&tmp_b2);
  fp_add(&tmp_b4,&tmp_b0,&tmp_B.x2);
  fp_add(&tmp_b5,&tmp_B.x2,&tmp_b2);
  fp_add(&tmp_b6,&tmp_b0,&tmp_b5);
  fp_sub(&tmp_b7,&tmp_B.x0,&tmp_b5);
  fp_sub(&tmp_b8,&tmp_b4,&tmp_B.x4);
  fp_add(&tmp_b9,&tmp_b7,&tmp_B.x4);
  fp_sub(&tmp_b10,&tmp_b8,&tmp_B.x0);

  fp_mul(&tmp0,&tmp_a6,&tmp_b6);
  fp_mul(&tmp1,&tmp_a7,&tmp_b7);
  fp_mul(&tmp2,&tmp_a8,&tmp_b8);
  fp_mul(&tmp3,&tmp_a3,&tmp_b3);
  fp_mul(&tmp4,&tmp_a9,&tmp_b9);
  fp_mul(&tmp5,&tmp_a10,&tmp_b10);
  fp_mul(&tmp6,&tmp_a2,&tmp_b2);
  fp_mul(&tmp7,&tmp_a0,&tmp_b0);
  fp_mul(&tmp8,&tmp_a1,&tmp_b1);
  fp_mul(&tmp9,&tmp_A.x4,&tmp_B.x4);
  fp_mul(&tmp10,&tmp_A.x3,&tmp_B.x3);
  fp_mul(&tmp11,&tmp_A.x1,&tmp_B.x1);
  fp_mul(&tmp12,&tmp_A.x0,&tmp_B.x0);


  //まとめられるところはまとめて前計算する
  fp_sub(&tmp_a0,&tmp10,&tmp4);
  fp_add(&tmp_a0,&tmp_a0,&tmp1);//a0 = t10 -t4 +t1
  fp_add(&tmp_a1,&tmp_a0,&tmp_a0);//a1 = 2(t10 -t4 +t1)
  fp_add(&tmp_a2,&tmp12,&tmp9);
  fp_sub(&tmp_a2,&tmp_a2,&tmp8);//a2 = t12 +t9 -t8
  fp_add(&tmp_a3,&tmp_a2,&tmp_a2);
  fp_add(&tmp_a3,&tmp_a3,&tmp_a2);//a3 = 3(t12 +t9 -t8)
  fp_sub(&tmp_a4,&tmp6,&tmp10);//a4 = t6 -t10
  fp_sub(&tmp_a5,&tmp11,&tmp5);
  fp_add(&tmp_a5,&tmp_a5,&tmp2);//a5 = t11 -t5 +t2
  fp_add(&tmp_a6,&tmp_a5,&tmp_a5);//a6 = 2(t11 -t5 +t2)
  fp_sub(&tmp_a7,&tmp3,&tmp2);
  fp_sub(&tmp_a7,&tmp_a7,&tmp1);//a7 = t3 -t2 -t1
  fp_add(&tmp_a8,&tmp_a7,&tmp_a7);//a8 = 2(t3 -t2 -t1)
  fp_add(&tmp_a9,&tmp3,&tmp0);//a9 = t3 +t0
  fp_sub(&tmp_a10,&tmp7,&tmp11);//a10 = t7 -t11

  //基底が1の係数(ひとつだけなので最後に足す)
  //基底がω^5の係数
  fp_sub(&tmp_b1,&tmp9,&tmp7);
  fp_sub(&tmp_b1,&tmp_b1,&tmp2);
  fp_add(&tmp_b1,&tmp_b1,&tmp_a9);
  fp_sub(&tmp_b1,&tmp_b1,&tmp_a1);
  fp_sub(&tmp_b1,&tmp_b1,&tmp_a3);

  //基底がωの係数
  fp_sub(&tmp_b2,&tmp_a10,&tmp12);
  //基底がω^6の係数
  fp_sub(&tmp_b3,&tmp_a2,&tmp_a4);
  fp_add(&tmp_b3,&tmp_b3,&tmp_a0);

  //基底がω^2の係数
  fp_sub(&tmp_b4,&tmp_a2,&tmp_a10);
  fp_add(&tmp_b4,&tmp_b4,&tmp_a5);
  //基底がω^7の係数
  fp_sub(&tmp_b5,&tmp_a4,&tmp9);

  //基底がω^3の係数
  fp_sub(&tmp_b6,&tmp12,&tmp6);
  fp_sub(&tmp_b6,&tmp_b6,&tmp1);
  fp_add(&tmp_b6,&tmp_b6,&tmp_a9);
  fp_sub(&tmp_b6,&tmp_b6,&tmp_a6);
  fp_sub(&tmp_b6,&tmp_b6,&tmp_a3);
  //基底がω^8の係数(ひとつだけなので最後に足す)

  //基底がω^4の係数
  fp_add(&tmp_b8,&tmp11,&tmp10);
  fp_sub(&tmp_b8,&tmp_b8,&tmp8);
  fp_add(&tmp_b8,&tmp_b8,&tmp7);
  fp_add(&tmp_b8,&tmp_b8,&tmp6);
  fp_sub(&tmp_b8,&tmp_b8,&tmp5);
  fp_sub(&tmp_b8,&tmp_b8,&tmp4);
  fp_sub(&tmp_b8,&tmp_b8,&tmp0);
  fp_sub(&tmp_b8,&tmp_b8,&tmp_a8);
  fp_add(&tmp_b8,&tmp_b8,&tmp_a3);


  //ω^5 = c
  fp_mul_base(&tmp_b1,&tmp_b1);
  fp_mul_base(&tmp_b3,&tmp_b3);
  fp_mul_base(&tmp_b5,&tmp_b5);
  fp_mul_base(&tmp_b7,&tmp9);

  fp_add(&ANS->x0,&tmp12,&tmp_b1);
  fp_add(&ANS->x1,&tmp_b2,&tmp_b3);
  fp_add(&ANS->x2,&tmp_b4,&tmp_b5);
  fp_add(&ANS->x3,&tmp_b6,&tmp_b7);
  fp_set(&ANS->x4,&tmp_b8);
}

void fp5_mul_lazy_montgomery(fp5_t *ANS,fp5_t *A,fp5_t *B){
  static fp5_t tmp_A,tmp_B;
  static fp_t tmp_a0,tmp_a1,tmp_a2,tmp_a3,tmp_a4,tmp_a5,tmp_a6,tmp_a7,tmp_a8,tmp_a9,tmp_a10;
  static fp_t tmp_b0,tmp_b1,tmp_b2,tmp_b3,tmp_b4,tmp_b5,tmp_b6,tmp_b7,tmp_b8,tmp_b9,tmp_b10;
  static fp_t tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8,tmp9,tmp10,tmp11,tmp12;
  //karatsuba
  fp5_set(&tmp_A,A);
  fp5_set(&tmp_B,B);

  //Aの前計算
  fp_add(&tmp_a0,&tmp_A.x0,&tmp_A.x1);
  fp_sub(&tmp_a1,&tmp_A.x0,&tmp_A.x4);
  fp_add(&tmp_a2,&tmp_A.x3,&tmp_A.x4);
  fp_sub(&tmp_a3,&tmp_a0,&tmp_a2);
  fp_add(&tmp_a4,&tmp_a0,&tmp_A.x2);
  fp_add(&tmp_a5,&tmp_A.x2,&tmp_a2);
  fp_add(&tmp_a6,&tmp_a0,&tmp_a5);
  fp_sub(&tmp_a7,&tmp_A.x0,&tmp_a5);
  fp_sub(&tmp_a8,&tmp_a4,&tmp_A.x4);
  fp_add(&tmp_a9,&tmp_a7,&tmp_A.x4);
  fp_sub(&tmp_a10,&tmp_a8,&tmp_A.x0);

  //Bの前計算
  fp_add(&tmp_b0,&tmp_B.x0,&tmp_B.x1);
  fp_sub(&tmp_b1,&tmp_B.x0,&tmp_B.x4);
  fp_add(&tmp_b2,&tmp_B.x3,&tmp_B.x4);
  fp_sub(&tmp_b3,&tmp_b0,&tmp_b2);
  fp_add(&tmp_b4,&tmp_b0,&tmp_B.x2);
  fp_add(&tmp_b5,&tmp_B.x2,&tmp_b2);
  fp_add(&tmp_b6,&tmp_b0,&tmp_b5);
  fp_sub(&tmp_b7,&tmp_B.x0,&tmp_b5);
  fp_sub(&tmp_b8,&tmp_b4,&tmp_B.x4);
  fp_add(&tmp_b9,&tmp_b7,&tmp_B.x4);
  fp_sub(&tmp_b10,&tmp_b8,&tmp_B.x0);

  fp_mul(&tmp0,&tmp_a6,&tmp_b6);
  fp_mul(&tmp1,&tmp_a7,&tmp_b7);
  fp_mul(&tmp2,&tmp_a8,&tmp_b8);
  fp_mul(&tmp3,&tmp_a3,&tmp_b3);
  fp_mul(&tmp4,&tmp_a9,&tmp_b9);
  fp_mul(&tmp5,&tmp_a10,&tmp_b10);
  fp_mul(&tmp6,&tmp_a2,&tmp_b2);
  fp_mul(&tmp7,&tmp_a0,&tmp_b0);
  fp_mul(&tmp8,&tmp_a1,&tmp_b1);
  fp_mul(&tmp9,&tmp_A.x4,&tmp_B.x4);
  fp_mul(&tmp10,&tmp_A.x3,&tmp_B.x3);
  fp_mul(&tmp11,&tmp_A.x1,&tmp_B.x1);
  fp_mul(&tmp12,&tmp_A.x0,&tmp_B.x0);


  //まとめられるところはまとめて前計算する
  fp_sub(&tmp_a0,&tmp10,&tmp4);
  fp_add(&tmp_a0,&tmp_a0,&tmp1);//a0 = t10 -t4 +t1
  fp_add(&tmp_a1,&tmp_a0,&tmp_a0);//a1 = 2(t10 -t4 +t1)
  fp_add(&tmp_a2,&tmp12,&tmp9);
  fp_sub(&tmp_a2,&tmp_a2,&tmp8);//a2 = t12 +t9 -t8
  fp_add(&tmp_a3,&tmp_a2,&tmp_a2);
  fp_add(&tmp_a3,&tmp_a3,&tmp_a2);//a3 = 3(t12 +t9 -t8)
  fp_sub(&tmp_a4,&tmp6,&tmp10);//a4 = t6 -t10
  fp_sub(&tmp_a5,&tmp11,&tmp5);
  fp_add(&tmp_a5,&tmp_a5,&tmp2);//a5 = t11 -t5 +t2
  fp_add(&tmp_a6,&tmp_a5,&tmp_a5);//a6 = 2(t11 -t5 +t2)
  fp_sub(&tmp_a7,&tmp3,&tmp2);
  fp_sub(&tmp_a7,&tmp_a7,&tmp1);//a7 = t3 -t2 -t1
  fp_add(&tmp_a8,&tmp_a7,&tmp_a7);//a8 = 2(t3 -t2 -t1)
  fp_add(&tmp_a9,&tmp3,&tmp0);//a9 = t3 +t0
  fp_sub(&tmp_a10,&tmp7,&tmp11);//a10 = t7 -t11

  //基底が1の係数(ひとつだけなので最後に足す)
  //基底がω^5の係数
  fp_sub(&tmp_b1,&tmp9,&tmp7);
  fp_sub(&tmp_b1,&tmp_b1,&tmp2);
  fp_add(&tmp_b1,&tmp_b1,&tmp_a9);
  fp_sub(&tmp_b1,&tmp_b1,&tmp_a1);
  fp_sub(&tmp_b1,&tmp_b1,&tmp_a3);

  //基底がωの係数
  fp_sub(&tmp_b2,&tmp_a10,&tmp12);
  //基底がω^6の係数
  fp_sub(&tmp_b3,&tmp_a2,&tmp_a4);
  fp_add(&tmp_b3,&tmp_b3,&tmp_a0);

  //基底がω^2の係数
  fp_sub(&tmp_b4,&tmp_a2,&tmp_a10);
  fp_add(&tmp_b4,&tmp_b4,&tmp_a5);
  //基底がω^7の係数
  fp_sub(&tmp_b5,&tmp_a4,&tmp9);

  //基底がω^3の係数
  fp_sub(&tmp_b6,&tmp12,&tmp6);
  fp_sub(&tmp_b6,&tmp_b6,&tmp1);
  fp_add(&tmp_b6,&tmp_b6,&tmp_a9);
  fp_sub(&tmp_b6,&tmp_b6,&tmp_a6);
  fp_sub(&tmp_b6,&tmp_b6,&tmp_a3);
  //基底がω^8の係数(ひとつだけなので最後に足す)

  //基底がω^4の係数
  fp_add(&tmp_b8,&tmp11,&tmp10);
  fp_sub(&tmp_b8,&tmp_b8,&tmp8);
  fp_add(&tmp_b8,&tmp_b8,&tmp7);
  fp_add(&tmp_b8,&tmp_b8,&tmp6);
  fp_sub(&tmp_b8,&tmp_b8,&tmp5);
  fp_sub(&tmp_b8,&tmp_b8,&tmp4);
  fp_sub(&tmp_b8,&tmp_b8,&tmp0);
  fp_sub(&tmp_b8,&tmp_b8,&tmp_a8);
  fp_add(&tmp_b8,&tmp_b8,&tmp_a3);


  //ω^5 = c
  fp_mul_base(&tmp_b1,&tmp_b1);
  fp_mul_base(&tmp_b3,&tmp_b3);
  fp_mul_base(&tmp_b5,&tmp_b5);
  fp_mul_base(&tmp_b7,&tmp9);

  fp_add(&ANS->x0,&tmp12,&tmp_b1);
  fp_add(&ANS->x1,&tmp_b2,&tmp_b3);
  fp_add(&ANS->x2,&tmp_b4,&tmp_b5);
  fp_add(&ANS->x3,&tmp_b6,&tmp_b7);
  fp_set(&ANS->x4,&tmp_b8);
}

void fp5_mul_nonmod_montgomery(fp5_t *ANS,fp5_t *A,fp5_t *B){
  static fp5_t tmp_A,tmp_B;
  static fp_t tmp_a0,tmp_a1,tmp_a2,tmp_a3,tmp_a4,tmp_a5,tmp_a6,tmp_a7,tmp_a8,tmp_a9,tmp_a10;
  static fp_t tmp_b0,tmp_b1,tmp_b2,tmp_b3,tmp_b4,tmp_b5,tmp_b6,tmp_b7,tmp_b8,tmp_b9,tmp_b10;
  static fp_t tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8,tmp9,tmp10,tmp11,tmp12;
  //karatsuba
  fp5_set(&tmp_A,A);
  fp5_set(&tmp_B,B);

  //Aの前計算
  fp_add(&tmp_a0,&tmp_A.x0,&tmp_A.x1);
  fp_sub(&tmp_a1,&tmp_A.x0,&tmp_A.x4);
  fp_add(&tmp_a2,&tmp_A.x3,&tmp_A.x4);
  fp_sub(&tmp_a3,&tmp_a0,&tmp_a2);
  fp_add(&tmp_a4,&tmp_a0,&tmp_A.x2);
  fp_add(&tmp_a5,&tmp_A.x2,&tmp_a2);
  fp_add(&tmp_a6,&tmp_a0,&tmp_a5);
  fp_sub(&tmp_a7,&tmp_A.x0,&tmp_a5);
  fp_sub(&tmp_a8,&tmp_a4,&tmp_A.x4);
  fp_add(&tmp_a9,&tmp_a7,&tmp_A.x4);
  fp_sub(&tmp_a10,&tmp_a8,&tmp_A.x0);

  //Bの前計算
  fp_add(&tmp_b0,&tmp_B.x0,&tmp_B.x1);
  fp_sub(&tmp_b1,&tmp_B.x0,&tmp_B.x4);
  fp_add(&tmp_b2,&tmp_B.x3,&tmp_B.x4);
  fp_sub(&tmp_b3,&tmp_b0,&tmp_b2);
  fp_add(&tmp_b4,&tmp_b0,&tmp_B.x2);
  fp_add(&tmp_b5,&tmp_B.x2,&tmp_b2);
  fp_add(&tmp_b6,&tmp_b0,&tmp_b5);
  fp_sub(&tmp_b7,&tmp_B.x0,&tmp_b5);
  fp_sub(&tmp_b8,&tmp_b4,&tmp_B.x4);
  fp_add(&tmp_b9,&tmp_b7,&tmp_B.x4);
  fp_sub(&tmp_b10,&tmp_b8,&tmp_B.x0);

  fp_mul(&tmp0,&tmp_a6,&tmp_b6);
  fp_mul(&tmp1,&tmp_a7,&tmp_b7);
  fp_mul(&tmp2,&tmp_a8,&tmp_b8);
  fp_mul(&tmp3,&tmp_a3,&tmp_b3);
  fp_mul(&tmp4,&tmp_a9,&tmp_b9);
  fp_mul(&tmp5,&tmp_a10,&tmp_b10);
  fp_mul(&tmp6,&tmp_a2,&tmp_b2);
  fp_mul(&tmp7,&tmp_a0,&tmp_b0);
  fp_mul(&tmp8,&tmp_a1,&tmp_b1);
  fp_mul(&tmp9,&tmp_A.x4,&tmp_B.x4);
  fp_mul(&tmp10,&tmp_A.x3,&tmp_B.x3);
  fp_mul(&tmp11,&tmp_A.x1,&tmp_B.x1);
  fp_mul(&tmp12,&tmp_A.x0,&tmp_B.x0);


  //まとめられるところはまとめて前計算する
  fp_sub(&tmp_a0,&tmp10,&tmp4);
  fp_add(&tmp_a0,&tmp_a0,&tmp1);//a0 = t10 -t4 +t1
  fp_add(&tmp_a1,&tmp_a0,&tmp_a0);//a1 = 2(t10 -t4 +t1)
  fp_add(&tmp_a2,&tmp12,&tmp9);
  fp_sub(&tmp_a2,&tmp_a2,&tmp8);//a2 = t12 +t9 -t8
  fp_add(&tmp_a3,&tmp_a2,&tmp_a2);
  fp_add(&tmp_a3,&tmp_a3,&tmp_a2);//a3 = 3(t12 +t9 -t8)
  fp_sub(&tmp_a4,&tmp6,&tmp10);//a4 = t6 -t10
  fp_sub(&tmp_a5,&tmp11,&tmp5);
  fp_add(&tmp_a5,&tmp_a5,&tmp2);//a5 = t11 -t5 +t2
  fp_add(&tmp_a6,&tmp_a5,&tmp_a5);//a6 = 2(t11 -t5 +t2)
  fp_sub(&tmp_a7,&tmp3,&tmp2);
  fp_sub(&tmp_a7,&tmp_a7,&tmp1);//a7 = t3 -t2 -t1
  fp_add(&tmp_a8,&tmp_a7,&tmp_a7);//a8 = 2(t3 -t2 -t1)
  fp_add(&tmp_a9,&tmp3,&tmp0);//a9 = t3 +t0
  fp_sub(&tmp_a10,&tmp7,&tmp11);//a10 = t7 -t11

  //基底が1の係数(ひとつだけなので最後に足す)
  //基底がω^5の係数
  fp_sub(&tmp_b1,&tmp9,&tmp7);
  fp_sub(&tmp_b1,&tmp_b1,&tmp2);
  fp_add(&tmp_b1,&tmp_b1,&tmp_a9);
  fp_sub(&tmp_b1,&tmp_b1,&tmp_a1);
  fp_sub(&tmp_b1,&tmp_b1,&tmp_a3);

  //基底がωの係数
  fp_sub(&tmp_b2,&tmp_a10,&tmp12);
  //基底がω^6の係数
  fp_sub(&tmp_b3,&tmp_a2,&tmp_a4);
  fp_add(&tmp_b3,&tmp_b3,&tmp_a0);

  //基底がω^2の係数
  fp_sub(&tmp_b4,&tmp_a2,&tmp_a10);
  fp_add(&tmp_b4,&tmp_b4,&tmp_a5);
  //基底がω^7の係数
  fp_sub(&tmp_b5,&tmp_a4,&tmp9);

  //基底がω^3の係数
  fp_sub(&tmp_b6,&tmp12,&tmp6);
  fp_sub(&tmp_b6,&tmp_b6,&tmp1);
  fp_add(&tmp_b6,&tmp_b6,&tmp_a9);
  fp_sub(&tmp_b6,&tmp_b6,&tmp_a6);
  fp_sub(&tmp_b6,&tmp_b6,&tmp_a3);
  //基底がω^8の係数(ひとつだけなので最後に足す)

  //基底がω^4の係数
  fp_add(&tmp_b8,&tmp11,&tmp10);
  fp_sub(&tmp_b8,&tmp_b8,&tmp8);
  fp_add(&tmp_b8,&tmp_b8,&tmp7);
  fp_add(&tmp_b8,&tmp_b8,&tmp6);
  fp_sub(&tmp_b8,&tmp_b8,&tmp5);
  fp_sub(&tmp_b8,&tmp_b8,&tmp4);
  fp_sub(&tmp_b8,&tmp_b8,&tmp0);
  fp_sub(&tmp_b8,&tmp_b8,&tmp_a8);
  fp_add(&tmp_b8,&tmp_b8,&tmp_a3);


  //ω^5 = c
  fp_mul_base(&tmp_b1,&tmp_b1);
  fp_mul_base(&tmp_b3,&tmp_b3);
  fp_mul_base(&tmp_b5,&tmp_b5);
  fp_mul_base(&tmp_b7,&tmp9);

  fp_add(&ANS->x0,&tmp12,&tmp_b1);
  fp_add(&ANS->x1,&tmp_b2,&tmp_b3);
  fp_add(&ANS->x2,&tmp_b4,&tmp_b5);
  fp_add(&ANS->x3,&tmp_b6,&tmp_b7);
  fp_set(&ANS->x4,&tmp_b8);
}

void fp5_mul_ui(fp5_t *ANS,fp5_t *A,unsigned long int UI){
  fp_mul_ui(&ANS->x0,&A->x0,UI);
  fp_mul_ui(&ANS->x1,&A->x1,UI);
  fp_mul_ui(&ANS->x2,&A->x2,UI);
  fp_mul_ui(&ANS->x3,&A->x3,UI);
  fp_mul_ui(&ANS->x4,&A->x4,UI);
}

void fp5_mul_mpn(fp5_t *ANS,fp5_t *A,mp_limb_t *B){
  fp_mul_mpn(&ANS->x0,&A->x0,B);
  fp_mul_mpn(&ANS->x1,&A->x1,B);
  fp_mul_mpn(&ANS->x2,&A->x2,B);
  fp_mul_mpn(&ANS->x3,&A->x3,B);
  fp_mul_mpn(&ANS->x4,&A->x4,B);
}

void fp5_mul_mpn_montgomery(fp5_t *ANS,fp5_t *A,mp_limb_t *B){
  mpn_mulmod_montgomery(ANS->x0.x0,FPLIMB,A->x0.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x1.x0,FPLIMB,A->x1.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x2.x0,FPLIMB,A->x2.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x3.x0,FPLIMB,A->x3.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x4.x0,FPLIMB,A->x4.x0,FPLIMB,B,FPLIMB);
}

void fp5_sqr(fp5_t *ANS,fp5_t *A){
  static fp5_t tmp_A,tmp_B;
  static fp_t tmp_a0,tmp_a1,tmp_a2,tmp_a3,tmp_a4,tmp_a5,tmp_a6,tmp_a7,tmp_a8,tmp_a9,tmp_a10;
  static fp_t tmp_b0,tmp_b1,tmp_b2,tmp_b3,tmp_b4,tmp_b5,tmp_b6,tmp_b7,tmp_b8,tmp_b9,tmp_b10;
  static fp_t tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8,tmp9,tmp10,tmp11,tmp12;
  //karatsuba
  fp5_set(&tmp_A,A);

  //Aの前計算
  fp_add(&tmp_a0,&tmp_A.x0,&tmp_A.x1);
  fp_sub(&tmp_a1,&tmp_A.x0,&tmp_A.x4);
  fp_add(&tmp_a2,&tmp_A.x3,&tmp_A.x4);
  fp_sub(&tmp_a3,&tmp_a0,&tmp_a2);
  fp_add(&tmp_a4,&tmp_a0,&tmp_A.x2);
  fp_add(&tmp_a5,&tmp_A.x2,&tmp_a2);
  fp_add(&tmp_a6,&tmp_a0,&tmp_a5);
  fp_sub(&tmp_a7,&tmp_A.x0,&tmp_a5);
  fp_sub(&tmp_a8,&tmp_a4,&tmp_A.x4);
  fp_add(&tmp_a9,&tmp_a7,&tmp_A.x4);
  fp_sub(&tmp_a10,&tmp_a8,&tmp_A.x0);

  fp_sqr(&tmp0,&tmp_a6);
  fp_sqr(&tmp1,&tmp_a7);
  fp_sqr(&tmp2,&tmp_a8);
  fp_sqr(&tmp3,&tmp_a3);
  fp_sqr(&tmp4,&tmp_a9);
  fp_sqr(&tmp5,&tmp_a10);
  fp_sqr(&tmp6,&tmp_a2);
  fp_sqr(&tmp7,&tmp_a0);
  fp_sqr(&tmp8,&tmp_a1);
  fp_sqr(&tmp9,&tmp_A.x4);
  fp_sqr(&tmp10,&tmp_A.x3);
  fp_sqr(&tmp11,&tmp_A.x1);
  fp_sqr(&tmp12,&tmp_A.x0);


  //まとめられるところはまとめて前計算する
  fp_sub(&tmp_a0,&tmp10,&tmp4);
  fp_add(&tmp_a0,&tmp_a0,&tmp1);//a0 = t10 -t4 +t1
  fp_add(&tmp_a1,&tmp_a0,&tmp_a0);//a1 = 2(t10 -t4 +t1)
  fp_add(&tmp_a2,&tmp12,&tmp9);
  fp_sub(&tmp_a2,&tmp_a2,&tmp8);//a2 = t12 +t9 -t8
  fp_add(&tmp_a3,&tmp_a2,&tmp_a2);
  fp_add(&tmp_a3,&tmp_a3,&tmp_a2);//a3 = 3(t12 +t9 -t8)
  fp_sub(&tmp_a4,&tmp6,&tmp10);//a4 = t6 -t10
  fp_sub(&tmp_a5,&tmp11,&tmp5);
  fp_add(&tmp_a5,&tmp_a5,&tmp2);//a5 = t11 -t5 +t2
  fp_add(&tmp_a6,&tmp_a5,&tmp_a5);//a6 = 2(t11 -t5 +t2)
  fp_sub(&tmp_a7,&tmp3,&tmp2);
  fp_sub(&tmp_a7,&tmp_a7,&tmp1);//a7 = t3 -t2 -t1
  fp_add(&tmp_a8,&tmp_a7,&tmp_a7);//a8 = 2(t3 -t2 -t1)
  fp_add(&tmp_a9,&tmp3,&tmp0);//a9 = t3 +t0
  fp_sub(&tmp_a10,&tmp7,&tmp11);//a10 = t7 -t11

  //基底が1の係数(ひとつだけなので最後に足す)
  //基底がω^5の係数
  fp_sub(&tmp_b1,&tmp9,&tmp7);
  fp_sub(&tmp_b1,&tmp_b1,&tmp2);
  fp_add(&tmp_b1,&tmp_b1,&tmp_a9);
  fp_sub(&tmp_b1,&tmp_b1,&tmp_a1);
  fp_sub(&tmp_b1,&tmp_b1,&tmp_a3);

  //基底がωの係数
  fp_sub(&tmp_b2,&tmp_a10,&tmp12);
  //基底がω^6の係数
  fp_sub(&tmp_b3,&tmp_a2,&tmp_a4);
  fp_add(&tmp_b3,&tmp_b3,&tmp_a0);

  //基底がω^2の係数
  fp_sub(&tmp_b4,&tmp_a2,&tmp_a10);
  fp_add(&tmp_b4,&tmp_b4,&tmp_a5);
  //基底がω^7の係数
  fp_sub(&tmp_b5,&tmp_a4,&tmp9);

  //基底がω^3の係数
  fp_sub(&tmp_b6,&tmp12,&tmp6);
  fp_sub(&tmp_b6,&tmp_b6,&tmp1);
  fp_add(&tmp_b6,&tmp_b6,&tmp_a9);
  fp_sub(&tmp_b6,&tmp_b6,&tmp_a6);
  fp_sub(&tmp_b6,&tmp_b6,&tmp_a3);
  //基底がω^8の係数(ひとつだけなので最後に足す)

  //基底がω^4の係数
  fp_add(&tmp_b8,&tmp11,&tmp10);
  fp_sub(&tmp_b8,&tmp_b8,&tmp8);
  fp_add(&tmp_b8,&tmp_b8,&tmp7);
  fp_add(&tmp_b8,&tmp_b8,&tmp6);
  fp_sub(&tmp_b8,&tmp_b8,&tmp5);
  fp_sub(&tmp_b8,&tmp_b8,&tmp4);
  fp_sub(&tmp_b8,&tmp_b8,&tmp0);
  fp_sub(&tmp_b8,&tmp_b8,&tmp_a8);
  fp_add(&tmp_b8,&tmp_b8,&tmp_a3);


  //ω^5 = c
  fp_mul_base(&tmp_b1,&tmp_b1);
  fp_mul_base(&tmp_b3,&tmp_b3);
  fp_mul_base(&tmp_b5,&tmp_b5);
  fp_mul_base(&tmp_b7,&tmp9);

  fp_add(&ANS->x0,&tmp12,&tmp_b1);
  fp_add(&ANS->x1,&tmp_b2,&tmp_b3);
  fp_add(&ANS->x2,&tmp_b4,&tmp_b5);
  fp_add(&ANS->x3,&tmp_b6,&tmp_b7);
  fp_set(&ANS->x4,&tmp_b8);
}

void fp5_sqr_lazy_montgomery(fp5_t *ANS,fp5_t *A){
  static fp5_t tmp_A,tmp_B;
  static fp_t tmp_a0,tmp_a1,tmp_a2,tmp_a3,tmp_a4,tmp_a5,tmp_a6,tmp_a7,tmp_a8,tmp_a9,tmp_a10;
  static fp_t tmp_b0,tmp_b1,tmp_b2,tmp_b3,tmp_b4,tmp_b5,tmp_b6,tmp_b7,tmp_b8,tmp_b9,tmp_b10;
  static fp_t tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8,tmp9,tmp10,tmp11,tmp12;
  //karatsuba
  fp5_set(&tmp_A,A);

  //Aの前計算
  fp_add(&tmp_a0,&tmp_A.x0,&tmp_A.x1);
  fp_sub(&tmp_a1,&tmp_A.x0,&tmp_A.x4);
  fp_add(&tmp_a2,&tmp_A.x3,&tmp_A.x4);
  fp_sub(&tmp_a3,&tmp_a0,&tmp_a2);
  fp_add(&tmp_a4,&tmp_a0,&tmp_A.x2);
  fp_add(&tmp_a5,&tmp_A.x2,&tmp_a2);
  fp_add(&tmp_a6,&tmp_a0,&tmp_a5);
  fp_sub(&tmp_a7,&tmp_A.x0,&tmp_a5);
  fp_sub(&tmp_a8,&tmp_a4,&tmp_A.x4);
  fp_add(&tmp_a9,&tmp_a7,&tmp_A.x4);
  fp_sub(&tmp_a10,&tmp_a8,&tmp_A.x0);

  fp_sqr(&tmp0,&tmp_a6);
  fp_sqr(&tmp1,&tmp_a7);
  fp_sqr(&tmp2,&tmp_a8);
  fp_sqr(&tmp3,&tmp_a3);
  fp_sqr(&tmp4,&tmp_a9);
  fp_sqr(&tmp5,&tmp_a10);
  fp_sqr(&tmp6,&tmp_a2);
  fp_sqr(&tmp7,&tmp_a0);
  fp_sqr(&tmp8,&tmp_a1);
  fp_sqr(&tmp9,&tmp_A.x4);
  fp_sqr(&tmp10,&tmp_A.x3);
  fp_sqr(&tmp11,&tmp_A.x1);
  fp_sqr(&tmp12,&tmp_A.x0);


  //まとめられるところはまとめて前計算する
  fp_sub(&tmp_a0,&tmp10,&tmp4);
  fp_add(&tmp_a0,&tmp_a0,&tmp1);//a0 = t10 -t4 +t1
  fp_add(&tmp_a1,&tmp_a0,&tmp_a0);//a1 = 2(t10 -t4 +t1)
  fp_add(&tmp_a2,&tmp12,&tmp9);
  fp_sub(&tmp_a2,&tmp_a2,&tmp8);//a2 = t12 +t9 -t8
  fp_add(&tmp_a3,&tmp_a2,&tmp_a2);
  fp_add(&tmp_a3,&tmp_a3,&tmp_a2);//a3 = 3(t12 +t9 -t8)
  fp_sub(&tmp_a4,&tmp6,&tmp10);//a4 = t6 -t10
  fp_sub(&tmp_a5,&tmp11,&tmp5);
  fp_add(&tmp_a5,&tmp_a5,&tmp2);//a5 = t11 -t5 +t2
  fp_add(&tmp_a6,&tmp_a5,&tmp_a5);//a6 = 2(t11 -t5 +t2)
  fp_sub(&tmp_a7,&tmp3,&tmp2);
  fp_sub(&tmp_a7,&tmp_a7,&tmp1);//a7 = t3 -t2 -t1
  fp_add(&tmp_a8,&tmp_a7,&tmp_a7);//a8 = 2(t3 -t2 -t1)
  fp_add(&tmp_a9,&tmp3,&tmp0);//a9 = t3 +t0
  fp_sub(&tmp_a10,&tmp7,&tmp11);//a10 = t7 -t11

  //基底が1の係数(ひとつだけなので最後に足す)
  //基底がω^5の係数
  fp_sub(&tmp_b1,&tmp9,&tmp7);
  fp_sub(&tmp_b1,&tmp_b1,&tmp2);
  fp_add(&tmp_b1,&tmp_b1,&tmp_a9);
  fp_sub(&tmp_b1,&tmp_b1,&tmp_a1);
  fp_sub(&tmp_b1,&tmp_b1,&tmp_a3);

  //基底がωの係数
  fp_sub(&tmp_b2,&tmp_a10,&tmp12);
  //基底がω^6の係数
  fp_sub(&tmp_b3,&tmp_a2,&tmp_a4);
  fp_add(&tmp_b3,&tmp_b3,&tmp_a0);

  //基底がω^2の係数
  fp_sub(&tmp_b4,&tmp_a2,&tmp_a10);
  fp_add(&tmp_b4,&tmp_b4,&tmp_a5);
  //基底がω^7の係数
  fp_sub(&tmp_b5,&tmp_a4,&tmp9);

  //基底がω^3の係数
  fp_sub(&tmp_b6,&tmp12,&tmp6);
  fp_sub(&tmp_b6,&tmp_b6,&tmp1);
  fp_add(&tmp_b6,&tmp_b6,&tmp_a9);
  fp_sub(&tmp_b6,&tmp_b6,&tmp_a6);
  fp_sub(&tmp_b6,&tmp_b6,&tmp_a3);
  //基底がω^8の係数(ひとつだけなので最後に足す)

  //基底がω^4の係数
  fp_add(&tmp_b8,&tmp11,&tmp10);
  fp_sub(&tmp_b8,&tmp_b8,&tmp8);
  fp_add(&tmp_b8,&tmp_b8,&tmp7);
  fp_add(&tmp_b8,&tmp_b8,&tmp6);
  fp_sub(&tmp_b8,&tmp_b8,&tmp5);
  fp_sub(&tmp_b8,&tmp_b8,&tmp4);
  fp_sub(&tmp_b8,&tmp_b8,&tmp0);
  fp_sub(&tmp_b8,&tmp_b8,&tmp_a8);
  fp_add(&tmp_b8,&tmp_b8,&tmp_a3);


  //ω^5 = c
  fp_mul_base(&tmp_b1,&tmp_b1);
  fp_mul_base(&tmp_b3,&tmp_b3);
  fp_mul_base(&tmp_b5,&tmp_b5);
  fp_mul_base(&tmp_b7,&tmp9);

  fp_add(&ANS->x0,&tmp12,&tmp_b1);
  fp_add(&ANS->x1,&tmp_b2,&tmp_b3);
  fp_add(&ANS->x2,&tmp_b4,&tmp_b5);
  fp_add(&ANS->x3,&tmp_b6,&tmp_b7);
  fp_set(&ANS->x4,&tmp_b8);
}

void fp5_add(fp5_t *ANS,fp5_t *A,fp5_t *B){
  fp_add(&ANS->x0,&A->x0,&B->x0);
  fp_add(&ANS->x1,&A->x1,&B->x1);
  fp_add(&ANS->x2,&A->x2,&B->x2);
  fp_add(&ANS->x3,&A->x3,&B->x3);
  fp_add(&ANS->x4,&A->x4,&B->x4);
}

void fp5_add_nonmod_single(fp5_t *ANS,fp5_t *A,fp5_t *B){
  fp_add_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp_add_nonmod_single(&ANS->x1,&A->x1,&B->x1);
  fp_add_nonmod_single(&ANS->x2,&A->x2,&B->x2);
  fp_add_nonmod_single(&ANS->x3,&A->x3,&B->x3);
  fp_add_nonmod_single(&ANS->x4,&A->x4,&B->x4);
}

void fp5_add_nonmod_double(fpd5_t *ANS,fpd5_t *A,fpd5_t *B){
  fp_add_nonmod_double(&ANS->x0,&A->x0,&B->x0);
  fp_add_nonmod_double(&ANS->x1,&A->x1,&B->x1);
  fp_add_nonmod_double(&ANS->x2,&A->x2,&B->x2);
  fp_add_nonmod_double(&ANS->x3,&A->x3,&B->x3);
  fp_add_nonmod_double(&ANS->x4,&A->x4,&B->x4);
}

void fp5_add_ui(fp5_t *ANS,fp5_t *A,unsigned long int UI){
  fp_add_ui(&ANS->x0,&A->x0,UI);
  fp_set(&ANS->x1,&A->x1);
  fp_set(&ANS->x2,&A->x2);
  fp_set(&ANS->x3,&A->x3);
  fp_set(&ANS->x4,&A->x4);
}

void fp5_add_ui_ui(fp5_t *ANS,fp5_t *A,unsigned long int UI){
  fp_add_ui(&ANS->x0,&A->x0,UI);
  fp_add_ui(&ANS->x1,&A->x1,UI);
  fp_add_ui(&ANS->x2,&A->x2,UI);
  fp_add_ui(&ANS->x3,&A->x3,UI);
  fp_add_ui(&ANS->x4,&A->x4,UI);
}

void fp5_add_mpn(fp5_t *ANS,fp5_t *A,mp_limb_t *B){
  fp_add_mpn(&ANS->x0,&A->x0,B);
  fp_add_mpn(&ANS->x1,&A->x1,B);
  fp_add_mpn(&ANS->x2,&A->x2,B);
  fp_add_mpn(&ANS->x3,&A->x3,B);
  fp_add_mpn(&ANS->x4,&A->x4,B);
}

void fp5_sub(fp5_t *ANS,fp5_t *A,fp5_t *B){
  fp_sub(&ANS->x0,&A->x0,&B->x0);
  fp_sub(&ANS->x1,&A->x1,&B->x1);
  fp_sub(&ANS->x2,&A->x2,&B->x2);
  fp_sub(&ANS->x3,&A->x3,&B->x3);
  fp_sub(&ANS->x4,&A->x4,&B->x4);
}

void fp5_sub_nonmod_single(fp5_t *ANS,fp5_t *A,fp5_t *B){
  fp_sub_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp_sub_nonmod_single(&ANS->x1,&A->x1,&B->x1);
  fp_sub_nonmod_single(&ANS->x2,&A->x2,&B->x2);
  fp_sub_nonmod_single(&ANS->x3,&A->x3,&B->x3);
  fp_sub_nonmod_single(&ANS->x4,&A->x4,&B->x4);
}

void fp5_sub_nonmod_double(fpd5_t *ANS,fpd5_t *A,fpd5_t *B){
  fp_sub_nonmod_double(&ANS->x0,&A->x0,&B->x0);
  fp_sub_nonmod_double(&ANS->x1,&A->x1,&B->x1);
  fp_sub_nonmod_double(&ANS->x2,&A->x2,&B->x2);
  fp_sub_nonmod_double(&ANS->x3,&A->x3,&B->x3);
  fp_sub_nonmod_double(&ANS->x4,&A->x4,&B->x4);
}

void fp5_sub_ui(fp5_t *ANS,fp5_t *A,unsigned long int UI){
  fp_sub_ui(&ANS->x0,&A->x0,UI);
  fp_set(&ANS->x1,&A->x1);
  fp_set(&ANS->x2,&A->x2);
  fp_set(&ANS->x3,&A->x3);
  fp_set(&ANS->x4,&A->x4);
}

void fp5_sub_ui_ui(fp5_t *ANS,fp5_t *A,unsigned long int UI){
  fp_sub_ui(&ANS->x0,&A->x0,UI);
  fp_sub_ui(&ANS->x1,&A->x1,UI);
  fp_sub_ui(&ANS->x2,&A->x2,UI);
  fp_sub_ui(&ANS->x3,&A->x3,UI);
  fp_sub_ui(&ANS->x4,&A->x4,UI);
}

void fp5_sub_mpn(fp5_t *ANS,fp5_t *A,mp_limb_t *B){
  fp_sub_mpn(&ANS->x0,&A->x0,B);
  fp_sub_mpn(&ANS->x1,&A->x1,B);
  fp_sub_mpn(&ANS->x2,&A->x2,B);
  fp_sub_mpn(&ANS->x3,&A->x3,B);
  fp_sub_mpn(&ANS->x4,&A->x4,B);
}

void fp5_inv(fp5_t *ANS,fp5_t *A){
  static fp5_t tmp_A,tmp1,tmp2;
  static fp_t tmp3,tmp4;

  fp5_set(&tmp_A,A);
  //tmp1 = A^p * A^(p^2) *A^(p^3) *A^(p^4) から、
  //tmp1 = {A^p * A^(p^2)} * {A^p * A^(p^2)}^(p^2)
  fp5_frobenius_map_p1(&tmp1,&tmp_A);//A^p
  fp5_frobenius_map_p1(&tmp2,&tmp1);//A^(p^2)
  fp5_mul(&tmp1,&tmp1,&tmp2);//A^p * A^(p^2)
  fp5_frobenius_map_p2(&tmp2,&tmp1);//{A^p * A^(p^2)}^(p^2)
  fp5_mul(&tmp1,&tmp1,&tmp2);

  //tmp2 = A * A^p * A^(p^2) *A^(p^3) *A^(p^4)
  //tmp2 = A * tmp1
  #if 0
  fp5_mul(&tmp2,&tmp1,&tmp_A);
  fp_inv(&tmp3,&tmp2.x0);
  #else//どうせ tmp2 = (s,0,0,0,0) となるので、基底1の係数だけ計算しても良い！！
  //基底1だけ求めるならkaratsubaよりschool_bookのほうが効率的な気がする！！
  //tmp3 = (a4b1 + a3b2 + a2b3 + a1b4)*base_c
  fp_mul(&tmp3,&tmp1.x4,&tmp_A.x1);
  fp_mul(&tmp4,&tmp1.x3,&tmp_A.x2);
  fp_add(&tmp3,&tmp3,&tmp4);
  fp_mul(&tmp4,&tmp1.x2,&tmp_A.x3);
  fp_add(&tmp3,&tmp3,&tmp4);
  fp_mul(&tmp4,&tmp1.x1,&tmp_A.x4);
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
}

void fp5_inv_lazy_montgomery(fp5_t *ANS,fp5_t *A){

}

int fp5_legendre(fp5_t *A){
  fp5_t tmp;
  mpz_t expo;
  fp5_init(&tmp);
  mpz_init(expo);

  //(p^5 -1)/2 を計算
  mpz_pow_ui(expo,prime_z,5);
  mpz_sub_ui(expo,expo,1);
  mpz_tdiv_q_ui(expo,expo,2);
  fp5_pow(&tmp,A,expo);

  if(fp5_cmp_one(&tmp)==0){
    mpz_clear(expo);
    return 1;
  }
  else{
    mpz_clear(expo);
    return -1;
  }
}

void fp5_sqrt(fp5_t *ANS,fp5_t *A){
  fp5_t x,y,t,k,n,tmp;
  fp5_init(&x);
  fp5_init(&y);
  fp5_init(&t);
  fp5_init(&k);
  fp5_init(&n);
  fp5_init(&tmp);
  unsigned long int e,m;
  mpz_t exp,q,z,result;
  mpz_init(exp);
  mpz_init(q);
  mpz_init(z);
  mpz_init(result);
  //gmp_randstate_t state;
  //gmp_randinit_default(state);
  //gmp_randseed_ui(state,(unsigned long)time(NULL));

  fp5_set_random(&n,state);
  while(fp5_legendre(&n)!=-1){
    fp5_set_random(&n,state);
  }
  mpz_pow_ui(q,prime_z,5);
  mpz_sub_ui(q,q,1);
  mpz_mod_ui(result,q,2);
  e=0;
  while(mpz_cmp_ui(result,0)==0){
    mpz_tdiv_q_ui(q,q,2);
    mpz_mod_ui(result,q,2);
    e++;
  }
  fp5_pow(&y,&n,q);
  mpz_set_ui(z,e);
  mpz_sub_ui(exp,q,1);
  mpz_tdiv_q_ui(exp,exp,2);
  fp5_pow(&x,A,exp);
  fp5_mul(&tmp,&x,&x);
  fp5_mul(&k,&tmp,A);
  fp5_mul(&x,&x,A);
  while(fp5_cmp_one(&k)!=0){
    m=1;
    mpz_ui_pow_ui(exp,2,m);
    fp5_pow(&tmp,&k,exp);
    while(fp5_cmp_one(&tmp)!=0){
      m++;
      mpz_ui_pow_ui(exp,2,m);
      fp5_pow(&tmp,&k,exp);
    }
    mpz_sub_ui(exp,z,m);
    mpz_sub_ui(exp,exp,1);
    mpz_ui_pow_ui(result,2,mpz_get_ui(exp));
    fp5_pow(&t,&y,result);
    fp5_mul(&y,&t,&t);
    mpz_set_ui(z,m);
    fp5_mul(&x,&x,&t);
    fp5_mul(&k,&k,&y);
  }
  fp5_set(ANS,&x);

  mpz_clear(exp);
  mpz_clear(q);
  mpz_clear(z);
  mpz_clear(result);
}

void fp5_pow(fp5_t *ANS,fp5_t *A,mpz_t scalar){
  int i,length;
  length=(int)mpz_sizeinbase(scalar,2);
  char binary[length+1];
  mpz_get_str(binary,2,scalar);
  fp5_t tmp;
  fp5_init(&tmp);
  fp5_set(&tmp,A);

  for(i=1;i<length; i++){
    fp5_sqr(&tmp,&tmp);
    if(binary[i]=='1')  fp5_mul(&tmp,A,&tmp);
  }
  fp5_set(ANS,&tmp);
}

int fp5_cmp(fp5_t *A,fp5_t *B){
  if(fp_cmp(&A->x0,&B->x0)==0 && fp_cmp(&A->x1,&B->x1)==0 && fp_cmp(&A->x2,&B->x2)==0 && fp_cmp(&A->x3,&B->x3)==0 && fp_cmp(&A->x4,&B->x4)==0){
    return 0;
  }
  return 1;
}

int fp5_cmp_ui(fp5_t *A,unsigned long int UI){
  if(fp_cmp_ui(&A->x0,UI)==0 && fp_cmp_ui(&A->x1,UI)==0 && fp_cmp_ui(&A->x2,UI)==0 && fp_cmp_ui(&A->x3,UI)==0 && fp_cmp_ui(&A->x4,UI)==0){
    return 0;
  }
  return 1;
}

int fp5_cmp_mpn(fp5_t *A,mp_limb_t *B){
  if(fp_cmp_mpn(&A->x0,B)==0 && fp_cmp_mpn(&A->x1,B)==0 && fp_cmp_mpn(&A->x2,B)==0 && fp_cmp_mpn(&A->x3,B)==0 && fp_cmp_mpn(&A->x4,B)==0){
    return 0;
  }
  return 1;
}

int fp5_cmp_zero(fp5_t *A){
  if(fp_cmp_zero(&A->x0)==0 && fp_cmp_zero(&A->x1)==0 && fp_cmp_zero(&A->x2)==0 && fp_cmp_zero(&A->x3)==0 && fp_cmp_zero(&A->x4)==0){
    return 0;
  }
  return 1;
}

int fp5_cmp_one(fp5_t *A){
  if(fp_cmp_one(&A->x0)==0 && fp_cmp_zero(&A->x1)==0 && fp_cmp_zero(&A->x2)==0 && fp_cmp_zero(&A->x3)==0 && fp_cmp_zero(&A->x4)==0){
    return 0;
  }
  return 1;
}

int fp5_montgomery_trick_montgomery(fp5_t *A_inv,fp5_t *A,int n){
  int i;
  fp5_t ANS[n],ALL_inv;
  fp5_set(&ANS[0],&A[0]);
  fp5_t check;

  for(i=1;i<n;i++){
    fp5_mul_lazy_montgomery(&ANS[i],&ANS[i-1],&A[i]);
  }
  fp5_inv_lazy_montgomery(&ALL_inv,&ANS[n-1]);
  for(i=n-1;i>0;i--){
    fp5_mul_lazy_montgomery(&A_inv[i],&ALL_inv,&ANS[i-1]);
    fp5_mul_lazy_montgomery(&ALL_inv,&ALL_inv,&A[i]);
  }

  fp5_set(&A_inv[0],&ALL_inv);
  return 0;
}

void fp5_frobenius_map_p1(fp5_t *ANS,fp5_t *A){
  fp_set(&ANS->x0,&A->x0);
  fp_mul(&ANS->x1,&A->x1,&frobenius_2_10);
  fp_mul(&ANS->x2,&A->x2,&frobenius_4_10);
  fp_mul(&ANS->x3,&A->x3,&frobenius_6_10);
  fp_mul(&ANS->x4,&A->x4,&frobenius_8_10);
}

void fp5_frobenius_map_p2(fp5_t *ANS,fp5_t *A){
  fp_set(&ANS->x0,&A->x0);
  fp_mul(&ANS->x1,&A->x1,&frobenius_4_10);
  fp_mul(&ANS->x2,&A->x2,&frobenius_8_10);
  fp_mul(&ANS->x3,&A->x3,&frobenius_2_10);
  fp_mul(&ANS->x4,&A->x4,&frobenius_6_10);
}

void fp5_mul_base(fp5_t *ANS,fp5_t *A){
  static fp5_t tmp_A;
  fp5_set(&tmp_A,A);

  fp_mul_base(&ANS->x0,&tmp_A.x4);
  fp_set(&ANS->x1,&tmp_A.x0);
  fp_set(&ANS->x2,&tmp_A.x1);
  fp_set(&ANS->x3,&tmp_A.x2);
  fp_set(&ANS->x4,&tmp_A.x3);
}

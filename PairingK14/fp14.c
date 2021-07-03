#include "fp14.h"

void fp14_init(fp14_t *A){
  fp7_init(&A->x0);
  fp7_init(&A->x1);
}

void fp14_printf(std::string str ,fp14_t *A){
  gmp_printf("%s(",str);
  fp7_printf("",&A->x0);
  gmp_printf(",");
  fp7_printf("",&A->x1);
  gmp_printf(")");
}

void fp14_println(std::string str ,fp14_t *A){
  gmp_printf("%s(",str);
  fp7_printf("",&A->x0);
  gmp_printf(",");
  fp7_printf("",&A->x1);
  gmp_printf(")\n");
}

void fp14_printf_montgomery(std::string str ,fp14_t *A){
  gmp_printf("%s(",str);
  fp7_printf_montgomery("",&A->x0);
  gmp_printf(",");
  fp7_printf_montgomery("",&A->x1);
  gmp_printf(")");
}

void fp14_set(fp14_t *ANS,fp14_t *A){
  fp7_set(&ANS->x0,&A->x0);
  fp7_set(&ANS->x1,&A->x1);
}

void fp14_set_ui(fp14_t *ANS,unsigned long int UI){
  fp7_set_ui(&ANS->x0,UI);
  fp7_set_ui(&ANS->x1,0);
}

void fp14_set_ui_ui(fp14_t *ANS,unsigned long int UI){
  fp7_set_ui_ui(&ANS->x0,UI);
  fp7_set_ui_ui(&ANS->x1,UI);
}

void fp14_set_mpn(fp14_t *ANS,mp_limb_t *A){
  fp7_set_mpn(&ANS->x0,A);
  fp7_set_ui(&ANS->x1,0);
}

void fp14_set_neg(fp14_t *ANS,fp14_t *A){
  fp7_set_neg(&ANS->x0,&A->x0);
  fp7_set_neg(&ANS->x1,&A->x1);
}

void fp14_to_montgomery(fp14_t *ANS,fp14_t *A){
  fp7_to_montgomery(&ANS->x0,&A->x0);
  fp7_to_montgomery(&ANS->x1,&A->x1);
}

void fp14_mod_montgomery(fp14_t *ANS,fp14_t *A){
  fp7_mod_montgomery(&ANS->x0,&A->x0);
  fp7_mod_montgomery(&ANS->x1,&A->x1);
}

void fp14_set_random(fp14_t *ANS,gmp_randstate_t state){
  fp7_set_random(&ANS->x0,state);
  fp7_set_random(&ANS->x1,state);
}

void fp14_mul(fp14_t *ANS,fp14_t *A,fp14_t *B){
  //2次のkaratusba
  static fp14_t tmp_A,tmp_B;
  static fp7_t tmp1,tmp2;

  fp14_set(&tmp_A,A);
  fp14_set(&tmp_B,B);

  //set
  fp7_mul(&tmp2,&tmp_A.x1,&tmp_B.x1);//a1*b1
  fp7_add(&tmp1,&tmp_A.x0,&tmp_A.x1);//a0+a1
  fp7_add(&ANS->x1,&tmp_B.x0,&tmp_B.x1);//b0+b1
  fp7_mul(&ANS->x1,&tmp1,&ANS->x1);//(a0+a1)(b0+b1)
  fp7_mul(&tmp1,&tmp_A.x0,&tmp_B.x0);//a0*b0

  //x0
  fp7_mul_base(&ANS->x0,&tmp2);//(a1*b1)*alpha
  fp7_add(&ANS->x0,&ANS->x0,&tmp1);//(a0*b0)+(a1*b1)*alpha

  //x1
  fp7_sub(&ANS->x1,&ANS->x1,&tmp1);//(a0+a1)(b0+b1)-a0*b0
  fp7_sub(&ANS->x1,&ANS->x1,&tmp2);//(a0+a1)(b0+b1)-a0*b0-a1*b1
}

void fp14_mul_lazy_montgomery(fp14_t *ANS,fp14_t *A,fp14_t *B){
  static fp7_t tmp1,tmp2;

  //set
  fp7_mul_lazy_montgomery(&tmp2,&A->x1,&B->x1);//a1*b1
  fp7_add_nonmod_single(&tmp1,&A->x0,&A->x1);//a0+a1
  fp7_add_nonmod_single(&ANS->x1,&B->x0,&B->x1);//b0+b1
  fp7_mul_lazy_montgomery(&ANS->x1,&tmp1,&ANS->x1);//(a0+a1)(b0+b1)
  fp7_mul_lazy_montgomery(&tmp1,&A->x0,&B->x0);//a0*b0

  //x0
  fp7_mul_base(&ANS->x0,&tmp2);//(a1*b1)*alpha
  fp7_add(&ANS->x0,&ANS->x0,&tmp1);//(a0*b0)+(a1*b1)*alpha

  //x1
  fp7_sub(&ANS->x1,&ANS->x1,&tmp1);//(a0+a1)(b0+b1)-a0*b0
  fp7_sub(&ANS->x1,&ANS->x1,&tmp2);//(a0+a1)(b0+b1)-a0*b0-a1*b1
}

void fp14_mul_ui(fp14_t *ANS,fp14_t *A,unsigned long int UI){
  fp7_mul_ui(&ANS->x0,&A->x0,UI);
  fp7_mul_ui(&ANS->x1,&A->x1,UI);
}

void fp14_mul_mpn(fp14_t *ANS,fp14_t *A,mp_limb_t *B){
  fp7_mul_mpn(&ANS->x0,&A->x0,B);
  fp7_mul_mpn(&ANS->x1,&A->x1,B);
}

void fp14_sqr(fp14_t *ANS,fp14_t *A){
  //complex
  static fp7_t tmp1,tmp2,tmp3;
  static fp14_t tmp_A;
  
  fp14_set(&tmp_A,A);

  fp7_add(&tmp1,&tmp_A.x0,&tmp_A.x1);
  fp7_mul_base(&tmp2,&tmp_A.x1);
  fp7_add(&tmp2,&tmp2,&tmp_A.x0);
  fp7_mul(&tmp3,&tmp_A.x0,&tmp_A.x1);

  //x0
  fp7_mul(&ANS->x0,&tmp1,&tmp2);
  fp7_sub(&ANS->x0,&ANS->x0,&tmp3);
  fp7_mul_base(&tmp1,&tmp3);
  fp7_sub(&ANS->x0,&ANS->x0,&tmp1);

  //x1
  fp7_add(&ANS->x1,&tmp3,&tmp3);
}

void fp14_sqr_lazy_montgomery(fp14_t *ANS,fp14_t *A){
  static fp7_t tmp1,tmp2,tmp3;

  fp7_add_nonmod_single(&tmp1,&A->x0,&A->x1);
  fp7_mul_base(&tmp2,&A->x1);
  fp7_add_nonmod_single(&tmp2,&tmp2,&A->x0);
  fp7_mul_lazy_montgomery(&tmp3,&A->x0,&A->x1);

  //x0
  fp7_mul_lazy_montgomery(&ANS->x0,&tmp1,&tmp2);
  fp7_sub(&ANS->x0,&ANS->x0,&tmp3);
  fp7_mul_base(&tmp1,&tmp3);
  fp7_sub(&ANS->x0,&ANS->x0,&tmp1);

  //x1
  fp7_add(&ANS->x1,&tmp3,&tmp3);
}

void fp14_add(fp14_t *ANS,fp14_t *A,fp14_t *B){
  fp7_add(&ANS->x0,&A->x0,&B->x0);
  fp7_add(&ANS->x1,&A->x1,&B->x1);
}

void fp14_add_lazy(fp14_t *ANS,fp14_t *A,fp14_t *B){
  fp7_add_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp7_add_nonmod_single(&ANS->x1,&A->x1,&B->x1);
}

void fp14_add_ui(fp14_t *ANS,fp14_t *A,unsigned long int UI){
  fp7_add_ui(&ANS->x0,&A->x0,UI);
  fp7_set(&ANS->x1,&A->x1);
}

void fp14_add_ui_ui(fp14_t *ANS,fp14_t *A,unsigned long int UI){
  fp7_add_ui_ui(&ANS->x0,&A->x0,UI);
  fp7_add_ui_ui(&ANS->x1,&A->x1,UI);
}

void fp14_add_mpn(fp14_t *ANS,fp14_t *A,mp_limb_t *B){
  fp7_add_mpn(&ANS->x0,&A->x0,B);
  fp7_add_mpn(&ANS->x1,&A->x1,B);
}

void fp14_sub(fp14_t *ANS,fp14_t *A,fp14_t *B){
  fp7_sub(&ANS->x0,&A->x0,&B->x0);
  fp7_sub(&ANS->x1,&A->x1,&B->x1);
}

void fp14_sub_lazy(fp14_t *ANS,fp14_t *A,fp14_t *B){
  fp7_sub_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp7_sub_nonmod_single(&ANS->x1,&A->x1,&B->x1);
}

void fp14_sub_ui(fp14_t *ANS,fp14_t *A,unsigned long int UI){
  fp7_sub_ui(&ANS->x0,&A->x0,UI);
  fp7_set(&ANS->x1,&A->x1);
}

void fp14_sub_ui_ui(fp14_t *ANS,fp14_t *A,unsigned long int UI){
  fp7_sub_ui_ui(&ANS->x0,&A->x0,UI);
  fp7_sub_ui_ui(&ANS->x1,&A->x1,UI);
}

void fp14_sub_mpn(fp14_t *ANS,fp14_t *A,mp_limb_t *B){
  fp7_sub_mpn(&ANS->x0,&A->x0,B);
  fp7_sub_mpn(&ANS->x1,&A->x1,B);
}

void fp14_inv(fp14_t *ANS,fp14_t *A){
  static fp7_t tmp1,tmp2;

  fp7_sqr(&tmp1,&A->x0);
  fp7_sqr(&tmp2,&A->x1);
  fp7_mul_base(&tmp2,&tmp2);
  fp7_sub(&tmp1,&tmp1,&tmp2);//a0^2 -a1^2*alpha
  fp7_inv(&tmp1,&tmp1);
  fp7_mul(&ANS->x0,&A->x0,&tmp1);
  fp7_set_neg(&tmp2,&A->x1);
  fp7_mul(&ANS->x1,&tmp2,&tmp1);
}

void fp14_inv_lazy_montgomery(fp14_t *ANS,fp14_t *A){
  static fp7_t tmp1,tmp2;

  fp7_sqr_lazy_montgomery(&tmp1,&A->x0);
  fp7_sqr_lazy_montgomery(&tmp2,&A->x1);
  fp7_mul_base(&tmp2,&tmp2);
  fp7_sub(&tmp1,&tmp1,&tmp2);//a0^2 -a1^2*alpha
  fp7_inv_lazy_montgomery(&tmp1,&tmp1);

  fp7_mul_lazy_montgomery(&ANS->x0,&A->x0,&tmp1);
  fp7_set_neg(&tmp2,&A->x1);
  fp7_mul_lazy_montgomery(&ANS->x1,&tmp2,&tmp1);
}

int fp14_legendre(fp14_t *A){
  mpz_t expo;
  mpz_init(expo);
  fp14_t tmp;
  fp14_init(&tmp);

  mpz_pow_ui(expo,prime_z,14);
  mpz_sub_ui(expo,expo,1);
  mpz_tdiv_q_ui(expo,expo,2);
  fp14_pow(&tmp,A,expo);

  if(fp14_cmp_one(&tmp)==0){
    mpz_clear(expo);
    return 1;
  }
  else{
    mpz_clear(expo);
    return -1;
  }
}

void fp14_sqrt(fp14_t *ANS,fp14_t *A){
  fp14_t x,y,t,k,n,tmp;
  fp14_init(&x);
  fp14_init(&y);
  fp14_init(&t);
  fp14_init(&k);
  fp14_init(&n);
  fp14_init(&tmp);
  unsigned long int e,m;
  mpz_t exp,q,z,result;
  mpz_init(exp);
  mpz_init(q);
  mpz_init(z);
  mpz_init(result);
  //gmp_randstate_t state;
  //gmp_randinit_default (state);
  //gmp_randseed_ui(state,(unsigned long)time(NULL));

  fp14_set_random(&n,state);
  while(fp14_legendre(&n)!=-1){
    fp14_set_random(&n,state);
  }
  mpz_pow_ui(q,prime_z,14);
  mpz_sub_ui(q,q,1);
  mpz_mod_ui(result,q,2);
  e=0;
  while(mpz_cmp_ui(result,0)==0){
    mpz_tdiv_q_ui(q,q,2);
    mpz_mod_ui(result,q,2);
    e++;
  }
  fp14_pow(&y,&n,q);
  mpz_set_ui(z,e);
  mpz_sub_ui(exp,q,1);
  mpz_tdiv_q_ui(exp,exp,2);
  fp14_pow(&x,A,exp);
  fp14_mul(&tmp,&x,&x);
  fp14_mul(&k,&tmp,A);
  fp14_mul(&x,&x,A);
  while(fp14_cmp_one(&k)!=0){
    m=1;
    mpz_ui_pow_ui(exp,2,m);
    fp14_pow(&tmp,&k,exp);
    while(fp14_cmp_one(&tmp)!=0){
      m++;
      mpz_ui_pow_ui(exp,2,m);
      fp14_pow(&tmp,&k,exp);
    }
    mpz_sub_ui(exp,z,m);
    mpz_sub_ui(exp,exp,1);
    mpz_ui_pow_ui(result,2,mpz_get_ui(exp));
    fp14_pow(&t,&y,result);
    fp14_mul(&y,&t,&t);
    mpz_set_ui(z,m);
    fp14_mul(&x,&x,&t);
    fp14_mul(&k,&k,&y);
  }
  fp14_set(ANS,&x);

  mpz_clear(q);
  mpz_clear(z);
  mpz_clear(exp);
  mpz_clear(result);
}

void fp14_pow(fp14_t *ANS,fp14_t *A,mpz_t scalar){
  int i,length;
  length=(int)mpz_sizeinbase(scalar,2);
  char binary[length+1];
  mpz_get_str(binary,2,scalar);
  fp14_t tmp;
  fp14_init(&tmp);
  fp14_set(&tmp,A);

  for(i=1;i<length; i++){
    fp14_sqr(&tmp,&tmp);
    if(binary[i]=='1')  fp14_mul(&tmp,A,&tmp);
  }
  fp14_set(ANS,&tmp);
}

int  fp14_cmp(fp14_t *A,fp14_t *B){
  if(fp7_cmp(&A->x0,&B->x0)==0 && fp7_cmp(&A->x1,&B->x1)==0){
    return 0;
  }
  return 1;
}

int  fp14_cmp_ui(fp14_t *A,unsigned long int UI){
  if(fp7_cmp_ui(&A->x0,UI)==0 && fp7_cmp_ui(&A->x1,UI)==0){
    return 0;
  }
  return 1;
}

int  fp14_cmp_mpn(fp14_t *A,mp_limb_t *B){
  if(fp7_cmp_mpn(&A->x0,B)==0 && fp7_cmp_mpn(&A->x1,B)==0){
    return 0;
  }
  return 1;
}

int  fp14_cmp_zero(fp14_t *A){
  if(fp7_cmp_zero(&A->x0)==0 && fp7_cmp_zero(&A->x1)==0){
    return 0;
  }
  return 1;
}

int  fp14_cmp_one(fp14_t *A){
  if(fp7_cmp_one(&A->x0)==0 && fp7_cmp_zero(&A->x1)==0){
    return 0;
  }
  return 1;
}

int fp14_montgomery_trick_montgomery(fp14_t *A_inv,fp14_t *A,int n){
  int i;
  fp14_t ANS[n],ALL_inv;
  fp14_set(&ANS[0],&A[0]);
  fp14_t check;

  for(i=1;i<n;i++){
    fp14_mul_lazy_montgomery(&ANS[i],&ANS[i-1],&A[i]);
  }
  fp14_inv_lazy_montgomery(&ALL_inv,&ANS[n-1]);
  for(i=n-1;i>0;i--){
    fp14_mul_lazy_montgomery(&A_inv[i],&ALL_inv,&ANS[i-1]);
    fp14_mul_lazy_montgomery(&ALL_inv,&ALL_inv,&A[i]);
  }

  fp14_set(&A_inv[0],&ALL_inv);
  return 0;
}

void fp14_frobenius_map_p1(fp14_t *ANS,fp14_t *A){
  fp_set(&ANS->x0.x0,&A->x0.x0);
  fp_mul(&ANS->x0.x1,&A->x0.x1,&frobenius_2_14);
  fp_mul(&ANS->x0.x2,&A->x0.x2,&frobenius_4_14);
  fp_mul(&ANS->x0.x3,&A->x0.x3,&frobenius_6_14);
  fp_mul(&ANS->x0.x4,&A->x0.x4,&frobenius_8_14);
  fp_mul(&ANS->x0.x5,&A->x0.x5,&frobenius_10_14);
  fp_mul(&ANS->x0.x6,&A->x0.x6,&frobenius_12_14);

  fp_mul(&ANS->x1.x0,&A->x1.x0,&frobenius_1_14);
  fp_mul(&ANS->x1.x1,&A->x1.x1,&frobenius_3_14);
  fp_mul(&ANS->x1.x2,&A->x1.x2,&frobenius_5_14);
  fp_set_neg(&ANS->x1.x3,&A->x1.x3);
  fp_mul(&ANS->x1.x4,&A->x1.x4,&frobenius_9_14);
  fp_mul(&ANS->x1.x5,&A->x1.x5,&frobenius_11_14);
  fp_mul(&ANS->x1.x6,&A->x1.x6,&frobenius_13_14);
}

void fp14_frobenius_map_p2(fp14_t *ANS,fp14_t *A){
  fp_set(&ANS->x0.x0,&A->x0.x0);
  fp_mul(&ANS->x0.x1,&A->x0.x1,&frobenius_4_14);
  fp_mul(&ANS->x0.x2,&A->x0.x2,&frobenius_8_14);
  fp_mul(&ANS->x0.x3,&A->x0.x3,&frobenius_12_14);
  fp_mul(&ANS->x0.x4,&A->x0.x4,&frobenius_2_14);
  fp_mul(&ANS->x0.x5,&A->x0.x5,&frobenius_6_14);
  fp_mul(&ANS->x0.x6,&A->x0.x6,&frobenius_10_14);

  fp_mul(&ANS->x1.x0,&A->x1.x0,&frobenius_2_14);
  fp_mul(&ANS->x1.x1,&A->x1.x1,&frobenius_6_14);
  fp_mul(&ANS->x1.x2,&A->x1.x2,&frobenius_10_14);
  fp_set(&ANS->x1.x3,&A->x1.x3);
  fp_mul(&ANS->x1.x4,&A->x1.x4,&frobenius_4_14);
  fp_mul(&ANS->x1.x5,&A->x1.x5,&frobenius_8_14);
  fp_mul(&ANS->x1.x6,&A->x1.x6,&frobenius_12_14);
}

void fp14_frobenius_map_p3(fp14_t *ANS,fp14_t *A){
  fp_set(&ANS->x0.x0,&A->x0.x0);
  fp_mul(&ANS->x0.x1,&A->x0.x1,&frobenius_6_14);
  fp_mul(&ANS->x0.x2,&A->x0.x2,&frobenius_12_14);
  fp_mul(&ANS->x0.x3,&A->x0.x3,&frobenius_4_14);
  fp_mul(&ANS->x0.x4,&A->x0.x4,&frobenius_10_14);
  fp_mul(&ANS->x0.x5,&A->x0.x5,&frobenius_2_14);
  fp_mul(&ANS->x0.x6,&A->x0.x6,&frobenius_8_14);

  fp_mul(&ANS->x1.x0,&A->x1.x0,&frobenius_3_14);
  fp_mul(&ANS->x1.x1,&A->x1.x1,&frobenius_9_14);
  fp_mul(&ANS->x1.x2,&A->x1.x2,&frobenius_1_14);
  fp_set_neg(&ANS->x1.x3,&A->x1.x3);
  fp_mul(&ANS->x1.x4,&A->x1.x4,&frobenius_13_14);
  fp_mul(&ANS->x1.x5,&A->x1.x5,&frobenius_5_14);
  fp_mul(&ANS->x1.x6,&A->x1.x6,&frobenius_11_14);
}

void fp14_frobenius_map_p4(fp14_t *ANS,fp14_t *A){
  fp_set(&ANS->x0.x0,&A->x0.x0);
  fp_mul(&ANS->x0.x1,&A->x0.x1,&frobenius_8_14);
  fp_mul(&ANS->x0.x2,&A->x0.x2,&frobenius_2_14);
  fp_mul(&ANS->x0.x3,&A->x0.x3,&frobenius_10_14);
  fp_mul(&ANS->x0.x4,&A->x0.x4,&frobenius_4_14);
  fp_mul(&ANS->x0.x5,&A->x0.x5,&frobenius_12_14);
  fp_mul(&ANS->x0.x6,&A->x0.x6,&frobenius_6_14);

  fp_mul(&ANS->x1.x0,&A->x1.x0,&frobenius_4_14);
  fp_mul(&ANS->x1.x1,&A->x1.x1,&frobenius_12_14);
  fp_mul(&ANS->x1.x2,&A->x1.x2,&frobenius_6_14);
  fp_set(&ANS->x1.x3,&A->x1.x3);
  fp_mul(&ANS->x1.x4,&A->x1.x4,&frobenius_8_14);
  fp_mul(&ANS->x1.x5,&A->x1.x5,&frobenius_2_14);
  fp_mul(&ANS->x1.x6,&A->x1.x6,&frobenius_10_14);
}

void fp14_frobenius_map_p5(fp14_t *ANS,fp14_t *A){
  fp_set(&ANS->x0.x0,&A->x0.x0);
  fp_mul(&ANS->x0.x1,&A->x0.x1,&frobenius_10_14);
  fp_mul(&ANS->x0.x2,&A->x0.x2,&frobenius_6_14);
  fp_mul(&ANS->x0.x3,&A->x0.x3,&frobenius_2_14);
  fp_mul(&ANS->x0.x4,&A->x0.x4,&frobenius_12_14);
  fp_mul(&ANS->x0.x5,&A->x0.x5,&frobenius_8_14);
  fp_mul(&ANS->x0.x6,&A->x0.x6,&frobenius_4_14);

  fp_mul(&ANS->x1.x0,&A->x1.x0,&frobenius_5_14);
  fp_mul(&ANS->x1.x1,&A->x1.x1,&frobenius_1_14);
  fp_mul(&ANS->x1.x2,&A->x1.x2,&frobenius_11_14);
  fp_set_neg(&ANS->x1.x3,&A->x1.x3);
  fp_mul(&ANS->x1.x4,&A->x1.x4,&frobenius_3_14);
  fp_mul(&ANS->x1.x5,&A->x1.x5,&frobenius_13_14);
  fp_mul(&ANS->x1.x6,&A->x1.x6,&frobenius_9_14);
}

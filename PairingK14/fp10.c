#include "fp10.h"

void fp10_init(fp10_t *A){
  fp5_init(&A->x0);
  fp5_init(&A->x1);
}

void fp10_printf(std::string str ,fp10_t *A){
  gmp_printf("%s(",str.c_str());
  fp5_printf("",&A->x0);
  gmp_printf(",");
  fp5_printf("",&A->x1);
  gmp_printf(")");
}

void fp10_println(std::string str ,fp10_t *A){
  gmp_printf("%s(",str.c_str());
  fp5_printf("",&A->x0);
  gmp_printf(",");
  fp5_printf("",&A->x1);
  gmp_printf(")\n");
}

void fp10_printf_montgomery(std::string str ,fp10_t *A){
  gmp_printf("%s(",str.c_str());
  fp5_printf_montgomery("",&A->x0);
  gmp_printf(",");
  fp5_printf_montgomery("",&A->x1);
  gmp_printf(")");
}

void fp10_set(fp10_t *ANS,fp10_t *A){
  fp5_set(&ANS->x0,&A->x0);
  fp5_set(&ANS->x1,&A->x1);
}

void fp10_set_ui(fp10_t *ANS,unsigned long int UI){
  fp5_set_ui(&ANS->x0,UI);
  fp5_set_ui(&ANS->x1,0);
}

void fp10_set_ui_ui(fp10_t *ANS,unsigned long int UI){
  fp5_set_ui_ui(&ANS->x0,UI);
  fp5_set_ui_ui(&ANS->x1,UI);
}

void fp10_set_mpn(fp10_t *ANS,mp_limb_t *A){
  fp5_set_mpn(&ANS->x0,A);
  fp5_set_ui(&ANS->x1,0);
}

void fp10_set_neg(fp10_t *ANS,fp10_t *A){
  fp5_set_neg(&ANS->x0,&A->x0);
  fp5_set_neg(&ANS->x1,&A->x1);
}

void fp10_to_montgomery(fp10_t *ANS,fp10_t *A){
  fp5_to_montgomery(&ANS->x0,&A->x0);
  fp5_to_montgomery(&ANS->x1,&A->x1);
}

void fp10_mod_montgomery(fp10_t *ANS,fp10_t *A){
  fp5_mod_montgomery(&ANS->x0,&A->x0);
  fp5_mod_montgomery(&ANS->x1,&A->x1);
}

void fp10_set_random(fp10_t *ANS,gmp_randstate_t state){
  fp5_set_random(&ANS->x0,state);
  fp5_set_random(&ANS->x1,state);
}

void fp10_mul(fp10_t *ANS,fp10_t *A,fp10_t *B){
  //2次のkaratusba
  static fp5_t tmp1,tmp2;

  //set
  fp5_mul(&tmp2,&A->x1,&B->x1);//a1*b1
  fp5_add(&tmp1,&A->x0,&A->x1);//a0+a1
  fp5_add(&ANS->x1,&B->x0,&B->x1);//b0+b1
  fp5_mul(&ANS->x1,&tmp1,&ANS->x1);//(a0+a1)(b0+b1)
  fp5_mul(&tmp1,&A->x0,&B->x0);//a0*b0

  //x0
  fp5_mul_base(&ANS->x0,&tmp2);//(a1*b1)*alpha
  fp5_add(&ANS->x0,&ANS->x0,&tmp1);//(a0*b0)+(a1*b1)*alpha

  //x1
  fp5_sub(&ANS->x1,&ANS->x1,&tmp1);//(a0+a1)(b0+b1)-a0*b0
  fp5_sub(&ANS->x1,&ANS->x1,&tmp2);//(a0+a1)(b0+b1)-a0*b0-a1*b1
}

void fp10_mul_lazy_montgomery(fp10_t *ANS,fp10_t *A,fp10_t *B){
  static fp5_t tmp1,tmp2;

  //set
  fp5_mul_lazy_montgomery(&tmp2,&A->x1,&B->x1);//a1*b1
  fp5_add_nonmod_single(&tmp1,&A->x0,&A->x1);//a0+a1
  fp5_add_nonmod_single(&ANS->x1,&B->x0,&B->x1);//b0+b1
  fp5_mul_lazy_montgomery(&ANS->x1,&tmp1,&ANS->x1);//(a0+a1)(b0+b1)
  fp5_mul_lazy_montgomery(&tmp1,&A->x0,&B->x0);//a0*b0

  //x0
  fp5_mul_base(&ANS->x0,&tmp2);//(a1*b1)*alpha
  fp5_add(&ANS->x0,&ANS->x0,&tmp1);//(a0*b0)+(a1*b1)*alpha

  //x1
  fp5_sub(&ANS->x1,&ANS->x1,&tmp1);//(a0+a1)(b0+b1)-a0*b0
  fp5_sub(&ANS->x1,&ANS->x1,&tmp2);//(a0+a1)(b0+b1)-a0*b0-a1*b1
}

void fp10_mul_ui(fp10_t *ANS,fp10_t *A,unsigned long int UI){
  fp5_mul_ui(&ANS->x0,&A->x0,UI);
  fp5_mul_ui(&ANS->x1,&A->x1,UI);
}

void fp10_mul_mpn(fp10_t *ANS,fp10_t *A,mp_limb_t *B){
  fp5_mul_mpn(&ANS->x0,&A->x0,B);
  fp5_mul_mpn(&ANS->x1,&A->x1,B);
}

void fp10_sqr(fp10_t *ANS,fp10_t *A){
  //complex
  static fp5_t tmp1,tmp2,tmp3;

  fp5_add(&tmp1,&A->x0,&A->x1);
  fp5_mul_base(&tmp2,&A->x1);
  fp5_add(&tmp2,&tmp2,&A->x0);
  fp5_mul(&tmp3,&A->x0,&A->x1);

  //x0
  fp5_mul(&ANS->x0,&tmp1,&tmp2);
  fp5_sub(&ANS->x0,&ANS->x0,&tmp3);
  fp5_mul_base(&tmp1,&tmp3);
  fp5_sub(&ANS->x0,&ANS->x0,&tmp1);

  //x1
  fp5_add(&ANS->x1,&tmp3,&tmp3);
}

void fp10_sqr_lazy_montgomery(fp10_t *ANS,fp10_t *A){
  static fp5_t tmp1,tmp2,tmp3;

  fp5_add_nonmod_single(&tmp1,&A->x0,&A->x1);
  fp5_mul_base(&tmp2,&A->x1);
  fp5_add_nonmod_single(&tmp2,&tmp2,&A->x0);
  fp5_mul_lazy_montgomery(&tmp3,&A->x0,&A->x1);

  //x0
  fp5_mul_lazy_montgomery(&ANS->x0,&tmp1,&tmp2);
  fp5_sub(&ANS->x0,&ANS->x0,&tmp3);
  fp5_mul_base(&tmp1,&tmp3);
  fp5_sub(&ANS->x0,&ANS->x0,&tmp1);

  //x1
  fp5_add(&ANS->x1,&tmp3,&tmp3);
}

void fp10_add(fp10_t *ANS,fp10_t *A,fp10_t *B){
  fp5_add(&ANS->x0,&A->x0,&B->x0);
  fp5_add(&ANS->x1,&A->x1,&B->x1);
}

void fp10_add_lazy(fp10_t *ANS,fp10_t *A,fp10_t *B){
  fp5_add_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp5_add_nonmod_single(&ANS->x1,&A->x1,&B->x1);
}

void fp10_add_ui(fp10_t *ANS,fp10_t *A,unsigned long int UI){
  fp5_add_ui(&ANS->x0,&A->x0,UI);
  fp5_set(&ANS->x1,&A->x1);
}

void fp10_add_ui_ui(fp10_t *ANS,fp10_t *A,unsigned long int UI){
  fp5_add_ui_ui(&ANS->x0,&A->x0,UI);
  fp5_add_ui_ui(&ANS->x1,&A->x1,UI);
}

void fp10_add_mpn(fp10_t *ANS,fp10_t *A,mp_limb_t *B){
  fp5_add_mpn(&ANS->x0,&A->x0,B);
  fp5_add_mpn(&ANS->x1,&A->x1,B);
}

void fp10_sub(fp10_t *ANS,fp10_t *A,fp10_t *B){
  fp5_sub(&ANS->x0,&A->x0,&B->x0);
  fp5_sub(&ANS->x1,&A->x1,&B->x1);
}

void fp10_sub_lazy(fp10_t *ANS,fp10_t *A,fp10_t *B){
  fp5_sub_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp5_sub_nonmod_single(&ANS->x1,&A->x1,&B->x1);
}

void fp10_sub_ui(fp10_t *ANS,fp10_t *A,unsigned long int UI){
  fp5_sub_ui(&ANS->x0,&A->x0,UI);
  fp5_set(&ANS->x1,&A->x1);
}

void fp10_sub_ui_ui(fp10_t *ANS,fp10_t *A,unsigned long int UI){
  fp5_sub_ui_ui(&ANS->x0,&A->x0,UI);
  fp5_sub_ui_ui(&ANS->x1,&A->x1,UI);
}

void fp10_sub_mpn(fp10_t *ANS,fp10_t *A,mp_limb_t *B){
  fp5_sub_mpn(&ANS->x0,&A->x0,B);
  fp5_sub_mpn(&ANS->x1,&A->x1,B);
}

void fp10_inv(fp10_t *ANS,fp10_t *A){
  static fp5_t tmp1,tmp2;

  fp5_sqr(&tmp1,&A->x0);
  fp5_sqr(&tmp2,&A->x1);
  fp5_mul_base(&tmp2,&tmp2);
  fp5_sub(&tmp1,&tmp1,&tmp2);//a0^2 -a1^2*alpha
  fp5_inv(&tmp1,&tmp1);

  fp5_mul(&ANS->x0,&A->x0,&tmp1);
  fp5_set_neg(&tmp2,&A->x1);
  fp5_mul(&ANS->x1,&tmp2,&tmp1);
}

void fp10_inv_lazy_montgomery(fp10_t *ANS,fp10_t *A){
  static fp5_t tmp1,tmp2;

  fp5_sqr_lazy_montgomery(&tmp1,&A->x0);
  fp5_sqr_lazy_montgomery(&tmp2,&A->x1);
  fp5_mul_base(&tmp2,&tmp2);
  fp5_sub(&tmp1,&tmp1,&tmp2);//a0^2 -a1^2*alpha
  fp5_inv_lazy_montgomery(&tmp1,&tmp1);

  fp5_mul_lazy_montgomery(&ANS->x0,&A->x0,&tmp1);
  fp5_set_neg(&tmp2,&A->x1);
  fp5_mul_lazy_montgomery(&ANS->x1,&tmp2,&tmp1);
}

int fp10_legendre(fp10_t *A){
  mpz_t expo;
  mpz_init(expo);
  fp10_t tmp;
  fp10_init(&tmp);

  mpz_pow_ui(expo,prime_z,10);
  mpz_sub_ui(expo,expo,1);
  mpz_tdiv_q_ui(expo,expo,2);
  fp10_pow(&tmp,A,expo);

  if(fp10_cmp_one(&tmp)==0){
    mpz_clear(expo);
    return 1;
  }
  else{
    mpz_clear(expo);
    return -1;
  }
}

void fp10_sqrt(fp10_t *ANS,fp10_t *A){
  fp10_t x,y,t,k,n,tmp;
  fp10_init(&x);
  fp10_init(&y);
  fp10_init(&t);
  fp10_init(&k);
  fp10_init(&n);
  fp10_init(&tmp);
  unsigned long int e,m;
  mpz_t exp,q,z,result;
  mpz_init(exp);
  mpz_init(q);
  mpz_init(z);
  mpz_init(result);
  //gmp_randstate_t state;
  //gmp_randinit_default (state);
  //gmp_randseed_ui(state,(unsigned long)time(NULL));

  fp10_set_random(&n,state);
  while(fp10_legendre(&n)!=-1){
    fp10_set_random(&n,state);
  }
  mpz_pow_ui(q,prime_z,10);
  mpz_sub_ui(q,q,1);
  mpz_mod_ui(result,q,2);
  e=0;
  while(mpz_cmp_ui(result,0)==0){
    mpz_tdiv_q_ui(q,q,2);
    mpz_mod_ui(result,q,2);
    e++;
  }
  fp10_pow(&y,&n,q);
  mpz_set_ui(z,e);
  mpz_sub_ui(exp,q,1);
  mpz_tdiv_q_ui(exp,exp,2);
  fp10_pow(&x,A,exp);
  fp10_mul(&tmp,&x,&x);
  fp10_mul(&k,&tmp,A);
  fp10_mul(&x,&x,A);
  while(fp10_cmp_one(&k)!=0){
    m=1;
    mpz_ui_pow_ui(exp,2,m);
    fp10_pow(&tmp,&k,exp);
    while(fp10_cmp_one(&tmp)!=0){
      m++;
      mpz_ui_pow_ui(exp,2,m);
      fp10_pow(&tmp,&k,exp);
    }
    mpz_sub_ui(exp,z,m);
    mpz_sub_ui(exp,exp,1);
    mpz_ui_pow_ui(result,2,mpz_get_ui(exp));
    fp10_pow(&t,&y,result);
    fp10_mul(&y,&t,&t);
    mpz_set_ui(z,m);
    fp10_mul(&x,&x,&t);
    fp10_mul(&k,&k,&y);
  }
  fp10_set(ANS,&x);

  mpz_clear(q);
  mpz_clear(z);
  mpz_clear(exp);
  mpz_clear(result);
}

void fp10_pow(fp10_t *ANS,fp10_t *A,mpz_t scalar){
  int i,length;
  length=(int)mpz_sizeinbase(scalar,2);
  char binary[length+1];
  mpz_get_str(binary,2,scalar);
  fp10_t tmp;
  fp10_init(&tmp);
  fp10_set(&tmp,A);

  for(i=1;i<length; i++){
    fp10_sqr(&tmp,&tmp);
    if(binary[i]=='1')  fp10_mul(&tmp,A,&tmp);
  }
  fp10_set(ANS,&tmp);
}

int  fp10_cmp(fp10_t *A,fp10_t *B){
  if(fp5_cmp(&A->x0,&B->x0)==0 && fp5_cmp(&A->x1,&B->x1)==0){
    return 0;
  }
  return 1;
}

int  fp10_cmp_ui(fp10_t *A,unsigned long int UI){
  if(fp5_cmp_ui(&A->x0,UI)==0 && fp5_cmp_ui(&A->x1,UI)==0){
    return 0;
  }
  return 1;
}

int  fp10_cmp_mpn(fp10_t *A,mp_limb_t *B){
  if(fp5_cmp_mpn(&A->x0,B)==0 && fp5_cmp_mpn(&A->x1,B)==0){
    return 0;
  }
  return 1;
}

int  fp10_cmp_zero(fp10_t *A){
  if(fp5_cmp_zero(&A->x0)==0 && fp5_cmp_zero(&A->x1)==0){
    return 0;
  }
  return 1;
}

int  fp10_cmp_one(fp10_t *A){
  if(fp5_cmp_one(&A->x0)==0 && fp5_cmp_zero(&A->x1)==0){
    return 0;
  }
  return 1;
}

int fp10_montgomery_trick_montgomery(fp10_t *A_inv,fp10_t *A,int n){
  int i;
  fp10_t ANS[n],ALL_inv;
  fp10_set(&ANS[0],&A[0]);
  fp10_t check;

  for(i=1;i<n;i++){
    fp10_mul_lazy_montgomery(&ANS[i],&ANS[i-1],&A[i]);
  }
  fp10_inv_lazy_montgomery(&ALL_inv,&ANS[n-1]);
  for(i=n-1;i>0;i--){
    fp10_mul_lazy_montgomery(&A_inv[i],&ALL_inv,&ANS[i-1]);
    fp10_mul_lazy_montgomery(&ALL_inv,&ALL_inv,&A[i]);
  }

  fp10_set(&A_inv[0],&ALL_inv);
  return 0;
}

void fp10_frobenius_map_p1(fp10_t *ANS,fp10_t *A){
  fp_set(&ANS->x0.x0,&A->x0.x0);
  fp_mul(&ANS->x0.x1,&A->x0.x1,&frobenius_2_10);
  fp_mul(&ANS->x0.x2,&A->x0.x2,&frobenius_4_10);
  fp_mul(&ANS->x0.x3,&A->x0.x3,&frobenius_6_10);
  fp_mul(&ANS->x0.x4,&A->x0.x4,&frobenius_8_10);
  fp_mul(&ANS->x1.x0,&A->x1.x0,&frobenius_1_10);
  fp_mul(&ANS->x1.x1,&A->x1.x1,&frobenius_3_10);
  fp_set_neg(&ANS->x1.x2,&A->x1.x2);
  fp_mul(&ANS->x1.x3,&A->x1.x3,&frobenius_7_10);
  fp_mul(&ANS->x1.x4,&A->x1.x4,&frobenius_9_10);
}

void fp10_frobenius_map_p2(fp10_t *ANS,fp10_t *A){
  fp_set(&ANS->x0.x0,&A->x0.x0);
  fp_mul(&ANS->x0.x1,&A->x0.x1,&frobenius_4_10);
  fp_mul(&ANS->x0.x2,&A->x0.x2,&frobenius_8_10);
  fp_mul(&ANS->x0.x3,&A->x0.x3,&frobenius_2_10);
  fp_mul(&ANS->x0.x4,&A->x0.x4,&frobenius_6_10);
  fp_mul(&ANS->x1.x0,&A->x1.x0,&frobenius_2_10);
  fp_mul(&ANS->x1.x1,&A->x1.x1,&frobenius_6_10);
  fp_set(&ANS->x1.x2,&A->x1.x2);
  fp_mul(&ANS->x1.x3,&A->x1.x3,&frobenius_4_10);
  fp_mul(&ANS->x1.x4,&A->x1.x4,&frobenius_8_10);
}

void fp10_frobenius_map_p3(fp10_t *ANS,fp10_t *A){
  fp_set(&ANS->x0.x0,&A->x0.x0);
  fp_mul(&ANS->x0.x1,&A->x0.x1,&frobenius_6_10);
  fp_mul(&ANS->x0.x2,&A->x0.x2,&frobenius_2_10);
  fp_mul(&ANS->x0.x3,&A->x0.x3,&frobenius_8_10);
  fp_mul(&ANS->x0.x4,&A->x0.x4,&frobenius_4_10);
  fp_mul(&ANS->x1.x0,&A->x1.x0,&frobenius_3_10);
  fp_mul(&ANS->x1.x1,&A->x1.x1,&frobenius_9_10);
  fp_set_neg(&ANS->x1.x2,&A->x1.x2);
  fp_mul(&ANS->x1.x3,&A->x1.x3,&frobenius_1_10);
  fp_mul(&ANS->x1.x4,&A->x1.x4,&frobenius_7_10);
}

void fp10_frobenius_map_p5(fp10_t *ANS,fp10_t *A){
  fp5_set(&ANS->x0,&A->x0);
  fp5_set_neg(&ANS->x1,&A->x1);
}

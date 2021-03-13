#include "fp6.h"

void fp6_init(fp6_t *A){
  fp3_init(&A->x0);
  fp3_init(&A->x1);
}

void fp6_printf(char *str,fp6_t *A){
  gmp_printf("%s(",str);
  fp3_printf("",&A->x0);
  gmp_printf(",");
  fp3_printf("",&A->x1);
  gmp_printf(")");
}

void fp6_println(char *str,fp6_t *A){
  gmp_printf("%s(",str);
  fp3_printf("",&A->x0);
  gmp_printf(",");
  fp3_printf("",&A->x1);
  gmp_printf(")\n");
}

// void fp6_printf_montgomery(char *str,fp6_t *A){
//   gmp_printf("%s(",str);
//   fp3_printf_montgomery("",&A->x0);
//   gmp_printf(",");
//   fp3_printf_montgomery("",&A->x1);
//   gmp_printf(",");
//   fp3_printf_montgomery("",&A->x2);
//   gmp_printf(")");
// }

void fp6_set(fp6_t *ANS,fp6_t *A){
  fp3_set(&ANS->x0,&A->x0);
  fp3_set(&ANS->x1,&A->x1);
}

void fp6_set_ui(fp6_t *ANS,unsigned long int UI){
  fp3_set_ui(&ANS->x0,UI);
  fp3_set_ui(&ANS->x1,0);
}

void fp6_set_ui_ui(fp6_t *ANS,unsigned long int UI){
  fp3_set_ui_ui(&ANS->x0,UI);
  fp3_set_ui_ui(&ANS->x1,UI);
}

void fp6_set_mpn(fp6_t *ANS,mp_limb_t *A){
  fp3_set_mpn(&ANS->x0,A);
  fp3_set_ui(&ANS->x1,0);
}

void fp6_set_neg(fp6_t *ANS,fp6_t *A){
  fp3_set_neg(&ANS->x0,&A->x0);
  fp3_set_neg(&ANS->x1,&A->x1);
}

// void fp6_to_montgomery(fp6_t *ANS,fp6_t *A){
//   fp3_to_montgomery(&ANS->x0,&A->x0);
//   fp3_to_montgomery(&ANS->x1,&A->x1);
//   fp3_to_montgomery(&ANS->x2,&A->x2);
// }

// void fp6_mod_montgomery(fp6_t *ANS,fp6_t *A){
//   fp3_mod_montgomery(&ANS->x0,&A->x0);
//   fp3_mod_montgomery(&ANS->x1,&A->x1);
//   fp3_mod_montgomery(&ANS->x2,&A->x2);

// }

void fp6_set_random(fp6_t *ANS,gmp_randstate_t state){
  fp3_set_random(&ANS->x0,state);
  fp3_set_random(&ANS->x1,state);
}

void fp6_mul(fp6_t *ANS,fp6_t *A,fp6_t *B){
  static fp6_t tmp_A,tmp_B;
  fp6_set(&tmp_A,A);
  fp6_set(&tmp_B,B);

  static fp3_t tmp1_fp3,tmp2_fp3,tmp3_fp3,tmp4_fp3,tmp5_fp3;
  fp3_mul(&tmp1_fp3,&tmp_A.x0,&tmp_B.x0); //ac
  fp3_mul(&tmp2_fp3,&tmp_A.x1,&tmp_B.x1); //bd
  fp3_mul_base(&tmp3_fp3, &tmp2_fp3);  //ab+bdΘ^2
  fp3_add(&ANS->x0, &tmp1_fp3, &tmp3_fp3);  //ab+bdΘ^2

  fp3_add(&tmp3_fp3,&tmp_A.x0,&tmp_A.x1);//a+b
  fp3_add(&tmp4_fp3,&tmp_B.x0,&tmp_B.x1);//c+d
  fp3_mul(&tmp5_fp3,&tmp3_fp3,&tmp4_fp3); //(a+b)(c+d)
  
  fp3_sub(&tmp3_fp3,&tmp5_fp3,&tmp1_fp3);//(a+b)(c+d) - ac
  fp3_sub(&ANS->x1,&tmp3_fp3,&tmp2_fp3);//(a+b)(c+d) - ac -bd
}


void fp6_mul_sparse_add(fp6_t *ANS,fp6_t *A,fp6_t *B){  //??000? * ??????
  static fp6_t tmp_A,tmp_B;
  fp6_set(&tmp_A,A);
  fp6_set(&tmp_B,B);

  static fp3_t tmp1_fp3,tmp2_fp3,tmp3_fp3,tmp4_fp3,tmp5_fp3;
  fp3_mul_sparse_add_1(&tmp1_fp3,&tmp_A.x0,&tmp_B.x0); //ac
  fp3_mul_sparse_add_2(&tmp2_fp3,&tmp_A.x1,&tmp_B.x1); //bd
  fp3_mul_base(&tmp3_fp3, &tmp2_fp3);  //ab+bdΘ^2
  fp3_add(&ANS->x0, &tmp1_fp3, &tmp3_fp3);  //ab+bdΘ^2

  // fp3_add(&tmp3_fp3,&tmp_A.x0,&tmp_A.x1);//a+b
  fp3_set(&tmp3_fp3,&tmp_A.x0);
  fp_set(&tmp3_fp3.x2,&tmp_A.x1.x2);

  fp3_add(&tmp4_fp3,&tmp_B.x0,&tmp_B.x1);//c+d
  fp3_mul(&tmp5_fp3,&tmp3_fp3,&tmp4_fp3); //(a+b)(c+d)
  
  fp3_sub(&tmp3_fp3,&tmp5_fp3,&tmp1_fp3);//(a+b)(c+d) - ac
  fp3_sub(&ANS->x1,&tmp3_fp3,&tmp2_fp3);//(a+b)(c+d) - ac -bd
}

void fp6_mul_sparse_dbl(fp6_t *ANS,fp6_t *A,fp6_t *B){  //??000? * ??????
  static fp6_t tmp_A,tmp_B;
  fp6_set(&tmp_A,A);
  fp6_set(&tmp_B,B);

  static fp3_t tmp1_fp3,tmp2_fp3,tmp3_fp3,tmp4_fp3,tmp5_fp3;
  fp3_mul_sparse_dbl_1(&tmp1_fp3,&tmp_A.x0,&tmp_B.x0); //ac
  fp3_mul_sparse_dbl_2(&tmp2_fp3,&tmp_A.x1,&tmp_B.x1); //bd
  fp3_mul_base(&tmp3_fp3, &tmp2_fp3);  //ab+bdΘ^2
  fp3_add(&ANS->x0, &tmp1_fp3, &tmp3_fp3);  //ab+bdΘ^2

  // fp3_add(&tmp3_fp3,&tmp_A.x0,&tmp_A.x1);//a+b
  fp3_set(&tmp3_fp3,&tmp_A.x0);
  fp_set(&tmp3_fp3.x1,&tmp_A.x1.x1);

  fp3_add(&tmp4_fp3,&tmp_B.x0,&tmp_B.x1);//c+d
  fp3_mul(&tmp5_fp3,&tmp3_fp3,&tmp4_fp3); //(a+b)(c+d)
  
  fp3_sub(&tmp3_fp3,&tmp5_fp3,&tmp1_fp3);//(a+b)(c+d) - ac
  fp3_sub(&ANS->x1,&tmp3_fp3,&tmp2_fp3);//(a+b)(c+d) - ac -bd
}

// void fp6_mul_lazy_montgomery(fp6_t *ANS,fp6_t *A,fp6_t *B){
//   static fp3_t tmp1,tmp2;

//   //set
//   fp3_mul_lazy_montgomery(&tmp2,&A->x1,&B->x1);//a1*b1
//   fp3_add_nonmod_single(&tmp1,&A->x0,&A->x1);//a0+a1
//   fp3_add_nonmod_single(&ANS->x1,&B->x0,&B->x1);//b0+b1
//   fp3_mul_lazy_montgomery(&ANS->x1,&tmp1,&ANS->x1);//(a0+a1)(b0+b1)
//   fp3_mul_lazy_montgomery(&tmp1,&A->x0,&B->x0);//a0*b0

//   //x0
//   fp3_mul_base(&ANS->x0,&tmp2);//(a1*b1)*alpha
//   fp3_add(&ANS->x0,&ANS->x0,&tmp1);//(a0*b0)+(a1*b1)*alpha

//   //x1
//   fp3_sub(&ANS->x1,&ANS->x1,&tmp1);//(a0+a1)(b0+b1)-a0*b0
//   fp3_sub(&ANS->x1,&ANS->x1,&tmp2);//(a0+a1)(b0+b1)-a0*b0-a1*b1
// }

void fp6_mul_ui(fp6_t *ANS,fp6_t *A,unsigned long int UI){
  fp3_mul_ui(&ANS->x0,&A->x0,UI);
  fp3_mul_ui(&ANS->x1,&A->x1,UI);
}

void fp6_mul_mpn(fp6_t *ANS,fp6_t *A,mp_limb_t *B){
  fp3_mul_mpn(&ANS->x0,&A->x0,B);
  fp3_mul_mpn(&ANS->x1,&A->x1,B);
}

void fp6_sqr(fp6_t *ANS,fp6_t *A){

  static fp6_t tmp_A;
  fp6_set(&tmp_A,A);

  static fp3_t tmp1_fp3,tmp2_fp3,tmp3_fp3,tmp4_fp3,tmp5_fp3,tmp6_fp3,tmp7_fp3,tmp8_fp3,tmp9_fp3;

  fp3_sqr(&tmp1_fp3, &tmp_A.x0);  //a^2
  fp3_sqr(&tmp2_fp3, &tmp_A.x1);  //b^2
  fp3_mul_base(&tmp3_fp3, &tmp2_fp3);  //b^2@^2
  fp3_add(&ANS->x0, &tmp1_fp3, &tmp3_fp3); //a^2+b^2@^

  fp3_add(&tmp3_fp3,&tmp_A.x0,&tmp_A.x1); //(a+b)
  fp3_sqr(&tmp3_fp3, &tmp3_fp3);  //(a+b)^2
  fp3_sub(&tmp3_fp3,&tmp3_fp3, &tmp1_fp3); //(a+b)^2 - a^2 
  fp3_sub(&ANS->x1,&tmp3_fp3, &tmp2_fp3); //(a+b)^2 - a^2 - b^2 
}

// void fp6_sqr_lazy_montgomery(fp6_t *ANS,fp6_t *A){
//   static fp3_t tmp1,tmp2,tmp3;

//   fp3_add_nonmod_single(&tmp1,&A->x0,&A->x1);
//   fp3_mul_base(&tmp2,&A->x1);
//   fp3_add_nonmod_single(&tmp2,&tmp2,&A->x0);
//   fp3_mul_lazy_montgomery(&tmp3,&A->x0,&A->x1);

//   //x0
//   fp3_mul_lazy_montgomery(&ANS->x0,&tmp1,&tmp2);
//   fp3_sub(&ANS->x0,&ANS->x0,&tmp3);
//   fp3_mul_base(&tmp1,&tmp3);
//   fp3_sub(&ANS->x0,&ANS->x0,&tmp1);

//   //x1
//   fp3_add(&ANS->x1,&tmp3,&tmp3);
// }

void fp6_add(fp6_t *ANS,fp6_t *A,fp6_t *B){
  fp3_add(&ANS->x0,&A->x0,&B->x0);
  fp3_add(&ANS->x1,&A->x1,&B->x1);

}

void fp6_add_lazy(fp6_t *ANS,fp6_t *A,fp6_t *B){
  fp3_add_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp3_add_nonmod_single(&ANS->x1,&A->x1,&B->x1);
}
void fp6_add_fp(fp6_t *ANS,fp6_t *A,fp_t *B){
  fp6_set(ANS,A);
  fp_add(&ANS->x0.x0,&ANS->x0.x0,B);
}
void fp6_add_ui(fp6_t *ANS,fp6_t *A,unsigned long int UI){
  fp3_add_ui(&ANS->x0,&A->x0,UI);
  fp3_set(&ANS->x1,&A->x1);
}

void fp6_add_ui_ui(fp6_t *ANS,fp6_t *A,unsigned long int UI){
  fp3_add_ui_ui(&ANS->x0,&A->x0,UI);
  fp3_add_ui_ui(&ANS->x1,&A->x1,UI);
}

void fp6_add_mpn(fp6_t *ANS,fp6_t *A,mp_limb_t *B){
  fp3_add_mpn(&ANS->x0,&A->x0,B);
  fp3_add_mpn(&ANS->x1,&A->x1,B);

}

void fp6_sub(fp6_t *ANS,fp6_t *A,fp6_t *B){
  fp3_sub(&ANS->x0,&A->x0,&B->x0);
  fp3_sub(&ANS->x1,&A->x1,&B->x1);
}

void fp6_sub_lazy(fp6_t *ANS,fp6_t *A,fp6_t *B){
  fp3_sub_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp3_sub_nonmod_single(&ANS->x1,&A->x1,&B->x1);
}

void fp6_sub_ui(fp6_t *ANS,fp6_t *A,unsigned long int UI){
  fp3_sub_ui(&ANS->x0,&A->x0,UI);
  fp3_set(&ANS->x1,&A->x1);
}

void fp6_sub_ui_ui(fp6_t *ANS,fp6_t *A,unsigned long int UI){
  fp3_sub_ui_ui(&ANS->x0,&A->x0,UI);
  fp3_sub_ui_ui(&ANS->x1,&A->x1,UI);

}

void fp6_sub_mpn(fp6_t *ANS,fp6_t *A,mp_limb_t *B){
  fp3_sub_mpn(&ANS->x0,&A->x0,B);
  fp3_sub_mpn(&ANS->x1,&A->x1,B);
}

void fp6_inv(fp6_t *ANS,fp6_t *A){
  static fp3_t tmp1_fp3,tmp2_fp3,tmp3_fp3,tmp4_fp3;
  fp3_set(&tmp1_fp3,&A->x0);  //a
  fp3_set_neg(&tmp2_fp3,&A->x1); //b

  fp3_sqr(&tmp3_fp3,&tmp1_fp3);  //a^2
  fp3_mul(&tmp4_fp3,&tmp2_fp3,&A->x1);  //b^2*c
  fp3_mul_base(&tmp4_fp3,&tmp4_fp3);
  fp3_add(&tmp3_fp3,&tmp3_fp3,&tmp4_fp3); //a^2 - b^2c //mabe need mul_base?

  fp3_inv(&tmp3_fp3,&tmp3_fp3);  //  (a^2 - b^2c)^-1
  fp3_mul(&ANS->x0,&tmp1_fp3,&tmp3_fp3); // a*(a^2- b^2c)^-1
  fp3_mul(&ANS->x1,&tmp2_fp3,&tmp3_fp3); //-b*(a^2 - b^2c)^-1

}

// void fp6_inv_lazy_montgomery(fp6_t *ANS,fp6_t *A){
//   static fp3_t tmp1,tmp2;

//   fp3_sqr_lazy_montgomery(&tmp1,&A->x0);
//   fp3_sqr_lazy_montgomery(&tmp2,&A->x1);
//   fp3_mul_base(&tmp2,&tmp2);
//   fp3_sub(&tmp1,&tmp1,&tmp2);//a0^2 -a1^2*alpha
//   fp3_inv_lazy_montgomery(&tmp1,&tmp1);

//   fp3_mul_lazy_montgomery(&ANS->x0,&A->x0,&tmp1);
//   fp3_set_neg(&tmp2,&A->x1);
//   fp3_mul_lazy_montgomery(&ANS->x1,&tmp2,&tmp1);
// }

int fp6_legendre(fp6_t *A){
  mpz_t expo;
  mpz_init(expo);
  fp6_t tmp;
  fp6_init(&tmp);

  mpz_pow_ui(expo,prime_z,6);
  mpz_sub_ui(expo,expo,1);
  mpz_tdiv_q_ui(expo,expo,2);
  fp6_pow(&tmp,A,expo);

  if(fp6_cmp_one(&tmp)==0){
    mpz_clear(expo);
    return 1;
  }
  else{
    mpz_clear(expo);
    return -1;
  }
}

void fp6_sqrt(fp6_t *ANS,fp6_t *A){
  fp6_t x,y,t,k,n,tmp;
  fp6_init(&x);
  fp6_init(&y);
  fp6_init(&t);
  fp6_init(&k);
  fp6_init(&n);
  fp6_init(&tmp);
  unsigned long int e,m;
  mpz_t exp,q,z,result;
  mpz_init(exp);
  mpz_init(q);
  mpz_init(z);
  mpz_init(result);
  //gmp_randstate_t state;
  //gmp_randinit_default (state);
  //gmp_randseed_ui(state,(unsigned long)time(NULL));

  fp6_set_random(&n,state);
  while(fp6_legendre(&n)!=-1){
    fp6_set_random(&n,state);
  }
  mpz_pow_ui(q,prime_z,6);
  mpz_sub_ui(q,q,1);
  mpz_mod_ui(result,q,2);
  e=0;
  while(mpz_cmp_ui(result,0)==0){
    mpz_tdiv_q_ui(q,q,2);
    mpz_mod_ui(result,q,2);
    e++;
  }
  fp6_pow(&y,&n,q);
  mpz_set_ui(z,e);
  mpz_sub_ui(exp,q,1);
  mpz_tdiv_q_ui(exp,exp,2);
  fp6_pow(&x,A,exp);
  fp6_mul(&tmp,&x,&x);
  fp6_mul(&k,&tmp,A);
  fp6_mul(&x,&x,A);
  while(fp6_cmp_one(&k)!=0){
    m=1;
    mpz_ui_pow_ui(exp,2,m);
    fp6_pow(&tmp,&k,exp);
    while(fp6_cmp_one(&tmp)!=0){
      m++;
      mpz_ui_pow_ui(exp,2,m);
      fp6_pow(&tmp,&k,exp);
    }
    mpz_sub_ui(exp,z,m);
    mpz_sub_ui(exp,exp,1);
    mpz_ui_pow_ui(result,2,mpz_get_ui(exp));
    fp6_pow(&t,&y,result);
    fp6_mul(&y,&t,&t);
    mpz_set_ui(z,m);
    fp6_mul(&x,&x,&t);
    fp6_mul(&k,&k,&y);
  }
  fp6_set(ANS,&x);

  mpz_clear(q);
  mpz_clear(z);
  mpz_clear(exp);
  mpz_clear(result);
}

void fp6_pow(fp6_t *ANS,fp6_t *A,mpz_t scalar){
  int i,length;
  length=(int)mpz_sizeinbase(scalar,2);
  char binary[length+1];
  mpz_get_str(binary,2,scalar);
  fp6_t tmp;
  fp6_init(&tmp);
  fp6_set(&tmp,A);

  for(i=1;i<length; i++){
    fp6_sqr(&tmp,&tmp);
    if(binary[i]=='1')  fp6_mul(&tmp,A,&tmp);
  }
  fp6_set(ANS,&tmp);
}

int  fp6_cmp(fp6_t *A,fp6_t *B){
  if(fp3_cmp(&A->x0,&B->x0)==0 && fp3_cmp(&A->x1,&B->x1)==0){
    return 0;
  }
  return 1;
}

int  fp6_cmp_ui(fp6_t *A,unsigned long int UI){
  if(fp3_cmp_ui(&A->x0,UI)==0 && fp3_cmp_ui(&A->x1,UI)==0){
    return 0;
  }
  return 1;
}

int  fp6_cmp_mpn(fp6_t *A,mp_limb_t *B){
  if(fp3_cmp_mpn(&A->x0,B)==0 && fp3_cmp_mpn(&A->x1,B)==0){
    return 0;
  }
  return 1;
}

int  fp6_cmp_zero(fp6_t *A){
  if(fp3_cmp_zero(&A->x0)==0 && fp3_cmp_zero(&A->x1)==0){
    return 0;
  }
  return 1;
}

int  fp6_cmp_one(fp6_t *A){
  if(fp3_cmp_one(&A->x0)==0 && fp3_cmp_zero(&A->x1)==0){
    return 0;
  }
  return 1;
}

// int fp6_montgomery_trick_montgomery(fp6_t *A_inv,fp6_t *A,int n){
//   int i;
//   fp6_t ANS[n],ALL_inv;
//   fp6_set(&ANS[0],&A[0]);
//   fp6_t check;

//   for(i=1;i<n;i++){
//     fp6_mul_lazy_montgomery(&ANS[i],&ANS[i-1],&A[i]);
//   }
//   fp6_inv_lazy_montgomery(&ALL_inv,&ANS[n-1]);
//   for(i=n-1;i>0;i--){
//     fp6_mul_lazy_montgomery(&A_inv[i],&ALL_inv,&ANS[i-1]);
//     fp6_mul_lazy_montgomery(&ALL_inv,&ALL_inv,&A[i]);
//   }

//   fp6_set(&A_inv[0],&ALL_inv);
//   return 0;
// }

void fp6_frobenius_map_p1(fp6_t *ANS,fp6_t *A){
  fp_set(&ANS->x0.x0,&A->x0.x0);
  fp_mul(&ANS->x0.x1,&A->x0.x1,&frobenius_2_6);
  fp_mul(&ANS->x0.x2,&A->x0.x2,&frobenius_4_6);

  fp_mul(&ANS->x1.x0,&A->x1.x0,&frobenius_1_6);
  fp_set_neg(&ANS->x1.x1,&A->x1.x1);
  fp_mul(&ANS->x1.x2,&A->x1.x2,&frobenius_5_6);
}

void fp6_frobenius_map_p2(fp6_t *ANS,fp6_t *A){ //not sure ...
  fp_set(&ANS->x0.x0,&A->x0.x0);
  fp_mul(&ANS->x0.x1,&A->x0.x1,&frobenius_4_6);
  fp_mul(&ANS->x0.x2,&A->x0.x2,&frobenius_2_6);

  fp_mul(&ANS->x1.x0,&A->x1.x0,&frobenius_2_6);
  fp_set(&ANS->x1.x1,&A->x1.x1);
  fp_mul(&ANS->x1.x2,&A->x1.x2,&frobenius_4_6);
}

void fp6_frobenius_map_p3(fp6_t *ANS,fp6_t *A){ //not sure ...
  fp_set(&ANS->x0.x0,&A->x0.x0);
  fp_set(&ANS->x0.x1,&A->x0.x1);
  fp_set(&ANS->x0.x2,&A->x0.x2);

  fp_set_neg(&ANS->x1.x0,&A->x1.x0);
  fp_set_neg(&ANS->x1.x1,&A->x1.x1);
  fp_set_neg(&ANS->x1.x2,&A->x1.x2);

}


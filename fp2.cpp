#include "fp2.h"
#include "fp.h"

void fp2_init(fp2_t *A){
  fp_init(&A->x0);
  fp_init(&A->x1);
}

void fp2_printf(std::string str ,fp2_t *A){
  gmp_printf("%s(",str.c_str());
  fp_printf("",&A->x0);
  gmp_printf(",");
  fp_printf("",&A->x1);
  gmp_printf(")\n");
}

void fp2_println(std::string str ,fp2_t *A){
  gmp_printf("%s(",str.c_str());
  fp_printf("",&A->x0);
  gmp_printf(",");
  fp_printf("",&A->x1);
  gmp_printf(")\n");
}

void fpd2_println(std::string str ,fpd2_t *A){
  gmp_printf("%s(",str.c_str());
  fpd_printf("",&A->x0);
  gmp_printf(",");
  fpd_printf("",&A->x1);
  gmp_printf(")\n");

}

void fp2_printf_montgomery(std::string str ,fp2_t *A){
  gmp_printf("%s(",str.c_str());
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

void fp2_set_conj(fp2_t *ANS,fp2_t *A){
  fp_set(&ANS->x0,&A->x0);
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

  static fp_t tmp1_fp,tmp2_fp,tmp3_fp,tmp4_fp,tmp5_fp;
  fp_mul(&tmp1_fp,&tmp_A.x0,&tmp_B.x0); //ac
  fp_mul(&tmp2_fp,&tmp_A.x1,&tmp_B.x1); //bd
  fp_mul_base(&tmp3_fp, &tmp2_fp);  //ab+bdΘ^2
  fp_add(&ANS->x0, &tmp1_fp, &tmp3_fp);  //ab+bdΘ^2

  fp_add(&tmp3_fp,&tmp_A.x0,&tmp_A.x1);//a+b
  fp_add(&tmp4_fp,&tmp_B.x0,&tmp_B.x1);//c+d
  fp_mul(&tmp5_fp,&tmp3_fp,&tmp4_fp); //(a+b)(c+d)
  
  fp_sub(&tmp3_fp,&tmp5_fp,&tmp1_fp);//(a+b)(c+d) - ac
  fp_sub(&ANS->x1,&tmp3_fp,&tmp2_fp);//(a+b)(c+d) - ac -bd
} 

void fp2_mul_ui(fp2_t *ANS,fp2_t *A,unsigned long int UI){
  fp_mul_ui(&ANS->x0,&A->x0,UI);
  fp_mul_ui(&ANS->x1,&A->x1,UI);
}

void fp2_mul_mpn(fp2_t *ANS,fp2_t *A,mp_limb_t *B){
  fp_mul_mpn(&ANS->x0,&A->x0,B);
  fp_mul_mpn(&ANS->x1,&A->x1,B);
}

void fp2_mul_mpn_montgomery(fp2_t *ANS,fp2_t *A,mp_limb_t *B){
  mpn_mulmod_montgomery(ANS->x0.x0,FPLIMB,A->x0.x0,FPLIMB,B,FPLIMB);
  mpn_mulmod_montgomery(ANS->x1.x0,FPLIMB,A->x1.x0,FPLIMB,B,FPLIMB);
}

void fp2_sqr(fp2_t *ANS,fp2_t *A){
  static fp2_t tmp_A;
  fp2_set(&tmp_A,A);

  static fp_t tmp1_fp,tmp2_fp,tmp3_fp;

  fp_sqr(&tmp1_fp, &tmp_A.x0);  //a^2
  fp_sqr(&tmp2_fp, &tmp_A.x1);  //b^2
  fp_mul_base(&tmp3_fp, &tmp2_fp);  //b^2@^2
  fp_add(&ANS->x0, &tmp1_fp, &tmp3_fp); //a^2+b^2@^

  fp_add(&tmp3_fp,&tmp_A.x0,&tmp_A.x1); //(a+b)
  fp_sqr(&tmp3_fp, &tmp3_fp);  //(a+b)^2
  fp_sub(&tmp3_fp,&tmp3_fp, &tmp1_fp); //(a+b)^2 - a^2 
  fp_sub(&ANS->x1,&tmp3_fp, &tmp2_fp); //(a+b)^2 - a^2 - b^2 

}

void fp2_sqr_final(fp2_t *ANS,fp2_t *A){
  static fp2_t tmp_A;
  fp2_set(&tmp_A,A);

  static fp_t tmp1_fp,tmp2_fp,tmp3_fp;

  fp_sqr(&tmp1_fp, &tmp_A.x0);  //a^2
  fp_add(&tmp2_fp, &tmp_A.x0, &tmp_A.x1);  //(a+b)
  fp_sqr(&tmp2_fp,&tmp2_fp);  //(a+b)^2

  fp_sub_ui(&tmp3_fp,&tmp1_fp,1);//a^2-1
  fp_add(&ANS->x0,&tmp3_fp,&tmp1_fp);//2a^2-1

  fp_mul_base_inv(&tmp3_fp,&tmp3_fp);//(a^2-1)/2
  
  fp_sub(&ANS->x1,&tmp2_fp,&tmp1_fp);//(a+b)^2 - a^2
  fp_sub(&ANS->x1,&ANS->x1, &tmp3_fp);//(a+b)^2 - a^2 - (a^2-1)/2
}

void fp2_add(fp2_t *ANS,fp2_t *A,fp2_t *B){
  fp_add(&ANS->x0,&A->x0,&B->x0);
  fp_add(&ANS->x1,&A->x1,&B->x1);

}

void fp2_add_nonmod_single(fp2_t *ANS,fp2_t *A,fp2_t *B){
  fp_add_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp_add_nonmod_single(&ANS->x1,&A->x1,&B->x1);

}

void fp2_add_nonmod_double(fpd2_t *ANS,fpd2_t *A,fpd2_t *B){
  fp_add_nonmod_double(&ANS->x0,&A->x0,&B->x0);
  fp_add_nonmod_double(&ANS->x1,&A->x1,&B->x1);

}

void fp2_add_ui(fp2_t *ANS,fp2_t *A,unsigned long int UI){
  fp_add_ui(&ANS->x0,&A->x0,UI);
  fp_set(&ANS->x1,&A->x1);

}

void fp2_add_ui_ui(fp2_t *ANS,fp2_t *A,unsigned long int UI){
  fp_add_ui(&ANS->x0,&A->x0,UI);
  fp_add_ui(&ANS->x1,&A->x1,UI);

}

void fp2_add_mpn(fp2_t *ANS,fp2_t *A,mp_limb_t *B){
  fp_add_mpn(&ANS->x0,&A->x0,B);
  fp_add_mpn(&ANS->x1,&A->x1,B);

}

void fp2_sub(fp2_t *ANS,fp2_t *A,fp2_t *B){
  fp_sub(&ANS->x0,&A->x0,&B->x0);
  fp_sub(&ANS->x1,&A->x1,&B->x1);

}

void fp2_sub_nonmod_single(fp2_t *ANS,fp2_t *A,fp2_t *B){
  fp_sub_nonmod_single(&ANS->x0,&A->x0,&B->x0);
  fp_sub_nonmod_single(&ANS->x1,&A->x1,&B->x1);

}

void fp2_sub_nonmod_double(fpd2_t *ANS,fpd2_t *A,fpd2_t *B){
  fp_sub_nonmod_double(&ANS->x0,&A->x0,&B->x0);
  fp_sub_nonmod_double(&ANS->x1,&A->x1,&B->x1);

;}

void fp2_sub_ui(fp2_t *ANS,fp2_t *A,unsigned long int UI){
  fp_sub_ui(&ANS->x0,&A->x0,UI);
  fp_set(&ANS->x1,&A->x1);

}

void fp2_sub_ui_ui(fp2_t *ANS,fp2_t *A,unsigned long int UI){
  fp_sub_ui(&ANS->x0,&A->x0,UI);
  fp_sub_ui(&ANS->x1,&A->x1,UI);

}

void fp2_sub_mpn(fp2_t *ANS,fp2_t *A,mp_limb_t *B){
  fp_sub_mpn(&ANS->x0,&A->x0,B);
  fp_sub_mpn(&ANS->x1,&A->x1,B);

}

void fp2_inv(fp2_t *ANS,fp2_t *A){  
	static fp_t tmp1_fp,tmp2_fp,tmp3_fp,tmp4_fp;
  fp_set(&tmp1_fp,&A->x0);  //a
  fp_set_neg(&tmp2_fp,&A->x1); //b

  fp_sqr(&tmp3_fp,&tmp1_fp);  //a^2
  fp_mul(&tmp4_fp,&tmp2_fp,&A->x1);  //b^2*c
  fp_mul_base(&tmp4_fp,&tmp4_fp);
  fp_add(&tmp3_fp,&tmp3_fp,&tmp4_fp); //a^2 - b^2c //mabe need mul_basis?

  fp_inv(&tmp3_fp,&tmp3_fp);  //  (a^2 - b^2c)^-1
  fp_mul(&ANS->x0,&tmp1_fp,&tmp3_fp); // a*(a^2- b^2c)^-1
  fp_mul(&ANS->x1,&tmp2_fp,&tmp3_fp); //-b*(a^2 - b^2c)^-1

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
  if(fp_cmp(&A->x0,&B->x0)==0 && fp_cmp(&A->x1,&B->x1)==0){
    return 0;
  }
  return 1;
}

int fp2_cmp_ui(fp2_t *A,unsigned long int UI){
  if(fp_cmp_ui(&A->x0,UI)==0 && fp_cmp_ui(&A->x1,UI)==0){
    return 0;
  }
  return 1;
}

int fp2_cmp_mpn(fp2_t *A,mp_limb_t *B){
  if(fp_cmp_mpn(&A->x0,B)==0 && fp_cmp_mpn(&A->x1,B)==0){
    return 0;
  }
  return 1;
}

int fp2_cmp_zero(fp2_t *A){
  if(fp_cmp_zero(&A->x0)==0 && fp_cmp_zero(&A->x1)==0 ){
    return 0;
  }
  return 1;
}

int fp2_cmp_one(fp2_t *A){
  if(fp_cmp_one(&A->x0)==0 && fp_cmp_zero(&A->x1)==0 ){
    return 0;
  }
  return 1;
}


void fp2_frobenius_map_p1(fp2_t *ANS,fp2_t *A){
  fp_set(&ANS->x0,&A->x0);
  fp_set_neg(&ANS->x1,&A->x1);
}

void fp2_mul_base(fp2_t *ANS,fp2_t *A){
  static fp2_t tmp_A;
  fp2_set(&tmp_A,A);

  fp_lshift_1(&ANS->x0,&tmp_A.x1);
  fp_set(&ANS->x1,&tmp_A.x0);    //@^2 = 2
}
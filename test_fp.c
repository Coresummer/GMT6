#include "test_fp.h"

void check_fp(){
  printf("check_fp() 開始\n");
  fp_t A,ANS;
  fp_init(&A);
  fp_init(&ANS);

  fp_set_random(&A,state);
  fp_println("A = ",&A);

  fp_inv(&ANS,&A);
  fp_println("A^-1 = ",&ANS);
  fp_mul(&ANS,&ANS,&A);
  fp_println("A * A^-1 = ",&ANS);
  printf("---------------------------------\n");

  printf("平方根アルゴリズムの確認\n");
  int flag=fp_legendre(&A);
  printf("fp_legendre(A) = %d\n",flag);
  if(flag==1){
    fp_sqrt(&ANS,&A);
    fp_println("fp_sqrt(A) = ",&ANS);
    //fp_mul(&ANS,&ANS,&ANS);
    fp_sqr(&ANS,&ANS);
    if(fp_cmp(&ANS,&A)==0){
      printf("(fp_sqrt(A))^2 = A\n\n");
    }
    else  printf("(fp_sqrt(A))^2 != A\n\n");
  }
  printf("---------------------------------\n");

  printf("フェルマーの小定理の確認\n");
  mpz_t tmp;
  mpz_init(tmp);
  mpz_sub_ui(tmp,prime_z,1);
  fp_pow(&ANS,&A,tmp);
  fp_println("A^(p-1) = ",&ANS);
  printf("---------------------------------\n");

  fp_println("A = ",&A);//Aが変わっていないことの確認

  printf("*********************************************************************************************\n\n");
}

void check_fp7(){
  printf("check_fp7() 開始\n");
  fp7_t A,ANS;
  fp7_init(&A);
  fp7_init(&ANS);

  fp7_set_random(&A,state);
  fp7_println("A = ",&A);

  fp7_inv(&ANS,&A);
  fp7_println("A^-1 = ",&ANS);
  fp7_mul(&ANS,&ANS,&A);
  fp7_println("A * A^-1 = ",&ANS);
  printf("---------------------------------\n");
  printf("平方根アルゴリズムの確認\n");
  int flag=fp7_legendre(&A);
  printf("fp7_legendre(A) = %d\n",flag);
  if(flag==1){
    fp7_sqrt(&ANS,&A);
    fp7_println("fp7_sqrt(A) = ",&ANS);
    //fp7_mul(&ANS,&ANS,&ANS);
    fp7_sqr(&ANS,&ANS);
    if(fp7_cmp(&ANS,&A)==0){
      printf("(fp7_sqrt(A))^2 = A\n\n");
    }
    else  printf("(fp7_sqrt(A))^2 != A\n\n");
  }
  printf("---------------------------------\n");

  printf("フェルマーの小定理の確認\n");
  mpz_t tmp;
  mpz_init(tmp);
  mpz_pow_ui(tmp,prime_z,7);
  mpz_sub_ui(tmp,tmp,1);
  fp7_pow(&ANS,&A,tmp);
  fp7_println("A^(p^7-1) = ",&ANS);
  printf("---------------------------------\n");

  fp7_println("A = ",&A);//Aが変わっていないことの確認

  printf("*********************************************************************************************\n\n");
}

void check_fp14(){
  printf("check_fp14() 開始\n");
  fp14_t A,ANS;
  fp14_init(&A);
  fp14_init(&ANS);

  fp14_set_random(&A,state);
  fp14_println("A = ",&A);

  fp14_inv(&ANS,&A);
  fp14_println("A^-1 = ",&ANS);
  fp14_mul(&ANS,&ANS,&A);
  fp14_println("A * A^-1 = ",&ANS);
  printf("---------------------------------\n");

  printf("平方根アルゴリズムの確認\n");
  int flag=fp14_legendre(&A);
  printf("fp14_legendre(A) = %d\n",flag);
  if(flag==1){
    fp14_sqrt(&ANS,&A);
    fp14_println("fp14_sqrt(A) = ",&ANS);
    //fp14_mul(&ANS,&ANS,&ANS);
    fp14_sqr(&ANS,&ANS);
    if(fp14_cmp(&ANS,&A)==0){
      printf("(fp14_sqrt(A))^2 = A\n\n");
    }
    else  printf("(fp14_sqrt(A))^2 != A\n\n");
  }
  printf("---------------------------------\n");

  printf("フェルマーの小定理の確認\n");
  mpz_t tmp;
  mpz_init(tmp);
  mpz_pow_ui(tmp,prime_z,14);
  mpz_sub_ui(tmp,tmp,1);
  fp14_pow(&ANS,&A,tmp);
  fp14_println("A^(p^14-1) = ",&ANS);
  printf("---------------------------------\n");

  fp14_println("A = ",&A);//Aが変わっていないことの確認

  printf("*********************************************************************************************\n\n");
}

void check_fp7_count(){
  printf("check_fp7_count() 開始\n");
  fp7_t A,B,ANS;
  fp7_init(&A);
  fp7_init(&B);
  fp7_init(&ANS);

  fp7_set_random(&A,state);
  fp7_set_random(&B,state);
  //fp7_println("A = ",&A);
  //fp7_println("B = ",&B);
  printf("---------------------------------\n");
  printf("fp7_mul() count\n");
  count_start();
  fp7_mul(&ANS,&A,&B);
  count_printf();
  printf("---------------------------------\n");
  printf("fp7_sqr() count\n");
  count_start();
  fp7_sqr(&ANS,&A);
  count_printf();
  printf("---------------------------------\n");
  printf("fp7_inv() count\n");
  count_start();
  fp7_inv(&ANS,&A);
  count_printf();
  printf("*********************************************************************************************\n\n");
}

void check_fp14_count(){
  printf("check_fp14_count() 開始\n");
  fp14_t A,B,ANS;
  fp14_init(&A);
  fp14_init(&B);
  fp14_init(&ANS);

  fp14_set_random(&A,state);
  fp14_set_random(&B,state);
  //fp14_println("A = ",&A);
  //fp14_println("B = ",&B);
  printf("---------------------------------\n");
  printf("fp14_mul() count\n");
  count_start();
  fp14_mul(&ANS,&A,&B);
  count_printf();
  printf("---------------------------------\n");
  printf("fp14_sqr() count\n");
  count_start();
  fp14_sqr(&ANS,&A);
  count_printf();
  printf("---------------------------------\n");
  printf("fp14_inv() count\n");
  count_start();
  fp14_inv(&ANS,&A);
  count_printf();
  printf("*********************************************************************************************\n\n");
}

void check_fp_time(){
  printf("check_fp_time() 開始\n");
  int loop=10000;//1万
  int max=100000;//10万
  int i,j;
  fp_t *a;
  fp_t *b;
  a=(fp_t *)malloc(max*sizeof(fp_t));
  b=(fp_t *)malloc(max*sizeof(fp_t));
  fp_t A,B,ANS;
  fpd_t ANS2;

  float overhead_time=0;
  float add_time=0;
  float add2_time=0;
  float lshift_time=0;
  float mul_time=0;
  float mul_mod_time=0;
  float mul_base_time=0;
  float sqr_time=0;
  float inv_time=0;
  float mod_time=0;

  //乱数生成
  for(i=0;i<max;i++){
    fp_set_random(&a[i],state);
    fp_set_random(&b[i],state);
  }
  //メモリアクセスのオーバーヘッド
  gettimeofday(&tv_start,NULL);
  for(j=0;j<loop;j++){
    for(i=0;i<max;i++){
      fp_set(&A,&a[i]);
      fp_set(&B,&b[i]);
    }
  }
  gettimeofday(&tv_end,NULL);
  overhead_time=timedifference_msec(tv_start,tv_end);

  //add (A+B)
  gettimeofday(&tv_start,NULL);
  for(j=0;j<loop;j++){
    for(i=0;i<max;i++){
      fp_set(&A,&a[i]);
      fp_set(&B,&b[i]);
      fp_add(&ANS,&A,&B);
    }
  }
  gettimeofday(&tv_end,NULL);
  add_time=timedifference_msec(tv_start,tv_end);
  add_time-=overhead_time;
  //add (A+A)
  gettimeofday(&tv_start,NULL);
  for(j=0;j<loop;j++){
    for(i=0;i<max;i++){
      fp_set(&A,&a[i]);
      fp_set(&B,&b[i]);
      fp_add(&ANS,&A,&A);
    }
  }
  gettimeofday(&tv_end,NULL);
  add2_time=timedifference_msec(tv_start,tv_end);
  add2_time-=overhead_time;
  //1bit_shift (A+A)
  gettimeofday(&tv_start,NULL);
  for(j=0;j<loop;j++){
    for(i=0;i<max;i++){
      fp_set(&A,&a[i]);
      fp_set(&B,&b[i]);
      fp_lshift_1(&ANS,&A);
    }
  }
  gettimeofday(&tv_end,NULL);
  lshift_time=timedifference_msec(tv_start,tv_end);
  lshift_time-=overhead_time;
  //mul
  gettimeofday(&tv_start,NULL);
  for(j=0;j<loop;j++){
    for(i=0;i<max;i++){
      fp_set(&A,&a[i]);
      fp_set(&B,&b[i]);
      fp_mul_nonmod(&ANS2,&A,&B);
    }
  }
  gettimeofday(&tv_end,NULL);
  mul_time=timedifference_msec(tv_start,tv_end);
  mul_time-=overhead_time;
  //mod
  gettimeofday(&tv_start,NULL);
  for(j=0;j<loop;j++){
    for(i=0;i<max;i++){
      fp_set(&A,&a[i]);
      fp_set(&B,&b[i]);
      fp_mul_nonmod(&ANS2,&A,&B);
      fp_mod(&ANS,ANS2.x0,FPLIMB2);
    }
  }
  gettimeofday(&tv_end,NULL);
  mod_time=timedifference_msec(tv_start,tv_end);
  mod_time-=mul_time;
  mod_time-=overhead_time;
  //mul_mod
  gettimeofday(&tv_start,NULL);
  for(j=0;j<loop;j++){
    for(i=0;i<max;i++){
      fp_set(&A,&a[i]);
      fp_set(&B,&b[i]);
      fp_mul(&ANS,&A,&B);
    }
  }
  gettimeofday(&tv_end,NULL);
  mul_mod_time=timedifference_msec(tv_start,tv_end);
  mul_mod_time-=overhead_time;
  //mul_base
  gettimeofday(&tv_start,NULL);
  for(j=0;j<loop;j++){
    for(i=0;i<max;i++){
      fp_set(&A,&a[i]);
      fp_set(&B,&b[i]);
      fp_mul_base(&ANS,&A);
    }
  }
  gettimeofday(&tv_end,NULL);
  mul_base_time=timedifference_msec(tv_start,tv_end);
  mul_base_time-=overhead_time;
  //sqr
  gettimeofday(&tv_start,NULL);
  for(j=0;j<loop;j++){
    for(i=0;i<max;i++){
      fp_set(&A,&a[i]);
      fp_set(&B,&b[i]);
      fp_sqr_nonmod(&ANS2,&A);
    }
  }
  gettimeofday(&tv_end,NULL);
  sqr_time=timedifference_msec(tv_start,tv_end);
  sqr_time-=overhead_time;
  //inv
  loop/=100;
  gettimeofday(&tv_start,NULL);
  for(j=0;j<loop;j++){
    for(i=0;i<max;i++){
      fp_set(&A,&a[i]);
      fp_set(&B,&b[i]);
      fp_inv(&ANS,&A);
    }
  }
  gettimeofday(&tv_end,NULL);
  inv_time=timedifference_msec(tv_start,tv_end);
  loop*=100;
  inv_time*=100;
  inv_time-=overhead_time;

  printf("overhead_time        :%.4f[s]\n",overhead_time/1000);
  printf("fp_add_time    (A+B) :%.4f[s]\n",add_time/1000);
  printf("fp_add_time    (A+A) :%.4f[s]\n",add2_time/1000);
  printf("fp_lshift_time (A+A) :%.4f[s]\n",lshift_time/1000);
  printf("fp_mul_time          :%.4f[s]\n",mul_time/1000);
  printf("fp_mul_mod_time      :%.4f[s]\n",mul_mod_time/1000);
  printf("fp_mul_base_time     :%.4f[s]\n",mul_base_time/1000);
  printf("fp_sqr_time          :%.4f[s]\n",sqr_time/1000);
  printf("fp_inv_time          :%.4f[s]\n",inv_time/1000);
  printf("fp_mod_time          :%.4f[s]\n",mod_time/1000);
  printf("*********************************************************************************************\n\n");
}

#include "field_test.h"
#include "fp.h"
/*----------------------------------------------------------------------------*/
//test
int test_fp(int fp_n) {
  int i, j, n = 0;
  float add_time = 0, add_lazy_time = 0;
  float sub_time = 0, sub_lazy_time = 0;
  float mul_time = 0, mul_lazy_time = 0;
  float inv_time = 0, inv_lazy_time = 0;
  float sqr_time = 0, sqr_lazy_time = 0;
  struct timeval tv_A, tv_B;
  mp_limb_t test1_mpn[FPLIMB2], test2_mpn[FPLIMB2];
  fp_t A_fp, B_fp, test1_fp, test2_fp;

  fp_init(&A_fp);
  fp_init(&B_fp);
  fp_init(&test1_fp);
  fp_init(&test2_fp);

  gmp_randinit_default(state);
  gmp_randseed_ui(state, (unsigned long)time(NULL));

  printf("------------------------------------------------------------------------------------\n");
  printf("fp_add test\n");
  add_time = 0, add_lazy_time = 0;
  n = 1000;
  for (i = 0; i < fp_n; i++) {
    fp_set_random(&A_fp, state);
    fp_set_random(&B_fp, state);

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_add(&test1_fp, &A_fp, &B_fp);
    gettimeofday(&tv_B, NULL);
    add_time += timedifference_msec(tv_A, tv_B) / n;

    gettimeofday(&tv_A, NULL);
    //for(j=0;j<n;j++)fp_add_lazy(test2_mpn,FPLIMB,A_fp.x0,FPLIMB,B_fp.x0,FPLIMB);
    gettimeofday(&tv_B, NULL);
    add_lazy_time += timedifference_msec(tv_A, tv_B) / n;
    fp_mod(&test2_fp, test2_mpn, FPLIMB);

    if (fp_cmp(&test1_fp, &test2_fp) != 0) {
      printf("failed!\n\n");
      fp_printf("", &test1_fp);
      fp_printf("\n", &test2_fp);
      printf("\n\n");
      return 1;
    }
  }
  printf("fp add.      : %.7f[ms]\n", add_time / fp_n);
  printf("fp add lazy. : %.7f[ms]\n", add_lazy_time / fp_n);

  printf("------------------------------------------------------------------------------------\n");
  printf("fp_sub test\n");
  sub_time = 0, sub_lazy_time = 0;
  n = 1000;
  for (i = 0; i < fp_n; i++) {
    fp_set_random(&A_fp, state);
    fp_set_random(&B_fp, state);

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_sub(&test1_fp, &A_fp, &B_fp);
    gettimeofday(&tv_B, NULL);
    sub_time += timedifference_msec(tv_A, tv_B) / n;

    gettimeofday(&tv_A, NULL);
    //for(j=0;j<n;j++)fp_sub_lazy(test2_mpn,FPLIMB,A_fp.x0,FPLIMB,B_fp.x0,FPLIMB);
    gettimeofday(&tv_B, NULL);
    sub_lazy_time += timedifference_msec(tv_A, tv_B) / n;
    fp_mod(&test2_fp, test2_mpn, FPLIMB);

    if (fp_cmp(&test1_fp, &test2_fp) != 0) {
      printf("failed!\n\n");
      fp_printf("", &test1_fp);
      fp_printf("\n", &test2_fp);
      printf("\n\n");
      return 1;
    }
  }
  printf("fp sub.      : %.7f[ms]\n", sub_time / fp_n);
  printf("fp sub lazy. : %.7f[ms]\n", sub_lazy_time / fp_n);

  printf("------------------------------------------------------------------------------------\n");
  printf("fp_mul test\n");
  mul_time = 0, mul_lazy_time = 0;
  n = 1000;
  for (i = 0; i < fp_n; i++) {
    fp_set_random(&A_fp, state);
    fp_set_random(&B_fp, state);

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_mul(&test1_fp, &A_fp, &B_fp);
    gettimeofday(&tv_B, NULL);
    mul_time += timedifference_msec(tv_A, tv_B) / n;

    gettimeofday(&tv_A, NULL);
    //for(j=0;j<n;j++)fp_mul_lazy(test2_mpn,A_fp.x0,B_fp.x0);
    gettimeofday(&tv_B, NULL);
    mul_lazy_time += timedifference_msec(tv_A, tv_B) / n;
    fp_mod(&test2_fp, test2_mpn, FPLIMB2);

    if (fp_cmp(&test1_fp, &test2_fp) != 0) {
      printf("failed!\n\n");
      fp_printf("", &test1_fp);
      fp_printf("\n", &test2_fp);
      printf("\n\n");
      return 1;
    }
  }

  printf("fp mul.      : %.6f[ms]\n", mul_time / fp_n);
  printf("fp mul lazy. : %.6f[ms]\n", mul_lazy_time / fp_n);

  printf("------------------------------------------------------------------------------------\n");
  printf("fp_sqr test\n");
  sqr_time = 0, sqr_lazy_time = 0;
  n = 1000;
  for (i = 0; i < fp_n; i++) {
    fp_set_random(&A_fp, state);

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_sqr(&test1_fp, &A_fp);
    gettimeofday(&tv_B, NULL);
    sqr_time += timedifference_msec(tv_A, tv_B) / n;

    gettimeofday(&tv_A, NULL);
    //for(j=0;j<n;j++)fp_sqr_lazy(test2_mpn,A_fp.x0);
    gettimeofday(&tv_B, NULL);
    sqr_lazy_time += timedifference_msec(tv_A, tv_B) / n;
    fp_mod(&test2_fp, test2_mpn, FPLIMB2);

    if (fp_cmp(&test1_fp, &test2_fp) != 0) {
      printf("failed!\n\n");
      fp_printf("", &test1_fp);
      fp_printf("\n", &test2_fp);
      printf("\n\n");
      return 1;
    }
  }
  printf("fp sqr.      : %.6f[ms]\n", sqr_time / fp_n);
  printf("fp sqr lazy. : %.6f[ms]\n", sqr_lazy_time / fp_n);

  printf("------------------------------------------------------------------------------------\n");
  printf("fp_inv test\n");
  inv_time = 0, inv_lazy_time = 0;
  n = 1000;
  for (i = 0; i < fp_n; i++) {
    fp_set_random(&A_fp, state);
    fp_set_random(&B_fp, state);

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_inv(&test1_fp, &A_fp);
    gettimeofday(&tv_B, NULL);
    inv_time += timedifference_msec(tv_A, tv_B) / n;
  }
  printf("fp inv.      : %.6f[ms]\n", inv_time / fp_n);

  return 0;
}
int test_fp2(int fp2_n) {
  int i, j, n = 0;
  float add_time = 0, add_lazy_time = 0;
  float sub_time = 0, sub_lazy_time = 0;
  float mul_time = 0, mul_lazy_time = 0;
  float inv_time = 0, inv_lazy_time = 0;
  float sqr_time = 0, sqr_lazy_time = 0;
  struct timeval tv_A, tv_B;
  fp2_t A_fp2, B_fp2, test1_fp2, test2_fp2;
  fpd2_t test2_fpd2;

  fp2_init(&A_fp2);
  fp2_init(&B_fp2);
  fp2_init(&test1_fp2);
  fp2_init(&test2_fp2);

  gmp_randinit_default(state);
  gmp_randseed_ui(state, (unsigned long)time(NULL));
  gmp_randseed_ui(state, 1);

  printf("------------------------------------------------------------------------------------\n");
  printf("fp2_mul test\n");
  mul_time = 0, mul_lazy_time = 0;
  n = 1;
  for (i = 0; i < fp2_n; i++) {
    fp2_set_random(&A_fp2, state);
    fp2_set_random(&B_fp2, state);
    fp2_to_montgomery(&A_fp2, &A_fp2);
    fp2_to_montgomery(&B_fp2, &B_fp2);

    gettimeofday(&tv_A, NULL);
    fp2_mul_lazy_montgomery(&test1_fp2, &A_fp2, &B_fp2);
    gettimeofday(&tv_B, NULL);
    mul_time += timedifference_msec(tv_A, tv_B) / n;
    fp2_to_montgomery(&B_fp2, &B_fp2);

    gettimeofday(&tv_A, NULL);
    fp2_mul_nonmod_montgomery(&test2_fpd2, &A_fp2, &B_fp2);
    gettimeofday(&tv_B, NULL);
    mul_lazy_time += timedifference_msec(tv_A, tv_B) / n;
    fp2_mod_montgomery_double(&test2_fp2, &test2_fpd2);
    fp2_mod_montgomery(&test2_fp2, &test2_fp2);

    if (fp2_cmp(&test1_fp2, &test2_fp2) != 0) {
      printf("failed!\n\n");
      fp2_printf("", &test1_fp2);
      fp2_printf("\n", &test2_fp2);
      printf("\n\n");
      return 1;
    }
  }
  printf("fp2 sqr.      : %.6f[ms]\n", sqr_time / fp2_n);
  printf("fp2 sqr lazy. : %.6f[ms]\n", sqr_lazy_time / fp2_n);

  printf("------------------------------------------------------------------------------------\n");
  printf("fp2_sqr test\n");
  sqr_time = 0, sqr_lazy_time = 0;
  n = 1;
  for (i = 0; i < fp2_n; i++) {
    fp2_set_random(&A_fp2, state);
    fp2_set_random(&B_fp2, state);
    fp2_to_montgomery(&A_fp2, &A_fp2);
    fp2_to_montgomery(&B_fp2, &B_fp2);

    gettimeofday(&tv_A, NULL);
    fp2_sqr_lazy_montgomery(&test1_fp2, &A_fp2);
    gettimeofday(&tv_B, NULL);
    sqr_time += timedifference_msec(tv_A, tv_B) / n;
    //fp2_to_montgomery(&B_fp2,&B_fp2);

    gettimeofday(&tv_A, NULL);
    fp2_sqr_nonmod_montgomery(&test2_fpd2, &A_fp2);
    gettimeofday(&tv_B, NULL);
    sqr_lazy_time += timedifference_msec(tv_A, tv_B) / n;
    fp2_mod_montgomery_double(&test2_fp2, &test2_fpd2);
    fp2_mod_montgomery(&test2_fp2, &test2_fp2);

    if (fp2_cmp(&test1_fp2, &test2_fp2) != 0) {
      printf("failed!\n\n");
      fp2_printf("", &test1_fp2);
      fp2_printf("\n", &test2_fp2);
      printf("\n\n");
      return 1;
    }
  }

  printf("fp2 sqr.      : %.6f[ms]\n", sqr_time / fp2_n);
  printf("fp2 sqr lazy. : %.6f[ms]\n", sqr_lazy_time / fp2_n);
  return 0;
}

int test_fp6(int fp6_n) {
  int i, j, n = 0;
  float add_time = 0, add_lazy_time = 0;
  float sub_time = 0, sub_lazy_time = 0;
  float mul_time = 0, mul_lazy_time = 0;
  float inv_time = 0, inv_lazy_time = 0;
  float sqr_time = 0, sqr_lazy_time = 0;
  struct timeval tv_A, tv_B;
  fp6_t A_fp6, B_fp6, test1_fp6, test2_fp6;

  fp6_init(&A_fp6);
  fp6_init(&B_fp6);
  fp6_init(&test1_fp6);
  fp6_init(&test2_fp6);

  gmp_randinit_default(state);
  gmp_randseed_ui(state, (unsigned long)time(NULL));
  gmp_randseed_ui(state, 1);
  /*
printf("------------------------------------------------------------------------------------\n");
    printf("fp6_add test\n");
add_time=0,add_lazy_time=0;
n=1000;
for(i=0;i<fp6_n;i++){
    fp6_set_random(&A_fp6,state);
    fp6_set_random(&B_fp6,state);

    gettimeofday(&tv_A,NULL);
    for(j=0;j<n;j++)fp6_add(&test1_fp6,&A_fp6,&B_fp6);
    gettimeofday(&tv_B,NULL);
    add_time+=timedifference_msec(tv_A,tv_B)/n;

    gettimeofday(&tv_A,NULL);
    for(j=0;j<n;j++)fp6_add_lazy(&test2_fp6,FPLIMB,&A_fp6,FPLIMB,&B_fp6,FPLIMB);
    gettimeofday(&tv_B,NULL);
    add_lazy_time+=timedifference_msec(tv_A,tv_B)/n;
    fp6_mod(&test2_fp6,&test2_fp6,FPLIMB);

    if(fp6_cmp(&test1_fp6,&test2_fp6)!=0){
        printf("failed!\n\n");
    	fp6_printf("",&test1_fp6);
	    fp6_printf("\n",&test2_fp6);
	    printf("\n\n");
	    return 1;
    }
}
    printf("fp6 add.      : %.7f[ms]\n",add_time/fp6_n);
    printf("fp6 add lazy. : %.7f[ms]\n",add_lazy_time/fp6_n);

printf("------------------------------------------------------------------------------------\n");
    printf("fp6_sub test\n");
sub_time=0,sub_lazy_time=0;
n=1000;
for(i=0;i<fp6_n;i++){
    fp6_set_random(&A_fp6,state);
    fp6_set_random(&B_fp6,state);

    gettimeofday(&tv_A,NULL);
    for(j=0;j<n;j++)fp6_sub(&test1_fp6,&A_fp6,&B_fp6);
    gettimeofday(&tv_B,NULL);
    sub_time+=timedifference_msec(tv_A,tv_B)/n;

    gettimeofday(&tv_A,NULL);
    for(j=0;j<n;j++)fp6_sub_lazy(&test2_fp6,FPLIMB,&A_fp6,FPLIMB,&B_fp6,FPLIMB);
    gettimeofday(&tv_B,NULL);
    sub_lazy_time+=timedifference_msec(tv_A,tv_B)/n;
    fp6_mod(&test2_fp6,&test2_fp6,FPLIMB);

    if(fp6_cmp(&test1_fp6,&test2_fp6)!=0){
        printf("failed!\n\n");
    	fp6_printf("",&test1_fp6);
	    fp6_printf("\n",&test2_fp6);
	    printf("\n\n");
	    return 1;
    }
}
    printf("fp6 sub.      : %.7f[ms]\n",sub_time/fp6_n);
    printf("fp6 sub lazy. : %.7f[ms]\n",sub_lazy_time/fp6_n);
    */
  printf("------------------------------------------------------------------------------------\n");
  printf("fp6_mul test\n");
  mul_time = 0, mul_lazy_time = 0;
  n = 1000;
  for (i = 0; i < fp6_n; i++) {
    fp6_set_random(&A_fp6, state);
    fp6_set_random(&B_fp6, state);
    fp6_to_montgomery(&A_fp6, &A_fp6);
    fp6_to_montgomery(&B_fp6, &B_fp6);

    //fp2_println("A->x0=",&A_fp6.x0);
    //fp2_println("B->x0=",&B_fp6.x0);
    //printf("\n\n");

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp6_mul_lazy_montgomery(&test1_fp6, &A_fp6, &B_fp6);
    gettimeofday(&tv_B, NULL);
    mul_time += timedifference_msec(tv_A, tv_B) / n;
    fp6_mod_montgomery(&test1_fp6, &test1_fp6);

    /*
    gettimeofday(&tv_A,NULL);
    for(j=0;j<n;j++)fp6_mul_lazy_montgomery2(&test2_fp6,&A_fp6,&B_fp6);
    gettimeofday(&tv_B,NULL);
    mul_lazy_time+=timedifference_msec(tv_A,tv_B)/n;
    fp6_mod_montgomery(&test2_fp6,&test2_fp6);
*/
    if (fp6_cmp(&test1_fp6, &test2_fp6) != 0) {
      printf("failed!\n\n");
      fp6_printf("", &test1_fp6);
      fp6_printf("\n", &test2_fp6);
      printf("\n\n");
      return 1;
    }
  }

  printf("fp6 mul.      : %.6f[ms]\n", mul_time / fp6_n);
  printf("fp6 mul lazy. : %.6f[ms]\n", mul_lazy_time / fp6_n);
  /*
    printf("------------------------------------------------------------------------------------\n");
    printf("fp6_sqr test\n");
sqr_time=0,sqr_lazy_time=0;
n=1000;
for(i=0;i<fp6_n;i++){
    fp6_set_random(&A_fp6,state);

    gettimeofday(&tv_A,NULL);
    for(j=0;j<n;j++)fp6_sqr(&test1_fp6,&A_fp6);
    gettimeofday(&tv_B,NULL);
    sqr_time+=timedifference_msec(tv_A,tv_B)/n;

    gettimeofday(&tv_A,NULL);
    for(j=0;j<n;j++)fp6_sqr_lazy(&test2_fp6,&A_fp6);
    gettimeofday(&tv_B,NULL);
    sqr_lazy_time+=timedifference_msec(tv_A,tv_B)/n;
    fp6_mod(&test2_fp6,&test2_fp6,FPLIMB2);

    if(fp6_cmp(&test1_fp6,&test2_fp6)!=0){
        printf("failed!\n\n");
    	fp6_printf("",&test1_fp6);
	    fp6_printf("\n",&test2_fp6);
	    printf("\n\n");
	    return 1;
    }
}
    printf("fp6 sqr.      : %.6f[ms]\n",sqr_time/fp6_n);
    printf("fp6 sqr lazy. : %.6f[ms]\n",sqr_lazy_time/fp6_n);

    printf("------------------------------------------------------------------------------------\n");
    printf("fp6_inv test\n");
inv_time=0,inv_lazy_time=0;
n=1000;
for(i=0;i<fp6_n;i++){
    fp6_set_random(&A_fp6,state);
    fp6_set_random(&B_fp6,state);

    gettimeofday(&tv_A,NULL);
    for(j=0;j<n;j++)fp6_inv(&test1_fp6,&A_fp6);
    gettimeofday(&tv_B,NULL);
    inv_time+=timedifference_msec(tv_A,tv_B)/n;

}
    printf("fp6 inv.      : %.6f[ms]\n",inv_time/fp6_n);
*/
  return 0;
}

int test_field(int fp_n, int fp2_n, int fp6_n, int sqr) {
  int i, j, n = 0;
  float add_time = 0, add_lazy_time = 0;
  float shift2_time = 0, shift4_time = 0, shift8_time = 0;
  float mul_time = 0, mul_lazy_time = 0;
  float inv_time = 0, inv_lazy_time = 0;
  float sqr_time = 0, sqr_lazy_time = 0;
  float com_time = 0, rec_time = 0, gs_time = 0;
  float com_lazy_time = 0, rec_lazy_time = 0, gs_lazy_time = 0;
  cost tmp_cost, fp2_mul_cost, fp6_mul_cost;

  efp6_t P, Q;
  fp6_t tmp, t0, t1, f;
  struct timeval tv_A, tv_B;

  printf("====================================================================================\n");
  printf("Field test\n");
  mp_limb_t test1_mpn[FPLIMB2], test2_mpn[FPLIMB2];
  fp_t A_fp, B_fp, test1_fp, test2_fp;
  fp2_t A_fp2, B_fp2, test1_fp2, test2_fp2;
  fp6_t A_fp6, B_fp6, test1_fp6, test2_fp6, test3_fp6;

  fp_init(&A_fp);
  fp_init(&B_fp);
  fp_init(&test1_fp);
  fp_init(&test2_fp);

  fp2_init(&A_fp2);
  fp2_init(&B_fp2);
  fp2_init(&test1_fp2);
  fp2_init(&test2_fp2);

  fp6_init(&A_fp6);
  fp6_init(&B_fp6);
  fp6_init(&test1_fp6);
  fp6_init(&test2_fp6);
  fp6_init(&test3_fp6);

  cost_init(&tmp_cost);
  cost_init(&fp2_mul_cost);
  cost_init(&fp6_mul_cost);

  gmp_randinit_default(state);
  gmp_randseed_ui(state, (unsigned long)time(NULL));

  if (fp_n > 0) {
    printf("------------------------------------------------------------------------------------\n");
    printf("fp_add test\n");
    add_time = 0, add_lazy_time = 0;
    n = 1000;
    for (i = 0; i < fp_n; i++) {
      fp_set_random(&A_fp, state);
      fp_set_random(&B_fp, state);

      gettimeofday(&tv_A, NULL);
      for (j = 0; j < n; j++) fp_add(&test1_fp, &A_fp, &B_fp);
      gettimeofday(&tv_B, NULL);
      add_time += timedifference_msec(tv_A, tv_B) / n;

      gettimeofday(&tv_A, NULL);
      //for(j=0;j<n;j++)fp_add_lazy(test2_mpn,FPLIMB,A_fp.x0,FPLIMB,B_fp.x0,FPLIMB);
      gettimeofday(&tv_B, NULL);
      add_lazy_time += timedifference_msec(tv_A, tv_B) / n;
      fp_mod(&test2_fp, test2_mpn, FPLIMB);

      if (fp_cmp(&test1_fp, &test2_fp) != 0) {
        printf("failed!\n\n");
        fp_printf("", &test1_fp);
        fp_printf("\n", &test2_fp);
        printf("\n\n");
        return 1;
      }
    }
    printf("fp add.      : %.6f[ms]\n", add_time / fp_n);
    printf("fp add lazy. : %.6f[ms]\n", add_lazy_time / fp_n);

    printf("------------------------------------------------------------------------------------\n");
    printf("fp_mul test\n");
    mul_time = 0, mul_lazy_time = 0;
    n = 1000;
    for (i = 0; i < fp_n; i++) {
      fp_set_random(&A_fp, state);
      fp_set_random(&B_fp, state);

      gettimeofday(&tv_A, NULL);
      for (j = 0; j < n; j++) fp_mul(&test1_fp, &A_fp, &B_fp);
      gettimeofday(&tv_B, NULL);
      mul_time += timedifference_msec(tv_A, tv_B) / n;

      gettimeofday(&tv_A, NULL);
      //for(j=0;j<n;j++)fp_mul_lazy(test2_mpn,A_fp.x0,B_fp.x0);
      gettimeofday(&tv_B, NULL);
      mul_lazy_time += timedifference_msec(tv_A, tv_B) / n;
      fp_mod(&test2_fp, test2_mpn, FPLIMB2);

      if (fp_cmp(&test1_fp, &test2_fp) != 0) {
        printf("failed!\n\n");
        fp_printf("", &test1_fp);
        fp_printf("\n", &test2_fp);
        printf("\n\n");
        return 1;
      }
    }

    printf("fp mul.      : %.6f[ms]\n", mul_time / fp_n);
    printf("fp mul lazy. : %.6f[ms]\n", mul_lazy_time / fp_n);

    printf("------------------------------------------------------------------------------------\n");
    printf("fp_sqr test\n");
    sqr_time = 0, sqr_lazy_time = 0;
    n = 1000;
    for (i = 0; i < fp_n; i++) {
      fp_set_random(&A_fp, state);

      gettimeofday(&tv_A, NULL);
      for (j = 0; j < n; j++) fp_sqr(&test1_fp, &A_fp);
      gettimeofday(&tv_B, NULL);
      sqr_time += timedifference_msec(tv_A, tv_B) / n;

      gettimeofday(&tv_A, NULL);
      //for(j=0;j<n;j++)fp_sqr_lazy(test2_mpn,A_fp.x0);
      gettimeofday(&tv_B, NULL);
      sqr_lazy_time += timedifference_msec(tv_A, tv_B) / n;
      fp_mod(&test2_fp, test2_mpn, FPLIMB2);

      if (fp_cmp(&test1_fp, &test2_fp) != 0) {
        printf("failed!\n\n");
        fp_printf("", &test1_fp);
        fp_printf("\n", &test2_fp);
        printf("\n\n");
        return 1;
      }
    }
    printf("fp sqr.      : %.6f[ms]\n", sqr_time / fp_n);
    printf("fp sqr lazy. : %.6f[ms]\n", sqr_lazy_time / fp_n);

    printf("------------------------------------------------------------------------------------\n");
    printf("fp_inv test\n");
    inv_time = 0, inv_lazy_time = 0;
    n = 1000;
    for (i = 0; i < fp_n; i++) {
      fp_set_random(&A_fp, state);
      fp_set_random(&B_fp, state);

      gettimeofday(&tv_A, NULL);
      for (j = 0; j < n; j++) fp_inv(&test1_fp, &A_fp);
      gettimeofday(&tv_B, NULL);
      inv_time += timedifference_msec(tv_A, tv_B) / n;
    }
    printf("fp inv.      : %.6f[ms]\n", inv_time / fp_n);
  }
  if (fp2_n > 0) {
    printf("------------------------------------------------------------------------------------\n");
    printf("fp2_add test\n");
    add_time = 0, add_lazy_time = 0;
    for (i = 0; i < fp2_n; i++) {
      fp2_set_random(&A_fp2, state);
      fp2_set_random(&B_fp2, state);

      gettimeofday(&tv_A, NULL);
      fp2_add(&test1_fp2, &A_fp2, &B_fp2);
      gettimeofday(&tv_B, NULL);
      add_time += timedifference_msec(tv_A, tv_B);
    }
    printf("fp2 add.      : %.6f[ms]\n", add_time / fp2_n);

    printf("------------------------------------------------------------------------------------\n");
    printf("fp2_shift test\n");
    shift2_time = 0, shift4_time = 0, shift8_time = 0;
    for (i = 0; i < fp2_n; i++) {
      fp2_set_random(&A_fp2, state);
      fp2_set_random(&B_fp2, state);

      gettimeofday(&tv_A, NULL);
      fp2_l1shift(&test1_fp2, &A_fp2);
      gettimeofday(&tv_B, NULL);
      shift2_time += timedifference_msec(tv_A, tv_B);

      gettimeofday(&tv_A, NULL);
      fp2_lshift(&test1_fp2, &A_fp2, 2);
      gettimeofday(&tv_B, NULL);
      shift4_time += timedifference_msec(tv_A, tv_B);

      gettimeofday(&tv_A, NULL);
      fp2_lshift(&test1_fp2, &A_fp2, 3);
      gettimeofday(&tv_B, NULL);
      shift8_time += timedifference_msec(tv_A, tv_B);
    }

    printf("fp2 shift2.      : %.6f[ms]\n", shift2_time / fp2_n);
    printf("fp2 shift4.      : %.6f[ms]\n", shift4_time / fp2_n);
    printf("fp2 shift8.      : %.6f[ms]\n", shift8_time / fp2_n);

    printf("------------------------------------------------------------------------------------\n");
    printf("fp2_mul test\n");
    mul_time = 0, mul_lazy_time = 0;
    n = 100;
    for (i = 0; i < fp2_n; i++) {
      fp2_set_random(&A_fp2, state);
      fp2_set_random(&B_fp2, state);

      cost_zero();
      gettimeofday(&tv_A, NULL);
      for (j = 0; j < n; j++) fp2_mul(&test1_fp2, &A_fp2, &B_fp2);
      gettimeofday(&tv_B, NULL);
      mul_time += timedifference_msec(tv_A, tv_B) / n;
      cost_check(&tmp_cost);
      cost_addition(&fp2_mul_cost, &tmp_cost);

      gettimeofday(&tv_A, NULL);
      for (j = 0; j < n; j++) fp2_mul_lazy(&test2_fp2, &A_fp2, &B_fp2);
      gettimeofday(&tv_B, NULL);
      mul_lazy_time += timedifference_msec(tv_A, tv_B) / n;

      if (fp2_cmp(&test1_fp2, &test2_fp2) != 0) {
        printf("failed!\n\n");
        fp2_printf("", &test1_fp2);
        fp2_printf("\n", &test2_fp2);
        printf("\n\n");
        return 1;
      }
    }
    printf("fp2 mul.      : %.6f[ms]\n", mul_time / fp2_n);
    printf("fp2 mul lazy. : %.6f[ms]\n", mul_lazy_time / fp2_n);
#ifdef DEBUG_COST_A
    printf("*********CP6 fp2 mul fp COST.********         \n");
    cost_printf("CP6 fp2 mul cost", &fp2_mul_cost, fp2_n * n);
    printf("***************************************         \n");
#endif

    printf("------------------------------------------------------------------------------------\n");
    printf("fp2_sqr test\n");
    sqr_time = 0, sqr_lazy_time = 0;
    n = 100;
    for (i = 0; i < fp2_n; i++) {
      fp2_set_random(&A_fp2, state);

      gettimeofday(&tv_A, NULL);
      for (j = 0; j < n; j++) fp2_sqr(&test1_fp2, &A_fp2);
      gettimeofday(&tv_B, NULL);
      sqr_time += timedifference_msec(tv_A, tv_B) / n;

      gettimeofday(&tv_A, NULL);
      for (j = 0; j < n; j++) fp2_sqr_lazy(&test2_fp2, &A_fp2);
      gettimeofday(&tv_B, NULL);
      sqr_lazy_time += timedifference_msec(tv_A, tv_B) / n;

      if (fp2_cmp(&test1_fp2, &test2_fp2) != 0) {
        printf("failed!\n\n");
        fp2_printf("", &test1_fp2);
        fp2_printf("\n", &test2_fp2);
        printf("\n\n");
        return 1;
      }
    }
    printf("fp2 sqr.      : %.6f[ms]\n", sqr_time / fp2_n);
    printf("fp2 sqr lazy. : %.6f[ms]\n", sqr_lazy_time / fp2_n);

    printf("------------------------------------------------------------------------------------\n");
    printf("fp2_inv test\n");
    inv_time = 0, inv_lazy_time = 0;
    n = 1000;
    for (i = 0; i < fp2_n; i++) {
      fp2_set_random(&A_fp2, state);
      fp2_set_random(&B_fp2, state);

      gettimeofday(&tv_A, NULL);
      for (j = 0; j < n; j++) fp2_inv(&test1_fp2, &A_fp2);
      gettimeofday(&tv_B, NULL);
      inv_time += timedifference_msec(tv_A, tv_B) / n;

      gettimeofday(&tv_A, NULL);
      for (j = 0; j < n; j++) fp2_inv_lazy(&test1_fp2, &A_fp2);
      gettimeofday(&tv_B, NULL);
      inv_lazy_time += timedifference_msec(tv_A, tv_B) / n;
    }
    printf("fp2 inv.      : %.6f[ms]\n", inv_time / fp2_n);
    printf("fp2 inv_lazy. : %.6f[ms]\n", inv_lazy_time / fp2_n);
  }
  if (fp6_n > 0) {
    printf("------------------------------------------------------------------------------------\n");
    printf("fp6_mul test\n");
    mul_time = 0, mul_lazy_time = 0;
    for (i = 0; i < fp6_n; i++) {
      fp6_set_random(&A_fp6, state);
      fp6_set_random(&B_fp6, state);

      cost_zero();
      gettimeofday(&tv_A, NULL);
      fp6_mul(&test1_fp6, &A_fp6, &B_fp6);
      gettimeofday(&tv_B, NULL);
      mul_time += timedifference_msec(tv_A, tv_B);
      cost_check(&tmp_cost);
      cost_addition(&fp6_mul_cost, &tmp_cost);

      gettimeofday(&tv_A, NULL);
      fp6_mul_lazy(&test2_fp6, &A_fp6, &B_fp6);
      gettimeofday(&tv_B, NULL);
      mul_lazy_time += timedifference_msec(tv_A, tv_B);

      if (fp6_cmp(&test1_fp6, &test2_fp6) != 0) {
        printf("failed!\n\n");
        fp6_printf("", &test1_fp6);
        fp6_printf("\n", &test2_fp6);
        printf("\n\n");
        return 1;
      }
    }

    printf("fp6 mul.       : %.4f[ms]\n", mul_time / fp6_n);
    printf("fp6 mul lazy.  : %.4f[ms]\n", mul_lazy_time / fp6_n);
#ifdef DEBUG_COST_A
    printf("*********CP6 fp6 mul fp COST.********         \n");
    cost_printf("CP6 fp6 mul cost", &fp6_mul_cost, fp6_n);
    printf("***************************************         \n");
#endif

    printf("------------------------------------------------------------------------------------\n");
    printf("fp6_sqr test\n");
    sqr_time = 0, sqr_lazy_time = 0;
    for (i = 0; i < fp6_n; i++) {
      fp6_set_random(&A_fp6, state);

      gettimeofday(&tv_A, NULL);
      fp6_sqr(&test1_fp6, &A_fp6);
      gettimeofday(&tv_B, NULL);
      sqr_time += timedifference_msec(tv_A, tv_B);

      gettimeofday(&tv_A, NULL);
      fp6_sqr_lazy(&test2_fp6, &A_fp6);
      gettimeofday(&tv_B, NULL);
      sqr_lazy_time += timedifference_msec(tv_A, tv_B);

      if (fp6_cmp(&test1_fp6, &test2_fp6) != 0) {
        printf("failed!\n\n");
        fp6_printf("", &test1_fp6);
        fp6_printf("\n", &test2_fp6);
        printf("\n\n");
        return 1;
      }
    }
    printf("fp6 sqr.      : %.4f[ms]\n", sqr_time / fp6_n);
    printf("fp6 sqr lazy. : %.4f[ms]\n", sqr_lazy_time / fp6_n);
  }
  return 0;
}

int test_fp_montgomery(int fp_n) {
  int i, j, n = 0;
  float add_time = 0, add_nonmod_single = 0, add_nonmod_double = 0;
  float lshift_nonmod_time = 0, l1shift_nonmod_time = 0, lshift3_nonmod_time = 0;
  float sub_time = 0, sub_nonmod_single = 0, sub_nonmod_double = 0;
  float mul_time = 0, mul_nonmod_time = 0;
  float inv_time = 0, inv_lazy_time = 0;
  float sqr_time = 0, sqr_nonmod = 0;
  float mod_time = 0;
  struct timeval tv_A, tv_B;
  mp_limb_t test1_mpn[FPLIMB2], test2_mpn[FPLIMB2];
  fp_t A_fp, B_fp, test1_fp, test2_fp;
  fpd_t A_fpd, B_fpd, test1_fpd, test2_fpd;

  fp_init(&A_fp);
  fp_init(&B_fp);
  fp_init(&test1_fp);
  fp_init(&test2_fp);

  // fpd_init(&A_fpd);
  // fpd_init(&B_fpd);
  // fpd_init(&test1_fpd);
  // fpd_init(&test2_fpd);

  gmp_randinit_default(state);
  gmp_randseed_ui(state, (unsigned long)time(NULL));

  printf("------------------------------------------------------------------------------------\n");
  printf("fp_add test\n");
  add_time = 0, add_nonmod_single = 0, add_nonmod_double = 0;
  n = 1000;
  for (i = 0; i < fp_n; i++) {
    fp_set_random_montgomery(&A_fp, state);
    fp_set_random_montgomery(&B_fp, state);
    fp_mul_nonmod(&A_fpd, &A_fp, &B_fp);
    fp_set_random_montgomery(&A_fp, state);
    fp_set_random_montgomery(&B_fp, state);
    fp_mul_nonmod(&B_fpd, &A_fp, &B_fp);

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_add(&test1_fp, &A_fp, &B_fp);
    gettimeofday(&tv_B, NULL);
    add_time += timedifference_msec(tv_A, tv_B) / n;

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_add_nonmod_single(&test2_fp, &A_fp, &B_fp);
    gettimeofday(&tv_B, NULL);
    add_nonmod_single += timedifference_msec(tv_A, tv_B) / n;

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_add_nonmod_double(&A_fpd, &A_fpd, &B_fpd);
    gettimeofday(&tv_B, NULL);
    add_nonmod_double += timedifference_msec(tv_A, tv_B) / n;

    fp_mod_montgomery(&test1_fp, &test1_fp);
    fp_mod_montgomery(&test2_fp, &test2_fp);

    if (fp_cmp(&test1_fp, &test2_fp) != 0) {
      printf("failed!\n\n");
      fp_printf("", &test1_fp);
      fp_printf("\n", &test2_fp);
      printf("\n\n");
      return 1;
    }
  }
  printf("fp add.        : %.7f[ms]\n", add_time / fp_n);
  printf("fp add nonmod. : %.7f[ms]\n", add_nonmod_single / fp_n);
  printf("fp add nonmod double. : %.7f[ms]\n", add_nonmod_double / fp_n);

  // printf("------------------------------------------------------------------------------------\n");
  //     printf("fp_lshift test\n");
  // lshift_nonmod_time=0,l1shift_nonmod_time=0,lshift3_nonmod_time=0;
  // n=1000;
  // for(i=0;i<fp_n;i++){
  //     fp_set_random_montgomery(&A_fp,state);
  //     fp_set_random_montgomery(&B_fp,state);

  //     gettimeofday(&tv_A,NULL);
  //     for(j=0;j<n;j++)fp_lshift_ui_nonmod_single(&test1_fp,&A_fp,1);
  //     //for(j=0;j<n;j++)fp_mul_ui_nonmod_single(&test1_fp,&A_fp,2);
  //     gettimeofday(&tv_B,NULL);
  //     lshift_nonmod_time+=timedifference_msec(tv_A,tv_B)/n;

  //     gettimeofday(&tv_A,NULL);
  //     for(j=0;j<n;j++)fp_lshift_ui_nonmod_single(&test2_fp,&A_fp,2);
  //     gettimeofday(&tv_B,NULL);
  //     l1shift_nonmod_time+=timedifference_msec(tv_A,tv_B)/n;

  //     // fp_mod_montgomery(&test1_fp,&test1_fp);
  //     // fp_mod_montgomery(&test2_fp,&test2_fp);

  //     // if(fp_cmp(&test1_fp,&test2_fp)!=0){
  //     //     printf("failed!\n\n");
  //     // 	fp_printf("",&test1_fp);
  // 	//     fp_printf("\n",&test2_fp);
  // 	//     printf("\n\n");
  // 	//     return 1;
  //     // }
  // }
  //     // printf("fp lshift1.        : %.7f[ms]\n",lshift_nonmod_time/fp_n);
  //     // printf("fp l1shift. : %.7f[ms]\n",l1shift_nonmod_time/fp_n);
  //     // printf("fp lshift3. : %.7f[ms]\n",lshift3_nonmod_time/fp_n);

  printf("------------------------------------------------------------------------------------\n");
  printf("fp_sub test\n");
  sub_time = 0, sub_nonmod_single = 0, sub_nonmod_double = 0;
  n = 1000;
  for (i = 0; i < fp_n; i++) {
    fp_set_random_montgomery(&A_fp, state);
    fp_set_random_montgomery(&B_fp, state);
    fp_mul_nonmod(&A_fpd, &A_fp, &B_fp);
    fp_set_random_montgomery(&A_fp, state);
    fp_set_random_montgomery(&B_fp, state);
    fp_mul_nonmod(&B_fpd, &A_fp, &B_fp);

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_sub(&test1_fp, &A_fp, &B_fp);
    gettimeofday(&tv_B, NULL);
    sub_time += timedifference_msec(tv_A, tv_B) / n;

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_sub_nonmod_single(&test2_fp, &A_fp, &B_fp);
    gettimeofday(&tv_B, NULL);
    sub_nonmod_single += timedifference_msec(tv_A, tv_B) / n;

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_sub_nonmod_double(&A_fpd, &A_fpd, &B_fpd);
    gettimeofday(&tv_B, NULL);
    sub_nonmod_double += timedifference_msec(tv_A, tv_B) / n;

    fp_mod_montgomery(&test1_fp, &test1_fp);
    fp_mod_montgomery(&test2_fp, &test2_fp);

    if (fp_cmp(&test1_fp, &test2_fp) != 0) {
      printf("failed!\n\n");
      fp_printf("", &test1_fp);
      fp_printf("\n", &test2_fp);
      printf("\n\n");
      return 1;
    }
  }
  printf("fp sub.      : %.7f[ms]\n", sub_time / fp_n);
  printf("fp sub nonmod single. : %.7f[ms]\n", sub_nonmod_single / fp_n);
  printf("fp sub nonmod double. : %.7f[ms]\n", sub_nonmod_double / fp_n);

  printf("------------------------------------------------------------------------------------\n");
  printf("fp_mul test\n");
  mul_time = 0, mul_nonmod_time = 0;
  n = 1000;
  for (i = 0; i < fp_n; i++) {
    fp_set_random_montgomery(&A_fp, state);
    fp_set_random_montgomery(&B_fp, state);

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_mulmod_montgomery(&test1_fp, &A_fp, &B_fp);
    gettimeofday(&tv_B, NULL);
    mul_time += timedifference_msec(tv_A, tv_B) / n;

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_mul_nonmod(&test2_fpd, &A_fp, &B_fp);
    gettimeofday(&tv_B, NULL);
    mul_nonmod_time += timedifference_msec(tv_A, tv_B) / n;
    fp_mod_montgomery(&test2_fp, &test2_fp);

    // if(fp_cmp(&test1_fp,&test2_fp)!=0){
    //     printf("failed!\n\n");
    // 	fp_printf("",&test1_fp);
    //     fp_printf("\n",&test2_fp);
    //     printf("\n\n");
    //     return 1;
    // }
  }

  printf("fp mulmod montgomery.      : %.6f[ms]\n", mul_time / fp_n);
  printf("fp mul nonmod. : %.6f[ms]\n", mul_nonmod_time / fp_n);

  printf("------------------------------------------------------------------------------------\n");
  printf("fp_sqr test\n");
  sqr_time = 0, sqr_nonmod = 0;
  n = 1000;
  for (i = 0; i < fp_n; i++) {
    fp_set_random(&A_fp, state);

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_sqrmod_montgomery(&test1_fp, &A_fp);
    gettimeofday(&tv_B, NULL);
    sqr_time += timedifference_msec(tv_A, tv_B) / n;

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_sqr_nonmod(&test2_fpd, &A_fp);
    gettimeofday(&tv_B, NULL);
    sqr_nonmod += timedifference_msec(tv_A, tv_B) / n;
    fp_mod(&test2_fp, test2_mpn, FPLIMB2);

    // if(fp_cmp(&test1_fp,&test2_fp)!=0){
    //     printf("failed!\n\n");
    // 	fp_printf("",&test1_fp);
    //     fp_printf("\n",&test2_fp);
    //     printf("\n\n");
    //     return 1;
    // }
  }
  printf("fp sqrmod montgomery.      : %.6f[ms]\n", sqr_time / fp_n);
  printf("fp sqr nonmod. : %.6f[ms]\n", sqr_nonmod / fp_n);

  printf("------------------------------------------------------------------------------------\n");
  printf("fp_inv test\n");
  inv_time = 0, inv_lazy_time = 0;
  n = 1000;
  for (i = 0; i < fp_n; i++) {
    fp_set_random(&A_fp, state);
    fp_set_random(&B_fp, state);

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) fp_inv_montgomery(&test1_fp, &A_fp);
    gettimeofday(&tv_B, NULL);
    inv_time += timedifference_msec(tv_A, tv_B) / n;
  }
  printf("fp inv montgomery.      : %.6f[ms]\n", inv_time / fp_n);

  printf("------------------------------------------------------------------------------------\n");
  printf("fp_inv test\n");
  mod_time = 0;
  n = 1000;
  for (i = 0; i < fp_n; i++) {
    fp_set_random(&A_fp, state);
    fp_set_random(&B_fp, state);
    fp_mul_nonmod(&A_fpd, &A_fp, &B_fp);

    gettimeofday(&tv_A, NULL);
    for (j = 0; j < n; j++) mpn_mod_montgomery(A_fp.x0, FPLIMB, A_fpd.x0, FPLIMB2);

    gettimeofday(&tv_B, NULL);
    mod_time += timedifference_msec(tv_A, tv_B) / n;
  }
  printf("fp mod montgomery.      : %.6f[ms]\n", mod_time / fp_n);

  printf("fp rate\n");
  printf("fp add.        : %.7f\n", (add_time / fp_n) / (add_time / fp_n));
  printf("fp add nonmod. : %.7f\n", (add_nonmod_single / fp_n) / (add_time / fp_n));
  printf("fp add nonmod double. : %.7f\n", (add_nonmod_double / fp_n) / (add_time / fp_n));

  printf("fp sub. : %.7f\n", (sub_time / fp_n) / (add_time / fp_n));
  printf("fp sub nonmod. : %.7f\n", (sub_nonmod_single / fp_n) / (add_time / fp_n));
  printf("fp sub nonmod double. : %.7f\n", (sub_nonmod_single / fp_n) / (add_time / fp_n));

  printf("fp mul mod. : %.7f\n", (mul_time / fp_n) / (add_time / fp_n));
  printf("fp mul nonmod. : %.7f[ms]\n", (mul_nonmod_time / fp_n) / (add_time / fp_n));
  printf("fp sqr mod. : %.7f[ms]\n", (sqr_time / fp_n) / (add_time / fp_n));
  printf("fp sqr nonmod. : %.7f[ms]\n", (sqr_nonmod / fp_n) / (add_time / fp_n));
  printf("fp inv. : %.7f[ms]\n", (inv_time / fp_n) / (add_time / fp_n));
  printf("fp mod montgomery. : %.7f[ms]\n", (mod_time / fp_n) / (add_time / fp_n));

  return 0;
}

void check_fp_montgomery(int loop){
  printf("--------------------CHECK FP MONTGOMERY--------------------\n");
  fp_t A,B,ANS;
  fp_t Am,Bm,ANSm;

  fp_init(&A);
  fp_init(&B);
  fp_init(&ANS);
  fp_init(&Am);
  fp_init(&Bm);
  fp_init(&ANSm);

  fp_set_random(&A,state);
  fp_set_random(&B,state);
  fp_mul(&ANS,&A,&B);
  fp_println("\nRegular A*B:", &ANS);

  fp_to_montgomery(&Am,&A);
  fp_to_montgomery(&Bm,&B);
  fp_mulmod_montgomery(&ANSm, &Am, &Bm);
  
  fp_println_montgomery("\nMontgomery mod A*B:", &ANSm);

}
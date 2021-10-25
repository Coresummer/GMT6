#include <cstdio>
#define CYBOZU_BENCH_USE_GETTIMEOFDAY
#include <cybozu/benchmark.hpp>
#include <gmp.h>
#include "field_test.h"
#define TTT_INSTANCE_HERE


#include "fp.h"
// #include "efp6.h"
// #include "miller.h"
// #include "final_exp.h"

void check_Fundamental_mul(int LOOP){
  printf("check_mul() 開始\n");
  fp_t A1,A2;
  fpd_t ANS1,ANS2;

  fp_init(&A1);
  fp_init(&A2);
  fpd_init(&ANS1);
  fpd_init(&ANS2);

  fp_set_random(&A1, state);
  fp_set_random(&A2, state);
  fp_println("A1: ", &A1);
  fp_println("A2: ", &A2);

  CYBOZU_BENCH_C("ExtInt_mul     :", LOOP, fp_mul_nonmod,&ANS1,&A1,&A2);
  fpd_println("ANS1: ", &ANS1);
  memset(&ANS2, 0, sizeof(ANS2));
  CYBOZU_BENCH_C("Self_ASN_mul() :", LOOP, fp_mul_nonmod_asm, &ANS2,&A1,&A2);
  fpd_println("ANS2: ", &ANS2);

  printf("*********************************************************************************************\n\n");
}


//check
void check_fp(){
  printf("check_fp() start\n");
  fp_t A, ANS;
  fp_init(&A);
  fp_init(&ANS);
  fp_set_random(&A,state);
  fp_println("A        = ",&A);
  fp_inv(&ANS,&A);
  fp_println("A^-1     = ",&ANS);
  fp_mul(&ANS,&ANS,&A);
  fp_println("A * A^-1 = ",&ANS);
  printf("---------------------------------\n");

  printf("check square root algorithm\n");
  int flag=fp_legendre(&A);
  printf("fp_legendre(A) = %d\n",flag);
  if(flag==1){
    fp_sqrt(&ANS,&A);
    fp_println("fp_sqrt(A) = ",&ANS);

    fp_sqr(&ANS,&ANS);

    if(fp_cmp(&ANS,&A)==0){
      printf("(fp_sqrt(A))^2 = A\n\n");
    }
    else  printf("(fp_sqrt(A))^2 != A\n\n");
    fp_println("A = ",&A);

  }
  printf("---------------------------------\n");

  printf("check fermert's little theorem\n");
  mpz_t tmp;
  mpz_init(tmp);
  mpz_sub_ui(tmp,prime_z,1);
  fp_pow(&ANS,&A,tmp);
  fp_println("A^(p-1) = ",&ANS);
  printf("---------------------------------\n");

  fp_println("A = ",&A);

  printf("*********************************************************************************************\n\n");
}


// void check_fp_with_montgomery(){
//   printf("********************CHECK FP WITH MONTGOMERY*************************************************\n\n");
//   printf("check_fp_with_montogomery() start...\n");
//   fp_t A, ANS;
//   fp_t Am, ANSm;

//   fp_init(&A);
//   fp_init(&ANS);
//   fp_init(&Am);
//   fp_init(&ANSm);
//   printf("---------------------------------\n");

//   fp_set_random(&A,state);
//   fp_println("A =  ",&A);
//   fp_to_montgomery(&Am, &A);
//   fp_println_montgomery("Am = ",&Am);

//   fp_inv(&ANS,&A);
//   fp_inv_montgomery(&ANSm,&Am);

//   fp_println("\nA^-1 =  ",&ANS);
//   fp_println_montgomery("Am^-1 = ",&ANSm);

//   fp_mul(&ANS,&ANS,&A);
//   fp_mulmod_montgomery(&ANSm,&ANSm,&Am);

//   fp_println("\nA * A^-1 =  ",&ANS);
//   fp_println_montgomery("Am * Am^-1 = ",&ANSm);
//   printf("---------------------------------\n");

//   printf("Check sqrt algorithm\n");
//   int flag=fp_legendre(&A);
//   printf("fp_legendre(A) = %d\n",flag);
//   if(flag==1){
//     fp_sqrt(&ANS,&A);   
//     fp_println("fp_sqrt(A) = ",&ANS);
//     fp_to_montgomery(&ANSm, &ANS);
//     fp_println_montgomery("fp_sqrt(Am) = ",&ANSm);

//     fp_sqr(&ANS,&ANS);
//     if(fp_cmp(&ANS,&A)==0){
//       printf("(fp_sqrt(A))^2 = A\n\n");
//     }
//     else  printf("(fp_sqrt(A))^2 != A\n\n");

//     fp_sqrmod_montgomery(&ANSm,&ANSm);
//     if(fp_cmp(&ANSm,&Am)==0){
//       printf("(fp_sqrt(Am))^2 = A\n\n");
//     }
//     else  printf("(fp_sqrt(Am))^2 != A\n\n");

//   }
//   printf("---------------------------------\n");

//   printf("Check Fermert's little theorem\n");
//   mpz_t tmp;
//   mpz_init(tmp);
//   mpz_sub_ui(tmp,prime_z,1);
//   fp_pow(&ANS,&A,tmp);
//   fp_println("A^(p-1) =  ",&ANS);

//   fp_pow_montgomery(&ANSm,&Am,tmp);
//   fp_println_montgomery("Am^(p-1) = ",&ANSm);
//   printf("---------------------------------\n");

//   fp_println("\nA =  ",&A);
//   fp_println_montgomery("Am = ",&Am);
//   printf("---------------------------------\n");


//   printf("*********************************************************************************************\n\n");
// }

// void check_fp2_with_montgomery(){
//   printf("********************CHECK FP2 WITH MONTGOMERY*************************************************\n\n");
//   printf("check_fp_with_montogomery() start...\n");
//   fp2_t A, ANS;
//   fp2_t Am, ANSm;

//   fp2_init(&A);
//   fp2_init(&ANS);
//   fp2_init(&Am);
//   fp2_init(&ANSm);
//   printf("---------------------------------\n");

//   fp2_set_random(&A,state);
//   fp2_println("A =  ",&A);
//   fp2_to_montgomery(&Am, &A);
//   fp2_println_montgomery("Am = ",&Am);

//   fp2_inv(&ANS,&A);
//   fp2_inv_lazy_montgomery(&ANSm,&Am);

//   fp2_println("\nA^-1 =  ",&ANS);
//   fp2_println_montgomery("Am^-1 = ",&ANSm);

//   fp2_mul(&ANS,&ANS,&A);
//   fp2_mul_lazy_montgomery(&ANSm,&ANSm,&Am);

//   fp2_println("\nA * A^-1 =  ",&ANS);
//   fp2_println_montgomery("Am * Am^-1 = ",&ANSm);
//   printf("---------------------------------\n");

//   printf("Check sqrt algorithm\n");
//   int flag=fp2_legendre(&A);
//   printf("fp_legendre(A) = %d\n",flag);
//   if(flag==1){
//     fp2_sqrt(&ANS,&A);
//     fp2_println("fp_sqrt(A) = ",&ANS);
//     fp2_to_montgomery(&ANSm, &ANS);
//     fp2_println_montgomery("fp_sqrt(Am) = ",&ANSm);

//     fp2_sqr(&ANS,&ANS);
//     if(fp2_cmp(&ANS,&A)==0){
//       printf("(fp_sqrt(A))^2 = A\n\n");
//     }
//     else  printf("(fp_sqrt(A))^2 != A\n\n");

//     fp2_sqr_lazy_montgomery(&ANSm,&ANSm);
//     if(fp2_cmp(&ANSm,&Am)==0){
//       printf("(fp_sqrt(Am))^2 = A\n\n");
//     }
//     else  printf("(fp_sqrt(Am))^2 != A\n\n");

//   }
//   printf("---------------------------------\n");

//   printf("Check Fermert's little theorem\n");
//   mpz_t tmp;
//   mpz_init(tmp);
//   mpz_pow_ui(tmp,prime_z,2);
//   mpz_sub_ui(tmp,tmp,1);
//   fp2_pow(&ANS,&A,tmp);
//   fp2_println("A^(p^2-1) =  ",&ANS);

//   fp2_pow_montgomery(&ANSm,&Am,tmp);
//   fp2_println_montgomery("Am^(p^2-1) = ",&ANSm);
//   printf("---------------------------------\n");

//   fp2_println("\nA =  ",&A);
//   fp2_println_montgomery("Am = ",&Am);
//   printf("---------------------------------\n");
//   printf("*********************************************************************************************\n\n");
// }


// void check_fp6_with_montgomery(){
//   printf("********************CHECK FP2 WITH MONTGOMERY*************************************************\n\n");
//   printf("check_fp_with_montogomery() start...\n");
//   fp6_t A, ANS;
//   fp6_t Am, ANSm;

//   fp6_init(&A);
//   fp6_init(&ANS);
//   fp6_init(&Am);
//   fp6_init(&ANSm);
//   printf("---------------------------------\n");

//   fp6_set_random(&A,state);
//   fp6_println("A =  ",&A);
//   fp6_to_montgomery(&Am, &A);
//   fp6_println_montgomery("Am = ",&Am);

//   fp6_inv(&ANS,&A);
//   fp6_inv_lazy_montgomery(&ANSm,&Am);

//   fp6_println("\nA^-1 =  ",&ANS);
//   fp6_println_montgomery("Am^-1 = ",&ANSm);

//   fp6_mul(&ANS,&ANS,&A);
//   fp6_mul_lazy_montgomery(&ANSm,&ANSm,&Am);

//   fp6_println("\nA * A^-1 =  ",&ANS);
//   fp6_println_montgomery("Am * Am^-1 = ",&ANSm);
//   printf("---------------------------------\n");

//   printf("Check sqrt algorithm\n");
//   int flag=fp6_legendre(&A);
//   printf("fp6_legendre(A) = %d\n",flag);
//   if(flag==1){
//     fp6_sqrt(&ANS,&A);
//     fp6_println("fp6_sqrt(A) = ",&ANS);
//     fp6_to_montgomery(&ANSm, &ANS);
//     fp6_println_montgomery("fp6_sqrt(Am) = ",&ANSm);

//     fp6_sqr(&ANS,&ANS);
//     if(fp6_cmp(&ANS,&A)==0){
//       printf("(fp6_sqrt(A))^6 = A\n\n");
//     }
//     else  printf("(fp_6sqrt(A))^6 != A\n\n");

//     fp6_sqr_lazy_montgomery(&ANSm,&ANSm);
//     if(fp6_cmp(&ANSm,&Am)==0){
//       printf("(fp6_sqrt(Am))^6 = A\n\n");
//     }
//     else  printf("(fp6_sqrt(Am))^6 != A\n\n");

//   }
//   printf("---------------------------------\n");

//   printf("Check Fermert's little theorem\n");
//   mpz_t tmp;
//   mpz_init(tmp);
//   mpz_pow_ui(tmp,prime_z,6);
//   mpz_sub_ui(tmp,tmp,1);
//   fp6_pow(&ANS,&A,tmp);
//   fp6_println("A^(p^6-1) =  ",&ANS);

//   fp6_pow_montgomery(&ANSm,&Am,tmp);
//   fp6_println_montgomery("Am^(p^6-1) = ",&ANSm);
//   printf("---------------------------------\n");

//   fp6_println("\nA =  ",&A);
//   fp6_println_montgomery("Am = ",&Am);
//   printf("---------------------------------\n");
//   printf("*********************************************************************************************\n\n");
// }


/*----------------------------------------------------------------------------*/

// void BENCH_fp2_fp6_mul_lazy_montgomery(int LOOP){
//   printf("============================================================================\n");
//   printf("-------------------------------fp, fp2, fp6 BENCHMARK-----------------------\n");
//   printf("============================================================================\n");

//   fp_t ANS_fp, ANSm_fp, A_fp,Am_fp ,B_fp,Bm_fp;
//   fp_init(&A_fp);
//   fp_init(&Am_fp);
//   fp_init(&B_fp);
//   fp_init(&Bm_fp);
//   fp_init(&ANS_fp);
//   fp_init(&ANSm_fp);

//   fp_set_random(&A_fp,state);
//   fp_to_montgomery(&Am_fp, &A_fp);
//   fp_set_random(&B_fp,state);
//   fp_to_montgomery(&Bm_fp, &B_fp);

//   CYBOZU_BENCH_C("fp_mul()", LOOP, fp_mul,&ANS_fp,&A_fp,&B_fp);
//   CYBOZU_BENCH_C("fp_mul_lazy_montgomery()", LOOP, fp_mulmod_montgomery, &ANSm_fp,&Am_fp,&Bm_fp);
//   fp_println("ANS:", &ANS_fp);
//   fp_println_montgomery("ANSm:", &ANSm_fp);

//   CYBOZU_BENCH_C("fp_sqr()", LOOP, fp_sqr,&ANS_fp,&A_fp);
//   CYBOZU_BENCH_C("fp_sqr_lazy_montgomery()", LOOP, fp_sqrmod_montgomery, &ANSm_fp,&Am_fp);
//   fp_println("ANS:", &ANS_fp);
//   fp_println_montgomery("ANSm:", &ANSm_fp);

//   fp2_t ANS_fp2, ANSm_fp2, A_fp2,Am_fp2 ,B_fp2,Bm_fp2;
//   fp2_init(&A_fp2);
//   fp2_init(&Am_fp2);
//   fp2_init(&B_fp2);
//   fp2_init(&Bm_fp2);
//   fp2_init(&ANS_fp2);
//   fp2_init(&ANSm_fp2);

//   fp2_set_random(&A_fp2,state);
//   fp2_to_montgomery(&Am_fp2, &A_fp2);
//   fp2_set_random(&B_fp2,state);
//   fp2_to_montgomery(&Bm_fp2, &B_fp2);

//   CYBOZU_BENCH_C("fp2_mul()", LOOP, fp2_mul,&ANS_fp2,&A_fp2,&B_fp2);
//   CYBOZU_BENCH_C("fp2_mul_lazy_montgomery()", LOOP, fp2_mul_lazy_montgomery, &ANSm_fp2,&Am_fp2,&Bm_fp2);
//   fp2_println("ANS:", &ANS_fp2);
//   fp2_println_montgomery("ANSm:", &ANSm_fp2);

//   CYBOZU_BENCH_C("fp2_sqr()", LOOP, fp2_sqr,&ANS_fp2,&A_fp2);
//   CYBOZU_BENCH_C("fp2_sqr_lazy_montgomery()", LOOP, fp2_sqr_lazy_montgomery, &ANSm_fp2,&Am_fp2);
//   fp2_println("ANS:", &ANS_fp2);
//   fp2_println_montgomery("ANSm:", &ANSm_fp2);


//   fp6_t ANS_fp6, ANSm_fp6, A_fp6,Am_fp6 ,B_fp6,Bm_fp6;
//   fp6_init(&A_fp6);
//   fp6_init(&Am_fp6);
//   fp6_init(&B_fp6);
//   fp6_init(&Bm_fp6);
//   fp6_init(&ANS_fp6);
//   fp6_init(&ANSm_fp6);

//   fp6_set_random(&A_fp6,state);
//   fp6_to_montgomery(&Am_fp6, &A_fp6);
//   fp6_set_random(&B_fp6,state);
//   fp6_to_montgomery(&Bm_fp6, &B_fp6);

//   CYBOZU_BENCH_C("fp6_mul()", LOOP, fp6_mul,&ANS_fp6,&A_fp6,&B_fp6);
//   CYBOZU_BENCH_C("fp6_mul_lazy_montgomery()", LOOP, fp6_mul_lazy_montgomery, &ANSm_fp6,&Am_fp6,&Bm_fp6);
//   fp6_println("ANS:", &ANS_fp6);
//   fp6_println_montgomery("ANSm:", &ANSm_fp6);

//   CYBOZU_BENCH_C("fp6_sqr()", LOOP, fp6_sqr,&ANS_fp6,&A_fp6);
//   CYBOZU_BENCH_C("fp6_sqr_lazy_montgomery()", LOOP, fp6_sqr_lazy_montgomery, &ANSm_fp6,&Am_fp6);
//   fp6_println("ANS:", &ANS_fp6);
//   fp6_println_montgomery("ANSm:", &ANSm_fp6);

//   CYBOZU_BENCH_C("fp6_mul_sparse_add()", LOOP, fp6_mul_sparse_add,&ANS_fp6,&A_fp6,&B_fp6);
//   CYBOZU_BENCH_C("fp6_mul_sparse_add_lazy_montgomery()", LOOP, fp6_mul_sparse_add_lazy_montgomery, &ANSm_fp6,&Am_fp6,&Bm_fp6);
//   fp6_println("ANS:", &ANS_fp6);
//   fp6_println_montgomery("ANSm:", &ANSm_fp6);

//   CYBOZU_BENCH_C("fp6_mul_sparse_dbl()", LOOP, fp6_mul_sparse_dbl,&ANS_fp6,&A_fp6,&B_fp6);
//   CYBOZU_BENCH_C("fp6_mul_sparse_dbl_lazy_montgomery()", LOOP, fp6_mul_sparse_dbl_lazy_montgomery, &ANSm_fp6,&Am_fp6,&Bm_fp6);
//   fp6_println("ANS:", &ANS_fp6);
//   fp6_println_montgomery("ANSm:", &ANSm_fp6);

// }

// void BENCH_miller_lazy_montgomery(int LOOP){
//   printf("============================================================================\n");
//   printf("--------------------------------------ltpq, lttp----------------------------\n");
//   printf("============================================================================\n");

//   efp6_t P,Q;
//   fp6_t f,e1,e2;
//   fp6_t fm,e1m,e2m;

//   mpz_t a,b,ab;
//   efp6_init(&P);
//   efp6_init(&Q);

//   fp6_init(&f);
//   fp6_init(&e1);
//   fp6_init(&e2);
//   fp6_init(&fm);
//   fp6_init(&e1m);
//   fp6_init(&e2m);
//   mpz_init(a);
//   mpz_init(b);
//   mpz_init(ab);

//   generate_g1(&P);
//   generate_g2(&Q);

//   static efp_t mapped_P,mapped_Q,mapped_Q_neg;
//   static efp_t mapped_Pm,mapped_Qm,mapped_Q_negm;
//   static efp_jacobian_t S;
//   static efp_jacobian_t Sm;
// //------------------Regular-----------------------
//   fp6_set_ui_ui(&f,0);
//   fp_set_ui(&f.x0.x0,1);

//   fp_set(&mapped_P.x,&P.x.x0.x0);
//   fp_set(&mapped_P.y,&P.y.x0.x0);
//   mapped_P.infinity = 0;

//   efp6_to_efp(&mapped_Q,&Q);//twist
//   efp6_to_Jacefp(&S,&Q);
//   efp_set_neg(&mapped_Q_neg,&mapped_Q);
// //------------------Montgomery-----------------------
//   fp6_set_ui_ui(&fm,0);
//   fp_set_ui(&fm.x0.x0,1);
//   fp_to_montgomery(&fm.x0.x0, &fm.x0.x0);

//   fp_to_montgomery(&mapped_Pm.x,&P.x.x0.x0);
//   fp_to_montgomery(&mapped_Pm.y,&P.y.x0.x0);
//   mapped_Pm.infinity = 0;

//   efp6_to_efp_montgomery(&mapped_Qm,&Q);//twist
//   efp6_to_Jacefp_montgomery(&Sm,&Q);
//   efp_set_neg_montgomery(&mapped_Q_negm,&mapped_Q);//here
// //-----------------------------------------

//   CYBOZU_BENCH_C("ff_lttp()", LOOP, ff_lttp,&f,&S,&mapped_Q);
//   CYBOZU_BENCH_C("ff_lttp_lazy_montgomery()", LOOP, ff_lttp_lazy_montgomery, &fm,&Sm,&mapped_Qm);
//   fp6_println("ANS:", &f);
//   fp6_println_montgomery("ANSm:", &fm);
//   fp6_set_ui_ui(&f,0);
//   fp_set_ui(&f.x0.x0,1);
//   fp6_set_ui_ui(&fm,0);
//   fp_set_ui(&fm.x0.x0,1);
//   fp_to_montgomery(&fm.x0.x0, &fm.x0.x0);

//   CYBOZU_BENCH_C("ff_ltpq()", LOOP, ff_ltqp,&f,&S,&mapped_Q,&mapped_P);
//   CYBOZU_BENCH_C("ff_ltpq_lazy_montgomery()", LOOP, ff_ltqp_lazy_montgomery, &fm,&Sm,&mapped_Qm,&mapped_Pm);
//   fp6_println("ANS:", &f);
//   fp6_println_montgomery("ANSm:", &fm);

//   printf("============================================================================\n");
//   printf("--------------------------------------Miller--------------------------------\n");
//   printf("============================================================================\n");


//   CYBOZU_BENCH_C("miller_opt_ate_proj_2NAF()", LOOP, miller_opt_ate_proj_2NAF,&f,&P,&Q);
//   fp6_println("ANS:", &f);
//   CYBOZU_BENCH_C("miller_opt_ate_proj_2NAF_lazy_montgomery()", LOOP, miller_opt_ate_proj_2NAF_lazy_montgomery,&fm,&P,&Q);
//   fp6_println_montgomery("ANSm:", &fm);
// }

// void BENCH_finalexp_lazy_montgomery(int LOOP){
//   printf("********************CHECK Finalexp WITH MONTGOMERY*************************************************\n\n");
//   printf("check_finalexp_with_montogomery() start...\n");
//   fp6_t A, ANS;
//   fp6_t Am, ANSm;

//   fp6_init(&A);
//   fp6_init(&ANS);
//   fp6_init(&Am);
//   fp6_init(&ANSm);

//   fp6_set_random(&A, state);
//   fp6_to_montgomery(&Am, &A);

//   CYBOZU_BENCH_C("fp6_sqr_GS()", LOOP, fp6_sqr_GS,&ANS, &A);
//   CYBOZU_BENCH_C("fp6_sqr_GS_lazy_montgomery()", LOOP, fp6_sqr_GS_lazy_montgomery, &ANSm, &Am);

//   fp6_println("fp6_sqr_GS\n", &ANS);
//   fp6_println_montgomery("fp6_sqr_GS_lazy_montgomery\n", &ANSm);

//   CYBOZU_BENCH_C("fp6_finalexpow_x_2NAF()", LOOP, fp6_finalexpow_x_2NAF,&ANS, &A);
//   CYBOZU_BENCH_C("fp6_finalexpow_x_2NAF_lazy_montgomery()", LOOP, fp6_finalexpow_x_2NAF_lazy_montgomery, &ANSm, &Am);

//   fp6_println("fp6_finalexpow_x_2NAF\n", &ANS);
//   fp6_println_montgomery("fp6_finalexpow_x_2NAF_lazy_montgomery\n", &ANSm);

//   CYBOZU_BENCH_C("final_exp()", LOOP, final_exp,&ANS, &A);
//   CYBOZU_BENCH_C("final_exp_lazy_montgomery()", LOOP, final_exp_lazy_montgomery2, &ANSm, &Am);

//   fp6_println("final_exp\n", &ANS);
//   fp6_println_montgomery("final_exp_lazy_montgomery2\n", &ANSm);

// }

// void BENCH_Pairingn_lazy_montgomery(int LOOP){
//   printf("check_pairing() 開始\n");
//   efp6_t P,Q,aP,bQ,tmp1;
//   fp6_t f,e1,e2;
//   mpz_t a,b,ab;
//   efp6_init(&P);
//   efp6_init(&Q);

//   efp6_init(&aP);
//   efp6_init(&bQ);
//   efp6_init(&tmp1);
//   fp6_init(&f);
//   fp6_init(&e1);
//   fp6_init(&e2);
//   mpz_init(a);
//   mpz_init(b);
//   mpz_init(ab);

//   generate_g1(&P);
//   generate_g2(&Q);

//   mpz_urandomm(a,state,prime_z);
//   mpz_urandomm(b,state,prime_z);

//   #if 1
//   efp6_println("P = ",&P);
//   efp6_println("Q = ",&Q);

//   efp6_scm(&tmp1,&P,order_z);
//   efp6_println("[r]P = ",&tmp1);
//   efp6_scm(&tmp1,&Q,order_z);
//   efp6_println("[r]Q = ",&tmp1);

//   gmp_printf("a = %Zd\n",a);
//   gmp_printf("b = %Zd\n",b);
//   printf("---------------------------------\n");
//   #endif

//   printf("---------------------------------\n");
//   printf("check regular pairing()\n");
//   printf("---------------------------------\n");
//   //e([a]P,[b]Q) を求める
//   efp6_scm(&aP,&P,a);
//   efp6_scm(&bQ,&Q,b);
//   miller_opt_ate_proj_2NAF(&f,&aP,&bQ);
//   final_exp(&e1,&f);
//   //e(P,Q)^(a*b) を求める
//   miller_opt_ate_proj_2NAF(&f,&P,&Q);
//   final_exp(&e2,&f);
//   mpz_mul(ab,a,b);
//   fp6_pow(&e2,&e2,ab);
//   fp6_println("e([a]P,[b]Q) = ",&e1);
//   fp6_println("e(P,Q)^(a*b) = ",&e2);
//   if(fp6_cmp(&e1,&e2)==0)  {
//   printf("=====================================================\n");
//   printf("------------------bilinear!!-------------------------\n");
//   printf("=====================================================\n");
//   }else{
//     printf("e([a]P,[b]Q) != e(P,Q)^(a*b)\n\n");
//   }
//   printf("---------------------------------\n");
//   printf("check lazy montgomery pairing()\n");
//   printf("---------------------------------\n");
//   efp6_scm(&aP,&P,a);
//   efp6_scm(&bQ,&Q,b);
//   miller_opt_ate_proj_2NAF_lazy_montgomery(&f,&aP,&bQ);
//   final_exp_lazy_montgomery(&e1,&f);
//   //e(P,Q)^(a*b) を求める
//   miller_opt_ate_proj_2NAF_lazy_montgomery(&f,&P,&Q);
//   final_exp_lazy_montgomery(&e2,&f);
//   mpz_mul(ab,a,b);
//   fp6_pow_montgomery(&e2,&e2,ab);
//   fp6_println("e([a]P,[b]Q) = ",&e1);
//   fp6_println("e(P,Q)^(a*b) = ",&e2);
//   if(fp6_cmp(&e1,&e2)==0)  {
//   printf("=====================================================\n");
//   printf("------------------bilinear!!-------------------------\n");
//   printf("=====================================================\n\n\n");
//   }else{
//     printf("e([a]P,[b]Q) != e(P,Q)^(a*b)\n\n");
//   }

//   // printf("--------Benching pairing()-------\n");

//   // CYBOZU_BENCH_C("miller_opt_ate_proj_2NAF()", LOOP, miller_opt_ate_proj_2NAF,&f,&P,&Q);
//   // CYBOZU_BENCH_C("final_exp()               ", LOOP, final_exp,&e2, &e1);
//   // printf("---------------------------------\n");

//   CYBOZU_BENCH_C("miller_opt_ate_proj_2NAF_lazy_montgomery()", LOOP, miller_opt_ate_proj_2NAF_lazy_montgomery,&f,&P,&Q);
//   CYBOZU_BENCH_C("final_exp_lazy_montgomery()               ", LOOP, final_exp_lazy_montgomery, &e2, &e1);
//   printf("---------------------------------\n");

//   mpz_clear(a);
//   mpz_clear(b);
//   mpz_clear(ab);

//   printf("*********************************************************************************************\n\n");
// }


// void BENCH_Pairingn_lazy_montgomery2(int LOOP){
//   printf("check_pairing()2 開始\n");
//   efp6_t P,Q,aP,bQ,tmp1;
//   fp6_t f,e1,e2;
//   mpz_t a,b,ab;
//   efp6_init(&P);
//   efp6_init(&Q);

//   efp6_init(&aP);
//   efp6_init(&bQ);
//   efp6_init(&tmp1);
//   fp6_init(&f);
//   fp6_init(&e1);
//   fp6_init(&e2);
//   mpz_init(a);
//   mpz_init(b);
//   mpz_init(ab);

//   generate_g1(&P);
//   generate_g2(&Q);

//   mpz_urandomm(a,state,prime_z);
//   mpz_urandomm(b,state,prime_z);

//   #if 1
//   efp6_println("P = ",&P);
//   efp6_println("Q = ",&Q);

//   efp6_scm(&tmp1,&P,order_z);
//   efp6_println("[r]P = ",&tmp1);
//   efp6_scm(&tmp1,&Q,order_z);
//   efp6_println("[r]Q = ",&tmp1);

//   gmp_printf("a = %Zd\n",a);
//   gmp_printf("b = %Zd\n",b);
//   printf("---------------------------------\n");
//   #endif

//   printf("---------------------------------\n");
//   printf("check regular pairing()\n");
//   printf("---------------------------------\n");
//   //e([a]P,[b]Q) を求める
//   efp6_scm(&aP,&P,a);
//   efp6_scm(&bQ,&Q,b);
//   miller_opt_ate_proj_2NAF(&f,&aP,&bQ);
//   final_exp(&e1,&f);
//   //e(P,Q)^(a*b) を求める
//   miller_opt_ate_proj_2NAF(&f,&P,&Q);
//   final_exp(&e2,&f);
//   mpz_mul(ab,a,b);
//   fp6_pow(&e2,&e2,ab);
//   fp6_println("e([a]P,[b]Q) = ",&e1);
//   fp6_println("e(P,Q)^(a*b) = ",&e2);
//   if(fp6_cmp(&e1,&e2)==0)  {
//   printf("=====================================================\n");
//   printf("------------------bilinear!!-------------------------\n");
//   printf("=====================================================\n");
//   }else{
//     printf("e([a]P,[b]Q) != e(P,Q)^(a*b)\n\n");
//   }
//   printf("---------------------------------\n");
//   printf("check lazy montgomery pairing()\n");
//   printf("---------------------------------\n");
//   efp6_scm(&aP,&P,a);
//   efp6_scm(&bQ,&Q,b);
//   miller_opt_ate_proj_2NAF_lazy_montgomery(&f,&aP,&bQ);
//   final_exp_lazy_montgomery2(&e1,&f);
//   //e(P,Q)^(a*b) を求める
//   miller_opt_ate_proj_2NAF_lazy_montgomery(&f,&P,&Q);
//   final_exp_lazy_montgomery2(&e2,&f);
//   mpz_mul(ab,a,b);
//   fp6_pow_montgomery(&e2,&e2,ab);
//   fp6_println("e([a]P,[b]Q) = ",&e1);
//   fp6_println("e(P,Q)^(a*b) = ",&e2);
//   if(fp6_cmp(&e1,&e2)==0)  {
//   printf("=====================================================\n");
//   printf("------------------bilinear!!-------------------------\n");
//   printf("=====================================================\n\n\n");
//   }else{
//     printf("e([a]P,[b]Q) != e(P,Q)^(a*b)\n\n");
//   }

//   // printf("--------Benching pairing()-------\n");

//   // CYBOZU_BENCH_C("miller_opt_ate_proj_2NAF()", LOOP, miller_opt_ate_proj_2NAF,&f,&P,&Q);
//   // CYBOZU_BENCH_C("final_exp()               ", LOOP, final_exp,&e2, &e1);
//   // printf("---------------------------------\n");

//   CYBOZU_BENCH_C("miller_opt_ate_proj_2NAF_lazy_montgomery()", LOOP, miller_opt_ate_proj_2NAF_lazy_montgomery,&f,&P,&Q);
//   CYBOZU_BENCH_C("final_exp_lazy_montgomery2()               ", LOOP, final_exp_lazy_montgomery2, &e2, &e1);
//   printf("---------------------------------\n");

//   mpz_clear(a);
//   mpz_clear(b);
//   mpz_clear(ab);

//   printf("*********************************************************************************************\n\n");
// }

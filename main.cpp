
#include "field_test.h"
#include <cstdio>
#include <cstdint>
#include <cybozu/benchmark.hpp>
#include <gmp.h>
#include <sys/types.h>

#define TTT_INSTANCE_HERE
#include "define.h"
// #include "./time.h"
#include "scalar.h"
#include "mpn.h"
#include "fp.h"
// #include "fp2.h"
// #include "fp6.h"
// #include "test_fp.h"
// #include "field_test.h"
// #include "efp.h"
// #include "efp6.h"
// #include "test_efp.h"
#include "create.h"
// #include "miller.h"
// #include "final_exp.h"
// #include "test_pairing.h"


int main(){
  gmp_randinit_default(state);
  gmp_randseed_ui(state,(unsigned long int)time(NULL));

  tmp_init();
  create_prt();
  // check_base();
  // pre_montgomery();
  // frobenius_precalculation();
  // curve_search();
  // create_weil();

  printf("*********************************************************************************************\n\n");
  //check 
  // check_fp();

  //各関数の動作確認、コスト計算、時間計測など
  // test_fp_montgomery(CHECK_PAIRING_TIME_LOOP);
  // test_field(0, CHECK_PAIRING_TIME_LOOP, CHECK_PAIRING_TIME_LOOP, CHECK_PAIRING_TIME_LOOP);
  // test_fp(CHECK_PAIRING_TIME_LOOP);

  // test_fp2(CHECK_PAIRING_TIME_LOOP);
  // test_fp6(CHECK_PAIRING_TIME_LOOP);

  // check_fp_with_montgomery();
  // check_fp2_with_montgomery();
  // check_fp6_with_montgomery();

  // BENCH_fp2_fp6_mul_lazy_montgomery(CHECK_PAIRING_TIME_LOOP);
  // BENCH_miller_lazy_montgomery(CHECK_PAIRING_TIME_LOOP);
  // BENCH_finalexp_lazy_montgomery(CHECK_PAIRING_TIME_LOOP);
  // BENCH_Pairingn_lazy_montgomery(CHECK_PAIRING_TIME_LOOP);
  // check_efp();
  // check_efp2();
  // check_efp6();
  // check_g1_g2();

  //SCM_func_check();//未完成
  // check_pairing_2NAF();
  // check_pairing_static();
  // check_pairing_count_2NAF_lazy_montgomery();
  // check_pairing_count_2NAF();
  // check_pairing_time_2NAF();

  printf("*********************************************************************************************\n\n");
  //free space

  // fp_t A;
  // fp_init(&A);

  // fpd_t Ad;
  // fpd_init(&Ad);
  // fpd_println("Ad  = ",&Ad);

  // std::string Astr = "2f242c2746f32fef5b259f7a3fe970481c5db6af31ffb84700c7b1420f976e4bd050525f0b3785802ad3edf14c7435da60f41bafe0a0b9351a69c376f248bfdaaef2912ba2752874e58dea92299bc5adcca15649";
  // fp_set_str(&A, Astr);
  // fp_println("A   = ",&A);
  // uint64_t b = 0x41893731A9FBE8;

  // fp_mul_1(&Ad, &A, &b, 0);
  // fpd_println("Ad  = ",&Ad);

  // printf("*********************************************************************************************\n\n");
  // //play ground
  // std::string p_str = "9401ff90f28bffb0c610fb10bf9e0fefd59211629a7991563c5e468d43ec9cfe1549fd59c20ab5b9a7cda7f27a0067b8303eeb4b31555cf4f24050ed155555cd7fa7a5f8aaaaaaad47ede1a6aaaaaaaab69e6dcb";

  // mpz_t Am, Bm, ANSm,pm;
  // mpz_init_set_str(Am,A_str.c_str(),16);
  // mpz_init_set_str(Bm,B_str.c_str(),16);
  // mpz_init_set_str(pm,p_str.c_str(),16);
  // mpz_init(ANSm);
  // gmp_printf("A         =%Zx\n",Am);
  // gmp_printf("B         =%Zx\n",Bm);

  // mpz_mul(ANSm,Am,Bm);
  // gmp_printf("ANSm :%Zx\n",ANSm);
  // mpz_mod(ANSm,ANSm,pm);
  // gmp_printf("ANSm mod p :%Zx\n",ANSm);
  std::string A_str = "8ddcf3e7e8fd717d123a52a7f60f471fe37c1655cff5fdc302adec6fe31e0264b05dddb096b7535d7b6ecf8c8d5f9332906eed2d57cf6c6691679a79ad9048b91e0e3092fa8d8d3b9bb357737bfc9fb87e40a69d";
  std::string B_str = "7767269ad9c48e31369f8e6f495f197b05201db32de425ca0d9338cb6d3b1ae28f3e8bb63b282109f79506ac9e2ef1e46ffbcefb421b864dbf83518a47676f755a90d7d40bc37bc7b8fa86676c41981bf92e024f";

  fp_t A, B;
  fpd_t ANS;
  fp_init(&A);
  fp_init(&B);
  fpd_init(&ANS);
  // fp_set_random(&A,state);
  fp_set_str(&A,A_str);
  fp_set_str(&B,B_str);
  fp_mul_nonmod(&ANS,&B,&A);

  CYBOZU_BENCH_C("fp_mul_nonmod()", CHECK_PAIRING_TIME_LOOP, fp_mul_nonmod,&ANS,&A,&B);
  fpd_println("A*B= ",&ANS);

  return 0;
}

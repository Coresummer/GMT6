#include "mcl.h"
#define TTT_INSTANCE_HERE

#include <cstdio>

#include "define.h"
#include "./time.h"
#include "scalar.h"
#include "mpn.h"
#include "fp.h"
#include "fp2.h"
#include "fp6.h"
// #include "test_fp.h"
#include "field_test.h"
#include "efp.h"
#include "efp6.h"
#include "test_efp.h"
#include "create.h"
#include "miller.h"
#include "final_exp.h"
#include "test_pairing.h"


int main(){
  // mcl_init();
  const char *pStr = "0x9401ff90f28bffb0c610fb10bf9e0fefd59211629a7991563c5e468d43ec9cfe1549fd59c20ab5b9a7cda7f27a0067b8303eeb4b31555cf4f24050ed155555cd7fa7a5f8aaaaaaad47ede1a6aaaaaaaab69e6dcb";
  mcl_init(pStr);
  gmp_randinit_default(state);
  gmp_randseed_ui(state,(unsigned long int)time(NULL));

  tmp_init();
  create_prt();
  check_base();
  pre_montgomery();
  frobenius_precalculation();
  curve_search();
  create_weil();
  
  printf("*********************************************************************************************\n\n");
  
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
  // BENCH_miller_jac_lazy_montgomery(CHECK_PAIRING_TIME_LOOP);
  // BENCH_miller_proj_lazy_montgomery(CHECK_PAIRING_TIME_LOOP);
  // BENCH_finalexp_lazy_montgomery(CHECK_PAIRING_TIME_LOOP);
  // BENCH_Pairing_jac_lazy_montgomery(CHECK_PAIRING_TIME_LOOP);
  // BENCH_Pairing_proj_lazy_montgomery(CHECK_PAIRING_TIME_LOOP);

  // check_efp();
  // check_efp2();
  // check_efp6();
  // check_g1_g2();

  //SCM_func_check();//未完成
  // check_pairing_2NAF();
  // check_pairing_2NAF_costello();
  // check_pairing_static();
  // check_pairing_jac_count_2NAF_lazy_montgomery();
  // check_pairing_proj_count_2NAF_lazy_montgomery();
  // check_pairing_count_2NAF();
  // check_pairing_time_2NAF();

  check_count_finalexp_pow_2NAF();
  printf("*********************************************************************************************\n\n");

  return 0;
}

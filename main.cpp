
#include "field_test.h"
#include <cstdio>
#include <cstdint>
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

  fp_t A,C;
  fpd_t B;
  fp_init(&A);
  fp_init(&C);
  fpd_init(&B);

  fp_set_random(&A, state);
  fp_set_random(&C, state);

  B = A % A;
  fpd_println("B = ",&B);
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

  printf("*********************************************************************************************\n\n");

  return 0;
}

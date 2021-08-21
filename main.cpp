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
  tmp_init();
  create_prt();
  check_base();
  frobenius_precalculation();
  curve_search();
  pre_montgomery();
  create_weil();
  printf("*********************************************************************************************\n\n");
  
  gmp_randinit_default(state);
  gmp_randseed_ui(state,(unsigned long int)time(NULL));

  //各関数の動作確認、コスト計算、時間計測など
  test_fp_montgomery(CHECK_PAIRING_TIME_LOOP);
  // test_field(0, CHECK_PAIRING_TIME_LOOP, CHECK_PAIRING_TIME_LOOP, CHECK_PAIRING_TIME_LOOP);
  // test_fp(CHECK_PAIRING_TIME_LOOP);
  // test_fp2(CHECK_PAIRING_TIME_LOOP);
  // test_fp6(CHECK_PAIRING_TIME_LOOP);

  // check_fp_montgomery(CHECK_PAIRING_TIME_LOOP);

  // check_efp();
  // check_efp2();
  // check_efp6();
  // check_g1_g2();

  //SCM_func_check();//未完成
  // check_pairing_2NAF();
  // // check_pairing_static();
  // check_pairing_count_2NAF();
  // check_pairing_time_2NAF();

  // printf("---------------------------------\n");



  return 0;
}

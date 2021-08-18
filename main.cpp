  #include <cstdio>
#include <gmp.h>
#define TTT_INSTANCE_HERE

#include "define.h"
#include "count.h"
#include "scalar.h"
#include "mpn.h"
#include "fp.h"
#include "fp2.h"
#include "fp6.h"
#include "test_fp.h"
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
  create_twist_curve();
  create_weil();
  printf("*********************************************************************************************\n\n");
  
  gmp_randinit_default(state);
  gmp_randseed_ui(state,(unsigned long int)time(NULL));

  //各関数の動作確認、コスト計算、時間計測など
  
  
  // check_fp();
  // check_fp2();
  // check_fp6();
  // check_fp2_count();
  // check_fp6_count();
  // // check_fp_time();

  // check_efp();
  // check_efp2();
  check_efp6();
  check_g1_g2();

  // check_pairing_2NAF();
  // // // check_pairing_static();
  check_pairing_count_2NAF();
  // check_pairing_time_2NAF();

  // printf("*********************************************************************************************\n\n");

  return 0;
}

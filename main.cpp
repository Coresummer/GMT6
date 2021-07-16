  #include <cstdio>
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
  // check_fp_time();

  // check_efp();
  // check_efp2();
  // check_efp6();
  // check_g1_g2();

  //SCM_func_check();//未完成
  check_pairing();
  // // check_pairing_static();
  // check_pairing_count();
  check_pairing_time();

  // fp6_t ANS1,ANS2,A,B;
  // fp6_init(&A);
  // fp6_set_random(&A,state);
  // fp6_init(&B);
  // fp6_set_random(&B,state);

  // fp_set_ui(&A.x1.x0,0);
  // fp2_set_ui_ui(&A.x2, 0);

  // fp6_mul(&ANS1, &A, &B);
  // fp6_mul_sparse_dbl(&ANS2, &A, &B);
  
  // if(fp6_cmp(&ANS1, &ANS2)==0)printf("equal\n");

  return 0;
}

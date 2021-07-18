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
  check_pairing_2NAF();
  // // check_pairing_static();
  // check_pairing_count_2NAF();
  check_pairing_time_2NAF();

  // efp6_t P,Q;
  // fp6_t f,e,f_inv,f_p3;
  // efp6_init(&P);
  // efp6_init(&Q);
  // fp6_init(&f);
  // fp6_init(&e);
  // fp6_init(&f_inv);
  // fp6_init(&f_p3);

  // generate_g1(&P);
  // generate_g2(&Q);

  // miller_opt_ate_proj_2NAF(&f,&P,&Q);
  // printf("---------------------------------\n");

  // fp6_frobenius_map_p3(&f,&f);
  // fp6_inv(&f_inv,&f);
  // fp6_mul(&f,&f,&f_inv);

  // fp6_frobenius_map_p3(&f_p3,&f);

  // fp6_mul(&f_p3, &f_p3, &f);

  // fp6_println("(p^3-1)(p^3+1)", &f_p3);

  // // final_exp(&e,&f);
  // printf("---------------------------------\n");

  // printf("*********************************************************************************************\n\n");

  return 0;
}

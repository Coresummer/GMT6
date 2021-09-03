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
  // // check_fp2_count();
  // // check_fp6_count();
  // // check_fp_time();

  // check_efp();
  // check_efp2();
  // check_efp6();
  // check_g1_g2();

  // check_pairing_2NAF();
  // // // check_pairing_static();
  // check_pairing_count_2NAF();
  // check_pairing_time_2NAF();

  // printf("*********************************************************************************************\n\n");
  efp6_t P,Q, Q_dash,tmp1;
  efp6_init(&Q);
  efp6_init(&Q_dash);
  efp6_init(&tmp1);

  efp6_init(&P);
  generate_g1(&P);
  efp6_scm(&tmp1,&P,order_z);
  efp6_println("[r]P = ",&tmp1);
  generate_g2(&Q);
  fp_lshift_1(&Q_dash.x.x0.x0,&Q.x.x1.x1);
  fp_set_neg(&Q_dash.x.x0.x0, &Q_dash.x.x0.x0);
  fp_lshift_1(&Q_dash.y.x0.x0,&Q.y.x0.x1);
  fp_set_neg(&Q_dash.y.x0.x0, &Q_dash.y.x0.x0);


  Q_dash.infinity = 0;
  efp6_checkOnTwsitCurve(&Q_dash);

  efp6_scm(&tmp1,&Q_dash,order_z);
  efp6_println("[r]Q' = ",&tmp1);


  return 0;
}

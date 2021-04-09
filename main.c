//まだできていない関数！！！
/*fp5.c*/
//fp5_mul_lazy_montgomery
//fp5_mul_nonmod_montgomery
//fp5_sqr_lazy_montgomery
//fp5_inv_lazy_montgomery
/*efp.c*/
//efp_ecd_jacobian_lazy_montgomery
//efp_eca_jacobian_lazy_montgomery
//efp_eca_mixture_lazy_montgomery
/*efp5.c*/
//efp5_ecd_jacobian_lazy_montgomery
//efp5_eca_jacobian_lazy_montgomery
//efp5_eca_mixture_lazy_montgomery

#include "define.h"
#include "count.h"
#include "scalar.h"
#include "mpn.h"
#include "fp.h"
#include "fp3.h"
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

#ifdef SB49
printf("Fp7_mul using School-Book\n\n");
#endif

#ifdef Mont22
printf("Fp7_mul using Montgomery like Karatsuba\n\n");
#endif

#ifdef Karatsuba40
printf("Fp7_mul using Karatsuba40\n\n");
#endif

#ifdef Karatsuba30
printf("Fp7_mul using Karatsuba30\n\n");
#endif

#ifdef Karatsuba23
printf("Fp7_mul using Karatsuba24\n\n");
#endif

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
  // check_fp3();
  // check_fp6();
  // check_fp3_count();
  // check_fp6_count();
  // check_fp_time();

  // check_efp();
  // check_efp3();
  // check_efp6();
  // check_g1_g2();

  //SCM_func_check();//未完成
  check_pairing();
  check_pairing_count();
  check_pairing_time();

  return 0;
}

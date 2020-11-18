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
#include "fp2.h"
//#include "fp6.h"
#include "test_fp.h"
#include "efp.h"
//#include "efp6.h"
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

  gmp_randinit_default(state);
  gmp_randseed_ui(state,(unsigned long int)time(NULL));

  tmp_init();
  create_prt();
  check_base();
  frobenius_precalculation();
  curve_search();
  create_twist_curve();
  create_weil();
  printf("*********************************************************************************************\n\n");

  #if 0
  //埋め込み次数がちゃんと10であるかを確認する
  mpz_t tmp1,tmp2;
  mpz_init(tmp1);
  mpz_init(tmp2);
  mpz_mul(tmp1,order_z,order_z);
  for(int i=1;i<=10;i++){
    efpm_order(&tmp2,i);
    if(mpz_divisible_p(tmp2,tmp1)!=0) printf("#E(Fp^%d)/r^2 is divisible\n",i);
    else  printf("#E(Fp^%d)/r^2 is undivisible\n",i);
  }
  for(int i=1;i<=10;i++){
    mpz_pow_ui(tmp1,prime_z,i);
    mpz_sub_ui(tmp1,tmp1,1);
    if(mpz_divisible_p(tmp1,order_z)!=0) printf("(p^%d -1)/r is divisible\n",i);
    else  printf("(p^%d -1)/r is undivisible\n",i);
  }
  mpz_clear(tmp1);
  mpz_clear(tmp2);
  #endif

  //各関数の動作確認、コスト計算、時間計測など
  check_fp();
  check_fp2();
  check_fp6();
  check_fp2_count();
  check_fp6_count();
  check_fp_time();

  check_efp();
  check_efp2();
  check_efp6();
  check_g1_g2();

  //SCM_func_check();//未完成
  check_pairing();
  //check_pairing_count();
  check_pairing_time();

  return 0;
}

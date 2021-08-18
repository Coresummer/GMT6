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

  // // efp6_t P,Q;
  // fp6_t f,e,f_inv,f_p3;
  // // efp6_init(&P);
  // // efp6_init(&Q);
  // fp6_init(&f);
  // fp6_init(&e);
  // fp6_init(&f_inv);
  // fp6_init(&f_p3);

  // mpz_t expo;
  // mpz_init(expo);
  // mpz_mul(expo,prime_z,prime_z);
  // mpz_sub_ui(expo,expo,1);
  // mpz_div_ui(expo,expo,3);  //p^2-1/3

  // fp2_t b0,b1,b2;
  // fp2_init(&b0);
  // fp2_init(&b1);
  // fp2_init(&b2);

  // fp2_set_ui(&b0,2);

  // fp2_set_ui_ui(&b1, 1);
  // printf("(1,1):%d\n",fp2_legendre(&b1));
  

  // fp2_set_ui_ui(&b2, 2);
  // fp_set_ui(&b2.x0,2);

  // fp2_printf("b0",&b0);
  // fp2_pow(&b0,&b0,expo);
  // fp2_println("", &b0);

  // fp2_printf("b1",&b1);
  // fp2_pow(&b1,&b1,expo);
  // fp2_println("", &b1);

  // fp2_printf("b2",&b2);
  // fp2_pow(&b2,&b2,expo);
  // fp2_println("", &b2);


  // // fp6_set_ui(&f,0);
  // // fp_set_ui(&f.x1.x0,1);
  // // fp_set_ui(&f.x1.x1,1);
  // // fp6_println("f:", &f);

  // // fp6_pow(&e,&f,expo);
  // // fp6_println("j pow ^p-1", &e);

  // // fp6_set_ui(&f,0);
  // // fp_set_ui(&f.x2.x0,1);
  // // fp_set_ui(&f.x2.x1,1);
  // // fp6_println("f:", &f);

  // // fp6_pow(&e,&f,expo);
  // // fp6_println("j pow ^p-1", &e);

  // // generate_g1(&P);
  // // generate_g2(&Q);

  // // miller_opt_ate_proj_2NAF(&f,&P,&Q);
  // // printf("---------------------------------\n");
  // // fp6_set_random(&f,state);
  // fp6_set_ui_ui(&f, 1);
  // // fp6_frobenius_map_p1(&f,&f);
  // // fp6_inv(&f_inv,&f);
  // // fp6_mul(&f,&f,&f_inv);
  // // mpz_pow_ui(expo,prime_z,3);

  // fp6_frobenius_map_p1(&f_p3,&f);
  // fp6_pow(&e,&f,prime_z);
  // fp6_println("f", &f);
  // fp6_println("p^1 pow", &e);
  // fp6_println("fp^1", &f_p3);

  // fp6_mul(&f_p3, &f_p3, &f);

  // fp6_println("(p^3-1)(p^3+1)", &f_p3);

  // // final_exp(&e,&f);
  // printf("---------------------------------\n");

  // printf("*********************************************************************************************\n\n");

  return 0;
}

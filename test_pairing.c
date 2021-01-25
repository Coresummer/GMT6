#include "test_pairing.h"
/*
void SCM_func_check(){
printf("SCM_func_check() 開始\n");
efp6 efp6_point_P,efp6_point_Q;
mpz_t s,a,b,ab;
efp6_init(&efp6_point_P);
efp6_init(&efp6_point_Q);
mpz_init(s);
mpz_init(a);
mpz_init(b);
mpz_init(ab);

efp efp_P,efp_aP;
efp7 efp7_Q,efp7_bQ1,efp7_bQ2;
efp_init(&efp_P);
efp_init(&efp_aP);
efp7_init(&efp7_Q);
efp7_init(&efp7_bQ1);
efp7_init(&efp7_bQ2);


find_P_inG1_Q_inG2(&efp6_point_P,&efp6_point_Q);
mpz_urandomm(a,state,p);
mpz_urandomm(b,state,p);

twist_mapping_to_efp(&efp_P,&efp6_point_P);
twist_mapping_to_efp7(&efp7_Q,&efp6_point_Q);
#if 1
printf("P  :");
efp_print(&efp_P);
printf("Q' :");
efp7_print(&efp7_Q);
#endif
efp7_SCM_twist(&efp7_bQ1,&efp7_Q,b);
efp7_SCM_twist_GLV(&efp7_bQ2,&efp7_Q,b);
#if 1
printf("[b]Q (plain) = ");
efp7_print(&efp7_bQ1);
printf("[b]Q (GLV)   = ");
efp7_print(&efp7_bQ2);
#endif
if(fp7_cmp(&efp7_bQ1.x,&efp7_bQ2.x)==0 && fp7_cmp(&efp7_bQ1.y,&efp7_bQ2.y)==0)  printf("[b]Q (plain) == [b]Q (GLV)\n\n");
else  printf("[b]Q (plain) != [b]Q (GLV)\n\n");
printf("---------------------------------\n");

printf("SCM (plain)\n");
count_start();
efp7_SCM_twist(&efp7_bQ1,&efp7_Q,b);
count_print();
printf("SCM (GLV)\n");
count_start();
efp7_SCM_twist_GLV(&efp7_bQ2,&efp7_Q,b);
count_print();


printf("\nSCM_func_check() 終了\n");
printf("*********************************************************************************************\n\n");
efp6_clear(&efp6_point_P);
efp6_clear(&efp6_point_Q);
mpz_clear(s);
mpz_clear(a);
mpz_clear(b);
mpz_clear(ab);
efp_clear(&efp_P);
efp_clear(&efp_aP);
efp7_clear(&efp7_Q);
efp7_clear(&efp7_bQ1);
efp7_clear(&efp7_bQ2);
}*/

void check_pairing(){
  printf("check_pairing() 開始\n");
  efp6_t P,Q,Q_dash,aP,bQ,tmp1;
  fp6_t f,e1,e2;
  mpz_t a,b,ab;
  efp6_init(&P);
  efp6_init(&Q);
  efp6_init(&Q_dash);
  efp6_init(&aP);
  efp6_init(&bQ);
  efp6_init(&tmp1);
  fp6_init(&f);
  fp6_init(&e1);
  fp6_init(&e2);
  mpz_init(a);
  mpz_init(b);
  mpz_init(ab);

  generate_g1(&P);
  generate_g2(&Q);
  fp_set(&Q_dash.x.x0.x0,&Q.x.x0.x1);
  fp_set(&Q_dash.y.x0.x0,&Q.y.x1.x1);
  Q_dash.infinity = 0;

  mpz_urandomm(a,state,prime_z);
  mpz_urandomm(b,state,prime_z);

  #if 1
  efp6_println("P = ",&P);
  efp6_println("Q = ",&Q);
  efp6_println("Q' = ",&Q_dash);

  efp6_scm(&tmp1,&P,order_z);
  efp6_println("[r]P = ",&tmp1);
  efp6_scm(&tmp1,&Q,order_z);
  efp6_println("[r]Q = ",&tmp1);
  efp6_scm(&tmp1,&Q_dash,order_z);
  efp6_println("[r]Q' = ",&tmp1);

  gmp_printf("a = %Zd\n",a);
  gmp_printf("b = %Zd\n",b);
  printf("---------------------------------\n");
  #endif


  printf("miller_ate() の動作確認\n");
  //e([a]P,[b]Q) を求める
  efp6_scm(&aP,&P,a);
  efp6_scm(&bQ,&Q,b);
  miller_ate(&f,&aP,&bQ);
  final_exp(&e1,&f);
  //e(P,Q)^(a*b) を求める
  miller_ate(&f,&P,&Q);
  final_exp(&e2,&f);
  mpz_mul(ab,a,b);
  fp6_pow(&e2,&e2,ab);
  fp6_println("e([a]P,[b]Q) = ",&e1);
  fp6_println("e(P,Q)^(a*b) = ",&e2);
  if(fp6_cmp(&e1,&e2)==0)  printf("e([a]P,[b]Q) == e(P,Q)^(a*b)\n\n");
  else{
    printf("e([a]P,[b]Q) != e(P,Q)^(a*b)\n\n");
  }
  printf("---------------------------------\n");

  mpz_clear(a);
  mpz_clear(b);
  mpz_clear(ab);
  printf("*********************************************************************************************\n\n");
}

void check_pairing_count(){
  printf("check_pairing_count() 開始\n");
  efp6_t P,Q;
  fp6_t f,e;
  efp6_init(&P);
  efp6_init(&Q);
  fp6_init(&f);
  fp6_init(&e);

  generate_g1(&P);
  generate_g2(&Q);

  printf("miller_ate count\n");
  count_start();
  miller_ate(&f,&P,&Q);
  count_printf();
  printf("---------------------------------\n");

  printf("final_exp() count\n");
  count_start();
  final_exp(&e,&f);
  count_printf();
  printf("---------------------------------\n");

  printf("*********************************************************************************************\n\n");
}

void check_pairing_time(){
  printf("check_pairing_time() 開始\n");
  efp6_t P,Q;
  fp6_t f,e;
  efp6_init(&P);
  efp6_init(&Q);
  fp6_init(&f);
  fp6_init(&e);

  MILLER_ATE_6SPARSE_TIME=0;
  FINAL_EXP_TIME=0;

  generate_g2(&Q);
  for(int i=0;i<CHECK_PAIRING_TIME_LOOP;i++){
    generate_g1(&P);
    
    gettimeofday(&tv_start,NULL);
    miller_ate(&f,&P,&Q);
    gettimeofday(&tv_end,NULL);
    MILLER_ATE_6SPARSE_TIME+=timedifference_msec(tv_start,tv_end);

    gettimeofday(&tv_start,NULL);
    final_exp(&e,&f);
    gettimeofday(&tv_end,NULL);
    FINAL_EXP_TIME+=timedifference_msec(tv_start,tv_end);
  }

  printf("miller_ate  :%.4f[ms]\n",MILLER_ATE_6SPARSE_TIME/CHECK_PAIRING_TIME_LOOP);
  printf("final_exp           :%.4f[ms]\n",FINAL_EXP_TIME/CHECK_PAIRING_TIME_LOOP);

  printf("*********************************************************************************************\n\n");
}

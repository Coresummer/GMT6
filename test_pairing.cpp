#include "test_pairing.h"
#include "final_exp.h"
#include "fp.h"
#include "miller.h"

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
  fp_set_neg(&Q_dash.x.x0.x0,&Q.x.x1.x1);
  fp_l1shift(&Q_dash.x.x0.x0,&Q_dash.x.x0.x0);
  fp_set_neg(&Q_dash.y.x0.x0,&Q.y.x0.x1);
  fp_l1shift(&Q_dash.y.x0.x0,&Q_dash.y.x0.x0);

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
  miller_opt_ate_jac(&f,&aP,&bQ);
  final_exp(&e1,&f);
  //e(P,Q)^(a*b) を求める
  miller_opt_ate_jac(&f,&P,&Q);
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


void check_pairing_2NAF(){
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
  fp_set_neg(&Q_dash.x.x0.x0,&Q.x.x1.x1);
  fp_l1shift(&Q_dash.x.x0.x0,&Q_dash.x.x0.x0);
  fp_set_neg(&Q_dash.y.x0.x0,&Q.y.x0.x1);
  fp_l1shift(&Q_dash.y.x0.x0,&Q_dash.y.x0.x0);

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
  miller_opt_ate_jac_2NAF(&f,&aP,&bQ);
  final_exp(&e1,&f);
  //e(P,Q)^(a*b) を求める
  miller_opt_ate_jac_2NAF(&f,&P,&Q);
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

void check_pairing_2NAF_costello(){
  printf("check_pairing_costello() 開始\n");
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
  fp_set_neg(&Q_dash.x.x0.x0,&Q.x.x1.x1);
  fp_l1shift(&Q_dash.x.x0.x0,&Q_dash.x.x0.x0);
  fp_set_neg(&Q_dash.y.x0.x0,&Q.y.x0.x1);
  fp_l1shift(&Q_dash.y.x0.x0,&Q_dash.y.x0.x0);

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


  printf("miller_proj() の動作確認\n");
  //e([a]P,[b]Q) を求める
  efp6_scm(&aP,&P,a);
  efp6_scm(&bQ,&Q,b);
  miller_opt_ate_proj_2NAF(&f,&aP,&bQ);
  final_exp(&e1,&f);
  //e(P,Q)^(a*b) を求める
  miller_opt_ate_proj_2NAF(&f,&P,&Q);
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
  cost miller_cost, finalexp_cost, pairing_cost;
  efp6_t P,Q;
  fp6_t f,e;
  efp6_init(&P);
  efp6_init(&Q);
  fp6_init(&f);
  fp6_init(&e);

  generate_g1(&P);
  generate_g2(&Q);

  printf("miller_ate count\n");
  cost_zero();
  miller_opt_ate_jac(&f,&P,&Q);
  cost_check(&miller_cost);
  cost_printf("",&miller_cost,CHECK_PAIRING_TIME_LOOP);
  printf("---------------------------------\n");

  printf("final_exp() count\n");
  cost_zero();
  final_exp(&e,&f);
  cost_check(&finalexp_cost);
  cost_printf("",&finalexp_cost,CHECK_PAIRING_TIME_LOOP);
  printf("---------------------------------\n");

  printf("*********************************************************************************************\n\n");
}

void check_pairing_count_2NAF(){
  printf("check_pairing_count() 開始\n");
  cost miller_cost, finalexp_cost, pairing_cost;

  efp6_t P,Q;
  fp6_t f,e;
  efp6_init(&P);
  efp6_init(&Q);
  fp6_init(&f);
  fp6_init(&e);

  generate_g1(&P);
  generate_g2(&Q);

  printf("miller_ate count\n");
  cost_zero();
  miller_opt_ate_jac_2NAF(&f,&P,&Q);
  cost_check(&miller_cost);
  cost_printf("",&miller_cost,CHECK_PAIRING_TIME_LOOP);
  printf("---------------------------------\n");

  printf("final_exp() count\n");
  cost_zero();
  final_exp(&e,&f);
  cost_check(&finalexp_cost);
  cost_printf("",&finalexp_cost,CHECK_PAIRING_TIME_LOOP);
  printf("---------------------------------\n");

  printf("*********************************************************************************************\n\n");
}

void check_pairing_jac_count_2NAF_lazy_montgomery(){
  printf("check_pairing_jac_count_lazy_montgomery() 開始\n");
  cost miller_cost, finalexp_cost, pairing_cost;

  efp6_t P,Q;
  fp6_t f,e;
  efp6_init(&P);
  efp6_init(&Q);
  fp6_init(&f);
  fp6_init(&e);

  generate_g1(&P);
  generate_g2(&Q);

  printf("miller_opt_ate_jac_lazy_montgomery count\n");
  cost_zero();
  miller_opt_ate_jac_2NAF_lazy_montgomery(&f,&P,&Q);
  cost_check(&miller_cost);
  cost_printf("",&miller_cost,CHECK_PAIRING_TIME_LOOP);
  printf("---------------------------------\n");

  printf("final_exp()_lazy_montgomery count\n");
  cost_zero();
  final_exp_lazy_montgomery(&e,&f);
  cost_check(&finalexp_cost);
  cost_printf("",&finalexp_cost,CHECK_PAIRING_TIME_LOOP);
  printf("---------------------------------\n");

  printf("*********************************************************************************************\n\n");
}

void check_pairing_proj_count_2NAF_lazy_montgomery(){
  printf("check_pairing_proj_count_lazy_montgomery() 開始\n");
  cost miller_cost, finalexp_cost, pairing_cost;

  efp6_t P,Q;
  fp6_t f,e;
  efp6_init(&P);
  efp6_init(&Q);
  fp6_init(&f);
  fp6_init(&e);

  generate_g1(&P);
  generate_g2(&Q);

  printf("miller_opt_ate_proj_lazy_montgomery count\n");
  cost_zero();
  miller_opt_ate_proj_2NAF_lazy_montgomery(&f,&P,&Q);
  cost_check(&miller_cost);
  cost_printf("",&miller_cost,CHECK_PAIRING_TIME_LOOP);
  printf("---------------------------------\n");

  printf("final_exp()_lazy_montgomery count\n");
  cost_zero();
  final_exp_lazy_montgomery(&e,&f);
  cost_check(&finalexp_cost);
  cost_printf("",&finalexp_cost,CHECK_PAIRING_TIME_LOOP);
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
    fp_set_ui(&f.x0.x0,1);

    gettimeofday(&tv_start,NULL);
    miller_opt_ate_jac(&f,&P,&Q);
    gettimeofday(&tv_end,NULL);
    MILLER_ATE_6SPARSE_TIME+=timedifference_msec(tv_start,tv_end);

    gettimeofday(&tv_start,NULL);
    final_exp(&e,&f);
    gettimeofday(&tv_end,NULL);
    FINAL_EXP_TIME+=timedifference_msec(tv_start,tv_end);
  }

  printf("miller_ate  :%.4f[ms]\n",MILLER_ATE_6SPARSE_TIME/CHECK_PAIRING_TIME_LOOP);
  printf("final_exp   :%.4f[ms]\n",FINAL_EXP_TIME/CHECK_PAIRING_TIME_LOOP);

  printf("*********************************************************************************************\n\n");
}

void check_pairing_time_2NAF(){
  printf("check_pairing_time_2NAF() 開始\n");
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
    fp_set_ui(&f.x0.x0,1);

    gettimeofday(&tv_start,NULL);
    miller_opt_ate_jac_2NAF(&f,&P,&Q);
    gettimeofday(&tv_end,NULL);
    MILLER_ATE_6SPARSE_TIME+=timedifference_msec(tv_start,tv_end);

    gettimeofday(&tv_start,NULL);
    final_exp(&e,&f);
    gettimeofday(&tv_end,NULL);
    FINAL_EXP_TIME+=timedifference_msec(tv_start,tv_end);
  }

  printf("miller_ate_2NAF  :%.4f[ms]\n",MILLER_ATE_6SPARSE_TIME/CHECK_PAIRING_TIME_LOOP);
  printf("final_exp        :%.4f[ms]\n",FINAL_EXP_TIME/CHECK_PAIRING_TIME_LOOP);

  printf("*********************************************************************************************\n\n");
}

void check_pairing_time_2NAF_lazy_montgomery(){
  printf("check_pairing_time_2NAF_lazy_montgomery() 開始\n");
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
    fp_set_ui(&f.x0.x0,1);

    gettimeofday(&tv_start,NULL);
    miller_opt_ate_jac_2NAF_lazy_montgomery(&f,&P,&Q);
    gettimeofday(&tv_end,NULL);
    MILLER_ATE_6SPARSE_TIME+=timedifference_msec(tv_start,tv_end);

    gettimeofday(&tv_start,NULL);
    final_exp_lazy_montgomery(&e,&f);
    gettimeofday(&tv_end,NULL);
    FINAL_EXP_TIME+=timedifference_msec(tv_start,tv_end);
  }

  printf("miller_ate_2NAF_lazy_montgomery  :%.4f[ms]\n",MILLER_ATE_6SPARSE_TIME/CHECK_PAIRING_TIME_LOOP);
  printf("final_exp_lazy_montgomery        :%.4f[ms]\n",FINAL_EXP_TIME/CHECK_PAIRING_TIME_LOOP);

  printf("*********************************************************************************************\n\n");
}
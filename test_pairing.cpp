#include "test_pairing.h"
#include "final_exp.h"
#include "miller.h"
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
cost_zero();
efp7_SCM_twist(&efp7_bQ1,&efp7_Q,b);
count_print();
printf("SCM (GLV)\n");
cost_zero();
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
  fp_set(&Q_dash.x.x0.x0,&Q.x.x2.x0);
  fp_set(&Q_dash.y.x0.x0,&Q.y.x0.x1);
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
  miller_opt_ate_proj(&f,&aP,&bQ);
  final_exp(&e1,&f);
  //e(P,Q)^(a*b) を求める
  miller_opt_ate_proj(&f,&P,&Q);
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
  fp_set(&Q_dash.x.x0.x0,&Q.x.x2.x0);
  fp_set(&Q_dash.y.x0.x0,&Q.y.x0.x1);
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

void check_pairing_static(){
  printf("check_pairing() 開始\n");
  efp6_t P,Q,Q_dash,aP,bQ,tmp1;
  fp6_t f1,f2,e1,e2;
  mpz_t a,b,ab;
  efp6_init(&P);
  efp6_init(&Q);
  efp6_init(&Q_dash);
  efp6_init(&aP);
  efp6_init(&bQ);
  efp6_init(&tmp1);
  fp6_init(&f1);
  fp6_init(&f2);
  fp6_init(&e1);
  fp6_init(&e2);
  mpz_init(a);
  mpz_init(b);
  mpz_init(ab);

  // generate_g1(&P);
  // generate_g2(&Q);
  // mpz_urandomm(a,state,prime_z);
  mpz_set_str(a,"1588823901774599142670133839265149392746880326954009793870734660069952395037316399151331457984307110904773338257987839142044215492406086490090236712149775858114419299940978259094113311504021874646953873",10);
  mpz_set_str(b,"2541196065019362681286680046417454289933101018237517876736107894085117511219974201169797795367079908178773860548152526709121438986963075329930392392463512867092217226780236312320044881226819557857423161",10);

  std::string px,py,qx,qy;
  px = "10145235377177093619731357847757360519670300268510976818046545146684421080351079620308945980087384033854660463669335884992159927160412195298727118932727782641864045749559049307960986165558720877081173464";
  py = "5807980266651566957917421045459937818980060436416677263183773427781261562720005872003597892776419209543916385272330323033669166186181340542441525912571056647869091221084865640418752231653719239240846745";
  
  qx = "2598711922326917464201132568082669293576667844066688853328788572458596824958752313224226261520126319304988402609543726647912372107220888113889314873160127577201614112044027628645433230568314611424926409";
  qy = "5195130109997357360897039650601633814403142961593731009378516961990366943424807653322109189519441904936055302767106021038885244981263967210776825564466064590861140692361710957849412449876571948464698408";

  mpn_set_char(&P.x.x0.x0.x0[0],10,px.c_str());
  mpn_set_char(&P.y.x0.x0.x0[0],10,py.c_str());
  mpn_set_char(&Q.x.x2.x0.x0[0],10,qx.c_str());
  mpn_set_char(&Q.y.x0.x1.x0[0],10,qy.c_str());
  fp_set(&Q_dash.x.x0.x0,&Q.x.x2.x0);
  fp_set(&Q_dash.y.x0.x0,&Q.y.x0.x1);
  Q_dash.infinity = 0;

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
  miller_opt_ate_proj(&f1,&aP,&bQ);
  final_exp(&e1,&f1);
  //e(P,Q)^(a*b) を求める
  miller_opt_ate_proj(&f2,&P,&Q);
  final_exp(&e2,&f2);
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
  miller_opt_ate_proj(&f,&P,&Q);
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
  miller_opt_ate_proj_2NAF(&f,&P,&Q);
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

void check_pairing_count_2NAF_lazy_montgomery(){
  printf("check_pairing_count_lazy_montgomery() 開始\n");
  cost miller_cost, finalexp_cost, pairing_cost;

  efp6_t P,Q;
  fp6_t f,e;
  efp6_init(&P);
  efp6_init(&Q);
  fp6_init(&f);
  fp6_init(&e);

  generate_g1(&P);
  generate_g2(&Q);

  printf("miller_ate_lazy_montgomery count\n");
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
    miller_opt_ate_proj(&f,&P,&Q);
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
    miller_opt_ate_proj_2NAF(&f,&P,&Q);
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
    miller_opt_ate_proj_2NAF_lazy_montgomery(&f,&P,&Q);
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

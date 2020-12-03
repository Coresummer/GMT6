#include "create.h"

// void create_prt(){
//   //c=31,HW=5
//   mpz_set_str(X_z,"69793222721",10);
//   mpz_set_str(prime_z,"16267677085191518215145726362303356256921214026664116030259022872093394664229695464989595564671340022260398627398138611701717751195899953842733128896641",10);
//   mpz_set_str(order_z,"562996920884971192175650689335685449152503440191280890230553641924966757832687025742081",10);
//   mpz_set_str(trace_z,"4871093937783110643842",10);
//   mpn_set_ui(&X,1,69793222721);
//   mpn_set_mpz(prime,prime_z);
//   mpn_mul_n(prime2,prime,prime,FPLIMB);

//   gmp_printf("X     (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(X_z,2),X_z);
//   gmp_printf("prime (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(prime_z,2),prime_z);
//   gmp_printf("order (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(order_z,2),order_z);
//   gmp_printf("trace (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(trace_z,2),trace_z);
//   printf("X     (HW :%2ld)(binary) = ",mpz_popcount(X_z));
//   mpz_out_str(stdout,2,X_z);printf("\n");
//   printf("trace (HW :%2ld)(binary) = ",mpz_popcount(trace_z));
//   mpz_out_str(stdout,2,trace_z);printf("\n");

//   fp_set_ui(&base_c,31);
//   fp_inv(&base_c_inv,&base_c);
//   gmp_printf("\nmodulo polynomial\n");
//   gmp_printf("fp5  = fp[alpha]/(alpha^5 -%Nu)\n",base_c.x0,FPLIMB);
//   gmp_printf("fp10 = fp5[beta]/(beta^2 -alpha)\n");

//   fp_println("base_c     = ",&base_c);
//   fp_println("base_c_inv = ",&base_c_inv);
//   printf("---------------------------------\n");
// }

// void create_prt(){
//   //c=22,HW=6
//   mpz_set_str(X_z,"2108929",10);
//   mpz_set_str(prime_z,"170237513848158568779942416607756540301968228880937205739444468088434882211948363434950545999983322396082471459841",10);
//   mpz_set_str(order_z,"7740045369266117003640100486612279136537741791515237828347471558194398827521",10);
//   mpz_set_str(trace_z,"4447581527042",10);
//   mpn_set_ui(&X,1,2108929);
//   mpn_set_mpz(prime,prime_z);
//   mpn_mul_n(prime2,prime,prime,FPLIMB);

//   gmp_printf("X     (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(X_z,2),X_z);
//   gmp_printf("prime (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(prime_z,2),prime_z);
//   gmp_printf("order (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(order_z,2),order_z);
//   gmp_printf("trace (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(trace_z,2),trace_z);
//   printf("X     (HW :%2ld)(binary) = ",mpz_popcount(X_z));
//   mpz_out_str(stdout,2,X_z);printf("\n");
//   printf("trace (HW :%2ld)(binary) = ",mpz_popcount(trace_z));
//   mpz_out_str(stdout,2,trace_z);printf("\n");
//   fp_set_ui(&base_c,13);
//   fp_inv(&base_c_inv,&base_c);
//   gmp_printf("\nmodulo polynomial\n");

//   gmp_printf("fp7  = fp[alpha]/(alpha^7 -%Nu)\n",base_c.x0,FPLIMB);
//   gmp_printf("fp14 = fp7[beta]/(beta^2 -alpha)\n");

//   fp_println("base_c     = ",&base_c);
//   fp_println("base_c_inv = ",&base_c_inv);
//   printf("---------------------------------\n");
// }
void create_prt(){
  //c=22,HW=6
  mpz_set_str(X_z,"319014718988379808906617884108577046528",10);
  mpz_set_str(prime_z,"11329265157441066674972746293582276012495209431885859364390699215081712291803913341814344705147930084203261965816370518788385997944853488658306508526197300081195905689841811134119593687335372322827562443",10);
  mpz_set_str(order_z,"101770390931234937007371831919591261029645836075628273799252170652634899808257",10);
  mpz_set_str(trace_z,"-101770390931234937007371831919591261029326821356639893990345552768526322761728",10);
  mpn_set_str(&X,"319014718988379808906617884108577046528",sizeof(char)*39,10); //ui(&X,1,319014718988379808906617884108577046528);
  mpn_set_mpz(prime,prime_z);
  mpn_mul_n(prime2,prime,prime,FPLIMB);

  gmp_printf("X     (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(X_z,2),X_z);
  gmp_printf("prime (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(prime_z,2),prime_z);
  gmp_printf("order (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(order_z,2),order_z);
  gmp_printf("trace (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(trace_z,2),trace_z);
  printf("X     (HW :%2ld)(binary) = ",mpz_popcount(X_z));
  mpz_out_str(stdout,2,X_z);printf("\n");
  printf("trace (HW :%2ld)(binary) = ",mpz_popcount(trace_z));
  mpz_out_str(stdout,2,trace_z);printf("\n");
  fp_set_ui(&base_c,2);
  fp_inv(&base_c_inv,&base_c);
  gmp_printf("\nmodulo polynomial\n");

  gmp_printf("fp2  = fp[alpha]/(alpha^2 -%Nu)\n",base_c.x0,FPLIMB);
  gmp_printf("fp6 = fp7[beta]/(beta^3 -alpha)\n");

  fp_println("base_c     = ",&base_c);
  fp_println("base_c_inv = ",&base_c_inv);
  printf("---------------------------------\n");
}

// void check_base(){
//   fp_t tmp;
//   fp5_t tmp5;
//   fp_init(&tmp);
//   fp5_init(&tmp5);
//   mpz_t expo;
//   mpz_init(expo);
//   //cが5乗非剰余であることの確認
//   fp_set(&tmp,&base_c);
//   mpz_sub_ui(expo,prime_z,1);
//   mpz_divexact_ui(expo,expo,5);
//   fp_pow(&tmp,&tmp,expo);
//   //fp_println("c^((p-1)/5) :",&tmp);
//   if(fp_cmp_one(&tmp)==0) printf("error!!! c^((p-1)/5)==1\n\n");
//   mpz_set_ui(expo,5);
//   fp_pow(&tmp,&tmp,expo);
//   //fp_println("c^(p-1) :",&tmp);
//   if(fp_cmp_one(&tmp)!=0) printf("error!!! c^(p-1)!=1\n\n");
//   //(0,1,0,0,0) が平方非剰余であることの確認
//   fp_set_ui(&tmp5.x1,1);
//   mpz_pow_ui(expo,prime_z,5);
//   mpz_sub_ui(expo,expo,1);
//   mpz_divexact_ui(expo,expo,2);
//   fp5_pow(&tmp5,&tmp5,expo);
//   //fp5_println("α^((p^5-1)/2) :",&tmp5);
//   if(fp5_cmp_one(&tmp5)==0) printf("error!!! alpha^((p-1)/5)==1\n\n");
//   mpz_set_ui(expo,2);
//   fp5_pow(&tmp5,&tmp5,expo);
//   //fp5_println("α^(p^5-1) :",&tmp5);
//   if(fp5_cmp_one(&tmp5)!=0) printf("error!!! alpha^(p-1)!=1\n\n");

//   fp_mul(&tmp,&base_c,&base_c_inv);
//   //fp_println("base_c * base_c_inv = ",&tmp);
//   if(fp_cmp_one(&tmp)!=0) printf("error!!! base_c * base_c_inv!=1\n\n");

//   mpz_clear(expo);
//   printf("check_base is ok\n");
// }
// void check_base(){
//   fp_t tmp;
//   fp7_t tmp7;
//   fp_init(&tmp);
//   fp7_init(&tmp7);
//   mpz_t expo;
//   mpz_init(expo);
//   //cが7乗非剰余であることの確認
//   fp_set(&tmp,&base_c);
//   mpz_sub_ui(expo,prime_z,1);
//   mpz_divexact_ui(expo,expo,7);
//   // fp_printf("base_c:",&base_c);
//   // gmp_printf("expo:%Zd",expo);

//   fp_pow(&tmp,&base_c,expo);
//   // fp_println("c^((p-1)/7) :",&tmp);
//   if(fp_cmp_one(&tmp)==0) printf("error!!! c^((p-1)/7)==1\n\n");
//   mpz_set_ui(expo,7);
//   fp_pow(&tmp,&tmp,expo);
//   // fp_println("c^(p-1) :",&tmp);
//   if(fp_cmp_one(&tmp)!=0) printf("error!!! c^(p-1)!=1\n\n");
//   //(0,1,0,0,0,0,0) が平方非剰余であることの確認
//   fp_set_ui(&tmp7.x1,1);
//   mpz_pow_ui(expo,prime_z,7);
//   mpz_sub_ui(expo,expo,1);
//   mpz_divexact_ui(expo,expo,2);
//   fp7_pow(&tmp7,&tmp7,expo);
//   //fp7_println("α^((p^7-1)/2) :",&tmp7);
//   if(fp7_cmp_one(&tmp7)==0) printf("error!!! alpha^((p-1)/7)==1\n\n");
//   mpz_set_ui(expo,2);
//   fp7_pow(&tmp7,&tmp7,expo);
//   //fp7_println("α^(p^7-1) :",&tmp7);
//   if(fp7_cmp_one(&tmp7)!=0) printf("error!!! alpha^(p-1)!=1\n\n");

//   fp_mul(&tmp,&base_c,&base_c_inv);
//   //fp_println("base_c * base_c_inv = ",&tmp);
//   if(fp_cmp_one(&tmp)!=0) printf("error!!! base_c * base_c_inv!=1\n\n");

//   mpz_clear(expo);
//   printf("check_base is ok\n");
// }
void check_base(){
  fp_t tmp;
  fp2_t tmp2;
  fp_init(&tmp);
  fp2_init(&tmp2);
  mpz_t expo;
  mpz_init(expo);
  //cが2乗非剰余であることの確認
  fp_set(&tmp,&base_c);
  mpz_sub_ui(expo,prime_z,1);
  mpz_divexact_ui(expo,expo,2);
  // fp_printf("base_c:",&base_c);
  // gmp_printf("expo:%Zd",expo);

  fp_pow(&tmp,&base_c,expo);
  // fp_println("c^((p-1)/7) :",&tmp);
  if(fp_cmp_one(&tmp)==0) printf("error!!! c^((p-1)/2)==1\n\n");
  mpz_set_ui(expo,2);
  fp_pow(&tmp,&tmp,expo);
  // fp_println("c^(p-1) :",&tmp);
  if(fp_cmp_one(&tmp)!=0) printf("error!!! c^(p-1)!=1\n\n");
  //(0,1,0,0,0,0,0) が平方非剰余であることの確認
  fp_set_ui(&tmp2.x1,1);
  mpz_pow_ui(expo,prime_z,2);
  mpz_sub_ui(expo,expo,1);
  mpz_divexact_ui(expo,expo,2);
  fp2_pow(&tmp2,&tmp2,expo);
  //fp7_println("α^((p^7-1)/2) :",&tmp7);
  if(fp2_cmp_one(&tmp2)==0) printf("error!!! alpha^((p-1)/2)==1\n\n");
  mpz_set_ui(expo,2);
  fp2_pow(&tmp2,&tmp2,expo);
  //fp7_println("α^(p^7-1) :",&tmp7);
  if(fp2_cmp_one(&tmp2)!=0) printf("error!!! alpha^(p-1)!=1\n\n");

  fp_mul(&tmp,&base_c,&base_c_inv);
  //fp_println("base_c * base_c_inv = ",&tmp);
  if(fp_cmp_one(&tmp)!=0) printf("error!!! base_c * base_c_inv!=1\n\n");

  mpz_clear(expo);
  printf("check_base is ok\n");
}


// void frobenius_precalculation(){
//   fp_t tmp;
//   mpz_t expo;
//   fp_init(&tmp);
//   mpz_init(expo);

//   //tmp = c^((p-1)/10)
//   mpz_sub_ui(expo,prime_z,1);
//   mpz_divexact_ui(expo,expo,10);
//   fp_pow(&tmp,&base_c,expo);

//   fp_set(&frobenius_1_10,&tmp);
//   mpz_set_ui(expo,2);
//   fp_pow(&frobenius_2_10,&tmp,expo);
//   mpz_set_ui(expo,3);
//   fp_pow(&frobenius_3_10,&tmp,expo);
//   mpz_set_ui(expo,4);
//   fp_pow(&frobenius_4_10,&tmp,expo);
//   mpz_set_ui(expo,6);
//   fp_pow(&frobenius_6_10,&tmp,expo);
//   mpz_set_ui(expo,7);
//   fp_pow(&frobenius_7_10,&tmp,expo);
//   mpz_set_ui(expo,8);
//   fp_pow(&frobenius_8_10,&tmp,expo);
//   mpz_set_ui(expo,9);
//   fp_pow(&frobenius_9_10,&tmp,expo);

//   mpz_clear(expo);
// }
// void frobenius_precalculation(){
//   fp_t tmp;
//   mpz_t expo;
//   fp_init(&tmp);
//   mpz_init(expo);

//   //tmp = c^((p-1)/14)
//   mpz_sub_ui(expo,prime_z,1);
//   mpz_divexact_ui(expo,expo,14);
//   fp_pow(&tmp,&base_c,expo);
//   fp_set(&frobenius_1_14,&tmp);
//   // fp_printf("\n1_14\n",&frobenius_1_14);
//   mpz_set_ui(expo,2);
//   fp_pow(&frobenius_2_14,&tmp,expo);
//   // fp_printf("\n2_14\n",&frobenius_2_14);
//   mpz_set_ui(expo,3);
//   fp_pow(&frobenius_3_14,&tmp,expo);
//   // fp_printf("\n3_14\n",&frobenius_3_14);

//   mpz_set_ui(expo,4);
//   fp_pow(&frobenius_4_14,&tmp,expo);
//   // fp_printf("\n4_14\n",&frobenius_4_14);

//   mpz_set_ui(expo,5);
//   fp_pow(&frobenius_5_14,&tmp,expo);
//   // fp_printf("\n5_14\n",&frobenius_5_14);

//   mpz_set_ui(expo,6);
//   fp_pow(&frobenius_6_14,&tmp,expo);
//   // fp_printf("\n6_14\n",&frobenius_6_14);

//   mpz_set_ui(expo,8);
//   fp_pow(&frobenius_8_14,&tmp,expo);
//   // fp_printf("\n8_14\n",&frobenius_8_14);

//   mpz_set_ui(expo,9);
//   fp_pow(&frobenius_9_14,&tmp,expo);
//   // fp_printf("\n9_14\n",&frobenius_9_14);

//   mpz_set_ui(expo,10);
//   fp_pow(&frobenius_10_14,&tmp,expo);
//   // fp_printf("\n10_14\n",&frobenius_10_14);

//   mpz_set_ui(expo,11);
//   fp_pow(&frobenius_11_14,&tmp,expo);
//   // fp_printf("\n11_14\n",&frobenius_11_14);

//   mpz_set_ui(expo,12);
//   fp_pow(&frobenius_12_14,&tmp,expo);
//   // fp_printf("\n12_14\n",&frobenius_12_14);

//   mpz_set_ui(expo,13);
//   fp_pow(&frobenius_13_14,&tmp,expo);
//   // fp_printf("\n1_13\n",&frobenius_13_14);
//   // getchar();
//   mpz_clear(expo);
// }

void frobenius_precalculation(){
  fp_t tmp;
  mpz_t expo;
  fp_init(&tmp);
  mpz_init(expo);

  //tmp = c^((p-1)/14)
  mpz_sub_ui(expo,prime_z,1);
  mpz_divexact_ui(expo,expo,6);
  fp_pow(&tmp,&base_c,expo);
  fp_set(&frobenius_1_6,&tmp);
  // fp_printf("\n1_14\n",&frobenius_1_14);
  mpz_set_ui(expo,2);
  fp_pow(&frobenius_2_6,&tmp,expo);
  // fp_printf("\n2_14\n",&frobenius_2_14);

  mpz_set_ui(expo,4);
  fp_pow(&frobenius_4_6,&tmp,expo);
  // fp_printf("\n4_14\n",&frobenius_4_14);

  mpz_set_ui(expo,5);
  fp_pow(&frobenius_5_6,&tmp,expo);
  // fp_printf("\n5_14\n",&frobenius_5_14);

  mpz_clear(expo);
}

void curve_search(){
  //s = p + 1 - t を計算する
  mpz_t s;
  mpz_init(s);
  mpz_add_ui(s,prime_z,1);
  mpz_sub(s,s,trace_z);

  fp_set_ui(&curve_a,0);

  efp_t efp_P,efp_sP;
  efp_init(&efp_P);
  efp_init(&efp_sP);

  while(1){
    fp_add_ui(&curve_a,&curve_a,1);
    efp_rational_point(&efp_P);
    efp_scm(&efp_sP,&efp_P,s);
    if(efp_sP.infinity==1)  break;
  }

  mpz_clear(s);
  fp_println("curve_a = ",&curve_a);
}

void create_twist_curve(){
  //2次ツイスト曲線を求める(v in Fp7 がQNR)
  //今回はv=α
  //よって、y^2 = x^3 + a*α^(-2)x
  //curve_a_twistは a*α^(-2)=(0,0,0,0,0,ac^-1,0)となる
  fp_init(&curve_a_twist_x3);
  fp_mul(&curve_a_twist_x3,&curve_a,&base_c_inv);
  printf("curve_a_twist = (0,0,0,0,0,");
  fp_printf("",&curve_a_twist_x3);
  printf(",0)\n");
}

void frobenius_trace(mpz_t *trace,unsigned int m){
  mpz_t t_m[33];
  mpz_t t_2,tmp1,tmp2;
  for(int i=0;i<33;i++) mpz_init(t_m[i]);
  mpz_init(t_2);
  mpz_init(tmp1);
  mpz_init(tmp2);

  mpz_set(t_m[0],trace_z);
  //t_2=(t^2 -2p)の計算
  mpz_mul(t_2,trace_z,trace_z);
  mpz_mul_ui(tmp1,prime_z,2);
  mpz_sub(t_2,t_2,tmp1);
  mpz_set(t_m[1],t_2);

  for(int i=2;i<m;i++){
    mpz_mul(tmp1,trace_z,t_m[i-1]);
    mpz_mul(tmp2,prime_z,t_m[i-2]);
    mpz_sub(t_m[i],tmp1,tmp2);
  }
  mpz_set(*trace,t_m[m-1]);

  for(int i=0;i<33;i++) mpz_clear(t_m[i]);
  mpz_clear(t_2);
  mpz_clear(tmp1);
  mpz_clear(tmp2);
}

void efpm_order(mpz_t *order,unsigned int m){
  mpz_t trace;
  mpz_init(trace);

  frobenius_trace(&trace,m);
  mpz_pow_ui(*order,prime_z,m);
  mpz_add_ui(*order,*order,1);
  mpz_sub(*order,*order,trace);

  mpz_clear(trace);
}

// void create_weil(){
//   efpm_order(&efp_total,1);
//   efpm_order(&efp5_total,5);
//   efpm_order(&efp10_total,10);

//   mpz_sub_ui(miller_loop_s,trace_z,1);

//   //X = 1 (mod 2) である
//   //(X+1)/2をあらかじめ求めておく
//   mpz_add_ui(X_1_div2,X_z,1);
//   mpz_divexact_ui(X_1_div2,X_1_div2,2);
//   //(X -1)をあらかじめ求めておく
//   mpz_sub_ui(X_1,X_z,1);
// }
void create_weil(){
  efpm_order(&efp_total,1);
  efpm_order(&efp7_total,7);
  efpm_order(&efp14_total,14);

  mpz_sub_ui(miller_loop_s,trace_z,1);

  //X = 1 (mod 2) である
  //(X+1)/2をあらかじめ求めておく
  mpz_t temp;
  mpz_init(temp);
  //mpz_add_ui(X_1_div2,X_z,1);
  mpz_powm_ui(X_1_div2,X_z,6,prime_z);
  mpz_powm_ui(temp,X_z,4,prime_z);
  mpz_sub(X_1_div2,X_1_div2,temp);
  mpz_mul(temp,X_z,X_z);
  mpz_sub(X_1_div2,X_1_div2,temp);
  mpz_add_ui(X_1_div2,X_1_div2,1);
  mpz_clear(temp);
  //in k14 X_1_div2 = Rmabda5 = x^6 - x^4 -x^2 + 1
  //(X -1)をあらかじめ求めておく
  mpz_sub_ui(X_1,X_z,1);
  //(x^2)
  mpz_mul(X_2,X_z,X_z);
#ifdef OriginalExp
  mpz_sub_ui(X_2_1,X_2,1);
#endif
#ifdef LoubnaExp
  mpz_add_ui(X_2_1,X_2,1);
  mpz_mul(X_2_1,X_2_1,X_2_1);
#endif

}

// void skew_frobenius_map_g2(efp7_t *skew_Q,efp7_t *Q){
//   skew_Q->infinity=Q->infinity;
//   fp_mul(&skew_Q->x.x0,&Q->x.x0,&frobenius_2_10);
//   fp_mul(&skew_Q->x.x1,&Q->x.x1,&frobenius_4_10);
//   fp_mul(&skew_Q->x.x2,&Q->x.x2,&frobenius_6_10);
//   fp_mul(&skew_Q->x.x3,&Q->x.x3,&frobenius_8_10);
//   fp_set(&skew_Q->x.x4,&Q->x.x4);

//   fp_mul(&skew_Q->y.x0,&Q->y.x0,&frobenius_3_10);
//   fp_set_neg(&skew_Q->y.x1,&Q->y.x1);
//   fp_mul(&skew_Q->y.x2,&Q->y.x2,&frobenius_7_10);
//   fp_mul(&skew_Q->y.x3,&Q->y.x3,&frobenius_9_10);
//   fp_mul(&skew_Q->y.x4,&Q->y.x4,&frobenius_1_10);
// }

// void tmp_init(){
//   mpz_init(X_z);
//   mpz_init(prime_z);
//   mpz_init(order_z);
//   mpz_init(trace_z);

//   mpz_init(efp_total);
//   mpz_init(efp5_total);
//   mpz_init(efp10_total);

//   mpz_init(miller_loop_s);
//   mpz_init(X_1_div2);
//   mpz_init(X_1);
// }
void tmp_init(){
  mpz_init(X_z);
  mpz_init(prime_z);
  mpz_init(order_z);
  mpz_init(trace_z);

  mpz_init(efp_total);
  mpz_init(efp7_total);
  mpz_init(efp14_total);

  mpz_init(miller_loop_s);
  mpz_init(X_1_div2);
  mpz_init(X_1);
  mpz_init(X_2);
  mpz_init(X_2_1);
  mpz_init_set_ui(four,4);
}
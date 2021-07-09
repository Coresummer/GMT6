#include "create.h"

void create_prt(){
  //c=22,HW=6
  mpz_set_str(X_z,"efffffffffffffe00000000000000000",16);
  mpz_set_str(prime_z,"9401ff90f28bffb0c610fb10bf9e0fefd59211629a7991563c5e468d43ec9cfe1549fd59c20ab5b9a7cda7f27a0067b8303eeb4b31555cf4f24050ed155555cd7fa7a5f8aaaaaaad47ede1a6aaaaaaaab69e6dcb",16);
  if(!mpz_probab_prime_p(prime_z,30))printf("Inputed p*(prime_z) is not a prime");

  mpz_set_str(order_z,"e0ffffffffffffc400000000000003ff10000000000000200000000000000001",16);
  mpz_set_str(trace_z,"-e0ffffffffffffc400000000000003fe20000000000000400000000000000000",16);
  const unsigned char* xai = reinterpret_cast<const unsigned char *>("efffffffffffffe00000000000000000");
  mpn_set_str(&X,xai,sizeof(char)*34,16); //ui(&X,1,319014718988379808906617884108577046528);
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
  gmp_printf("fp6 = fp2[beta]/(beta^3 -alpha)\n");

  fp_println("base_c     = ",&base_c);
  fp_println("base_c_inv = ",&base_c_inv);
  printf("---------------------------------\n");
}

void check_base(){
  fp_t tmp;
  fp2_t tmp2;
  fp_init(&tmp);
  fp2_init(&tmp2);
  mpz_t expo;
  mpz_init(expo);

  //check base_c = QNR
  fp_set(&tmp,&base_c);
  mpz_sub_ui(expo,prime_z,1);
  mpz_divexact_ui(expo,expo,2);
  fp_pow(&tmp,&base_c,expo);
  if(fp_cmp_one(&tmp)==0) printf("error!!! c^((p-1)/2)==1\n\n");

  mpz_set_ui(expo,2);
  fp_pow(&tmp,&tmp,expo);
  // fp_println("c^(p-1) :",&tmp);
  if(fp_cmp_one(&tmp)!=0) printf("error!!! c^(p-1)!=1\n\n");
  
  //check base_c = QNR
  fp_set_ui(&tmp2.x1,1);
  mpz_pow_ui(expo,prime_z,2);
  mpz_sub_ui(expo,expo,1);
  mpz_divexact_ui(expo,expo,3);
  fp2_pow(&tmp2,&tmp2,expo);
  fp2_println("fp2",&tmp2);
  if(fp2_cmp_one(&tmp2)==0) printf("error!!! alpha^((p^3-1)/2)==1\n\n");
  
  mpz_set_ui(expo,3);
  fp2_pow(&tmp2,&tmp2,expo);
  if(fp2_cmp_one(&tmp2)!=0) printf("error!!! alpha^(p^3-1)!=1\n\n");

  fp_mul(&tmp,&base_c,&base_c_inv);
  //fp_println("base_c * base_c_inv = ",&tmp);
  if(fp_cmp_one(&tmp)!=0) printf("error!!! base_c * base_c_inv!=1\n\n");

  mpz_clear(expo);
}

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
  printf("Frobenius precalculation is done\n");

}

void curve_search(){
  //s = p + 1 - t を計算する
  mpz_t s;
  mpz_init(s);
  mpz_add_ui(s,prime_z,1);
  mpz_sub(s,s,trace_z);

  fp_set_ui(&curve_b,1);
  fp_set_neg(&curve_b,&curve_b);


  // efp_t efp_P,efp_sP;
  // efp_init(&efp_P);
  // efp_init(&efp_sP);

  // while(1){
  //   fp_add_ui(&curve_a,&curve_a,1);
  //   efp_rational_point(&efp_P);
  //   efp_scm(&efp_sP,&efp_P,s);
  //   if(efp_sP.infinity==1)  break;
  // }

  mpz_clear(s);
  //fp_println("curve_a = ",&curve_a);
  printf("Elliptic curve search is done\n");
}

void create_twist_curve(){
  //2次ツイスト曲線を求める(v in Fp7 がQNR)
  //今回はv=BETA
  //よって、y^2 = x^3 + b*α^(-2)x
  //curve_b_twistは a*α^(-2)=(0,0,0,0,0,ac^-1,0)となる
  fp_init(&curve_b_twist_x3);
  fp_mul(&curve_b_twist_x3,&curve_b,&base_c_inv);////base_c=D Type  //base_c_inv=M Type
  printf("curve_b_twist = (");
  fp_printf("",&curve_b_twist_x3);
  printf("0,0,0,0,0)\n");
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

void create_weil(){
  efpm_order(&efp_total,1);
  efpm_order(&efp2_total,2);
  efpm_order(&efp6_total,6);
  mpz_t temp;
  mpz_init(temp);

  frobenius_trace(&temp,6);
  mpz_add(fp6_total_r,efp6_total,temp);
  mpz_sub_ui(fp6_total_r,fp6_total_r,2);
  mpz_divexact(fp6_total_r,fp6_total_r,order_z);
  // gmp_printf("fp6_total_r:%Zd\n",fp6_total_r);

  mpz_set(miller_loop_s,X_z);
  //X = 1 (mod 2) である
  //(X+1)/2をあらかじめ求めておく

  //mpz_add_ui(X_1_div2,X_z,1);
  // mpz_powm_ui(X_1_div2,X_z,6,prime_z);
  // mpz_powm_ui(temp,X_z,4,prime_z);
  // mpz_sub(X_1_div2,X_1_div2,temp);
  // mpz_mul(temp,X_z,X_z);
  // mpz_sub(X_1_div2,X_1_div2,temp);
  // mpz_add_ui(X_1_div2,X_1_div2,1);

  mpz_mul(hardpart,prime_z,prime_z);
  mpz_sub(hardpart,hardpart,prime_z);
  mpz_add_ui(hardpart,hardpart,1);
  mpz_divexact(hardpart,hardpart,order_z);

  mpz_set_str(hp_3w,"1811507161526425387769904",10);
  
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

void tmp_init(){
  mpz_init(X_z);
  mpz_init(prime_z);
  mpz_init(order_z);
  mpz_init(trace_z);

  mpz_init(efp_total);
  mpz_init(efp2_total);
  mpz_init(efp6_total);
  mpz_init(fp6_total_r);

  mpz_init(miller_loop_s);
  mpz_init(X_1_div2);
  mpz_init(X_1);
  mpz_init(X_2);
  mpz_init(X_2_1);
  mpz_init_set_ui(four,4);

  mpz_init(hardpart);
  mpz_init(hp_3w);
  mpz_init_set_ui(four,4);
  mpz_init_set_ui(three,3);

}
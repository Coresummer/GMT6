#include "create.h"
#include "define.h"
#include "fp.h"
#include "fp2.h"
#include "mpn.h"
#include <gmp.h>

void create_prt(){
  //c=22,HW=6
  mpz_set_str(X_z,"efffffffffffffe00000000000000000",16);
  mpz_set_str(prime_z,"9401ff90f28bffb0c610fb10bf9e0fefd59211629a7991563c5e468d43ec9cfe1549fd59c20ab5b9a7cda7f27a0067b8303eeb4b31555cf4f24050ed155555cd7fa7a5f8aaaaaaad47ede1a6aaaaaaaab69e6dcb",16);
  if(!mpz_probab_prime_p(prime_z,30))printf("Inputed p*(prime_z) is not a prime");

  mpz_set_str(order_z,"e0ffffffffffffc400000000000003ff10000000000000200000000000000001",16);
  mpz_set_str(trace_z,"-101770390931234937007371831919591261029326821356639893990345552768526322761728",10);
  const unsigned char* xai = reinterpret_cast<const unsigned char *>("efffffffffffffe00000000000000000");
  mpn_set_str(&X,xai,sizeof(char)*34,16); //ui(&X,1,319014718988379808906617884108577046528);
  mpn_set_mpz(prime,prime_z);
  mpn_mul_n(prime2,prime,prime,FPLIMB);
  mpn_copyd(&prime672[11],prime,FPLIMB);
  // mpn_lshift(prime672,prime672,FPLIMB2,64);
  gmp_printf("%Nx\n Size %d\n\n",prime672,FPLIMB2,mpn_sizeinbase(prime672,FPLIMB2,2));
  mpn_copyd(&prime705[11],prime,FPLIMB);
  mpn_lshift(prime705,prime705,FPLIMB2,1);
  gmp_printf("%Nx\n Size %d\n\n",prime705,FPLIMB2,mpn_sizeinbase(prime705,FPLIMB2,2));

  gmp_printf("X     (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(X_z,2),X_z);
  gmp_printf("prime (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(prime_z,2),prime_z);
  gmp_printf("order (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(order_z,2),order_z);
  gmp_printf("trace (%4dbit length) = %Zd\n",(int)mpz_sizeinbase(trace_z,2),trace_z);
  printf("X     (HW :%2ld)(binary) = ",mpz_popcount(X_z));
  mpz_out_str(stdout,2,X_z);printf("\n");
  printf("trace (HW :%2ld)(binary) = ",mpz_popcount(trace_z));
  mpz_out_str(stdout,2,trace_z);printf("\n");
  fp_set_ui(&base_c,1);
  fp_set_neg(&base_c, &base_c);
  fp_inv(&base_c_inv,&base_c);
  fp_set_ui(&base_d,4);
  fp_set_neg(&base_d, &base_d);
  fp_inv(&base_d_inv,&base_d);

  gmp_printf("\nmodulo polynomial\n");

  gmp_printf("fp2  = fp[alpha]/(alpha^2 -%Nu)\n",base_c.x0,FPLIMB);
  gmp_printf("fp6 = fp2[beta]/(beta^3 -alpha)\n");

  fp_println("base_c     = ",&base_c);
  fp_println("base_c_inv = ",&base_c_inv);
  printf("---------------------------------\n");
  miller_loop_v = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0};
  finalexp_pow_x = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 1};
  finalexp_pow_x_1 = {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 1};
  finalexp_pow_3w = {0, 0, 0, 0, -1, 0, 1, 0, 0, 0, 0, 0, 0,  1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  1, 0, -1, 0,  1, 0, -1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1};
  finalexp_pow_w =  {0, 0, 0, 0,  1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0,  0, 0, -1, 0,  0, 0, 0, 0, 0, 0, 0, 0,  1};
}

void check_base(){
  fp_t tmp,base_d;
  fp2_t tmp2;
  fp_init(&tmp);
  fp_init(&base_d);
  fp_set_ui(&base_d, 4);
  fp_set_neg(&base_d, &base_d);
  fp2_init(&tmp2);
  mpz_t expo;
  mpz_init(expo);

  //check base_c = QNR
  mpz_sub_ui(expo,prime_z,1);
  mpz_divexact_ui(expo,expo,2);
  fp_pow(&tmp,&base_c,expo);
  if(fp_cmp_one(&tmp)==0) printf("error!!! c^((p-1)/2)==1\n\n");

  mpz_sub_ui(expo,prime_z,1);
  mpz_divexact_ui(expo,expo,3);
  fp_pow(&tmp,&base_c,expo);
  if(fp_cmp_one(&tmp)==0) printf("error!!! c^(p-1)/3==1\n\n");

  //check base_c = QNR
  mpz_sub_ui(expo,prime_z,1);
  mpz_divexact_ui(expo,expo,2);
  fp_pow(&tmp,&base_d,expo);
  if(fp_cmp_one(&tmp)==0) printf("error!!! -4^((p-1)/2)==1\n\n");

  mpz_sub_ui(expo,prime_z,1);
  mpz_divexact_ui(expo,expo,3);
  fp_pow(&tmp,&base_d,expo);
  if(fp_cmp_one(&tmp)==0) printf("error!!! -4^(p-1)/3==1\n\n");

  fp2_t base_fp2;
  fp2_init(&base_fp2);
  fp2_set_ui_ui(&base_fp2, 0);
  fp_set_ui(&base_fp2.x1,2);
  mpz_mul(expo,prime_z,prime_z);
  mpz_sub_ui(expo,expo,1);
  mpz_divexact_ui(expo,expo,3);
  fp2_pow(&base_fp2,&base_fp2,expo);
  if(fp2_cmp_one(&base_fp2)==0) printf("error!!! c^(p^2-1)/3==1\n\n");

  mpz_clear(expo);
}

void frobenius_precalculation(){
  fp_t tmp;
  fp_t base_d;
  mpz_t expo;
  fp_init(&tmp);
  fp_init(&base_d);
  fp_set_ui(&base_d,4);
  fp_set_neg(&base_d,&base_d);
  mpz_init(expo);

  mpz_sub_ui(expo,prime_z,1);
  mpz_divexact_ui(expo,expo,6);

  fp_pow(&tmp,&base_d,expo);
  fp_set(&frobenius_1_6,&tmp);
  fp_to_montgomery(&frobenius_1_6MR, &frobenius_1_6);
  fp_printf("\n1_6\n",&frobenius_1_6);
  mpz_set_ui(expo,2);
  fp_pow(&frobenius_2_6,&tmp,expo);
  fp_to_montgomery(&frobenius_2_6MR, &frobenius_2_6);
  fp_printf("\n2_6\n",&frobenius_2_6);

  mpz_set_ui(expo,4);
  fp_pow(&frobenius_4_6,&tmp,expo);
  fp_to_montgomery(&frobenius_4_6MR, &frobenius_4_6);
  fp_printf("\n4_6\n",&frobenius_4_6);

  mpz_set_ui(expo,5);
  fp_pow(&frobenius_5_6,&tmp,expo);
  fp_to_montgomery(&frobenius_5_6MR, &frobenius_5_6);
  fp_printf("\n5_6\n",&frobenius_5_6);

  mpz_clear(expo);

}

void curve_search(){
  mpz_t s;
  mpz_init(s);
  mpz_add_ui(s,prime_z,1);
  mpz_sub(s,s,trace_z);

  fp_set_ui(&curve_b,1);
  fp_set_neg(&curve_b,&curve_b);

  mpz_clear(s);

  printf("Elliptic curve search is done\n");
}

void frobenius_trace(mpz_t *trace,unsigned int m){
  mpz_t t_m[33];
  mpz_t t_2,tmp1,tmp2;
  for(int i=0;i<33;i++) mpz_init(t_m[i]);
  mpz_init(t_2);
  mpz_init(tmp1);
  mpz_init(tmp2);

  mpz_set(t_m[0],trace_z);

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
  mpz_set(miller_loop_s,X_z);

  mpz_sub(hardpart,hardpart,prime_z);
  mpz_add_ui(hardpart,hardpart,1);
  mpz_divexact(hardpart,hardpart,order_z);

  mpz_set_str(hp_3w,"1811507161526425387769904",10);
  
  mpz_clear(temp);

  mpz_sub_ui(X_1,X_z,1);

  mpz_mul(X_2,X_z,X_z);

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
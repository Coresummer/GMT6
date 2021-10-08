#pragma once
#include <sys/types.h>
#ifdef TTT_INSTANCE_HERE
    #define TTT_EXTERN
#else
    #define TTT_EXTERN extern
#endif

#ifndef DEFINE_H
#define DEFINE_H

#include <stdio.h>
#include <stdlib.h>
#include <gmp.h>
#include <time.h>
#include <sys/time.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>
#include <assert.h>
#include <string.h>
#include <vector>
#include <string>
#include <iostream>
#include "./libmcl/mcl.h"

extern "C"{
  #define ARCBIT 64  //64bit processor
  //#define ARCBIT 32 //32bit processor

  // #define DEBUG_COST_A
  //#define DEBUG_ASSERT
  #define CHECK_PAIRING_TIME_LOOP 1

  /**************Option**************/
  #define X64
  /**********************************/

  #ifdef  X64
  #define FPLIMB_BITS FPLIMB*ARCBIT
  #define FPLIMB 11 //
  #define FPLIMB2 FPLIMB*2  //
  #endif

  #ifdef X32
  #define FPLIMB_BITS FPLIMB* ARCBIT
  #define FPLIMB 22
  #define FPLIMB2 FPLIMB*2  //??
  #endif

  #define scalar_t mpz_t

  #define k6_X_length 128//////37??

  typedef unsigned _ExtInt(FPLIMB*ARCBIT)  fp_t;
  typedef struct{
    fp_t x0,x1;
  }fp2_t;

  typedef struct{
    fp2_t x0,x1,x2;
  }fp6_t;

  typedef unsigned _ExtInt(FPLIMB2*ARCBIT) fpd_t;
  typedef struct{
    fpd_t x0,x1;
  }fpd2_t;
  typedef struct{
    fpd2_t x0,x1,x2;
  }fpd6_t;
  //tmp finite field
  TTT_EXTERN mp_limb_t buf[FPLIMB];

  /*Elliptic Curve*/
  typedef struct{
    fp_t x,y;
    int infinity;
  }efp_t;
  typedef struct{
    fp2_t x,y;
    int infinity;
  }efp2_t;
  typedef struct{
    fp6_t x,y;
    int infinity;
  }efp6_t;

  /*Projectiv Elliptic Curve*/
  typedef struct{
    fp_t x,y,z;
    int infinity;
  }efp_projective_t;
  typedef struct{
    fp2_t x,y,z;
    int infinity;
  }efp2_projective_t;
  typedef struct{
    fp6_t x,y,z;
    int infinity;
  }efp6_projective_t;

  /*Jacobian Elliptic Curve*/
  typedef struct{
    fp_t x,y,z;
    int infinity;
  }efp_jacobian_t;
  typedef struct{
    fp2_t x,y,z;
    int infinity;
  }efp2_jacobian_t;
  typedef struct{
    fp6_t x,y,z;
    int infinity;
  }efp6_jacobian_t;

  TTT_EXTERN gmp_randstate_t state;//for random
  TTT_EXTERN int cost_add,cost_add_ui,cost_sub,cost_sub_ui,cost_mul,cost_mul_ui,cost_mul_base,cost_sqr,cost_inv,cost_mod,cost_set_neg;
  TTT_EXTERN int cost_add_nonmod, cost_add_nonmod_double, cost_sub_nonmod, cost_sub_nonmod_double, cost_r1shift, cost_mod_nomal;
  TTT_EXTERN mpz_t X_z,prime_z,order_z,trace_z;
  TTT_EXTERN fp_t X,prime,order,trace;
  TTT_EXTERN fpd_t prime705;
  TTT_EXTERN mp_limb_t X_mpn[FPLIMB],prime_mpn[FPLIMB],order_mpn[FPLIMB],trace_mpn[FPLIMB];
  // // TTT_EXTERN mp_limb_t X,prime[FPLIMB];
  // // TTT_EXTERN mp_limb_t prime2[FPLIMB2];
  TTT_EXTERN fp_t base_c;//α^7=c, β^2=α となるように逐次拡大で拡大体を構成する
  TTT_EXTERN fp_t base_c_inv;//α^7=c, β^2=α に出てくるcの逆元の計算結果
  TTT_EXTERN fp_t fp_t_zero, fp_t_one;
  TTT_EXTERN fpd_t fpd_t_zero, fpd_t_one;

  // TTT_EXTERN fp_t curve_b;
  // TTT_EXTERN mpz_t sqrt_power_z;

  TTT_EXTERN mpz_t efp_total,efp2_total,efp6_total,fp6_total_r;//#efp,#efp5,#efp10,#efp7,#efp14
  TTT_EXTERN mpz_t miller_loop_s;
  TTT_EXTERN std::vector<int> miller_loop_v, finalexp_pow_x, finalexp_pow_x_1, finalexp_pow_3w;
  TTT_EXTERN mpz_t X_1_div2,X_1,X_2,X_2_1,four;//(kai +1)/2,(kai -1),(kai^2)をあらかじめ求めておく
  TTT_EXTERN mpz_t hardpart,hp_3w,three;
  // //emb6
  TTT_EXTERN fp_t frobenius_1_6,frobenius_2_6,frobenius_4_6,frobenius_5_6;//c^((p-1)/10)の計算結果
  TTT_EXTERN fp_t frobenius_1_6MR,frobenius_2_6MR,frobenius_4_6MR,frobenius_5_6MR;//c^((p-1)/10)の計算結果


  // // //montgomery
  TTT_EXTERN fp_t R[FPLIMB],Ri[FPLIMB],R1[FPLIMB],RR[FPLIMB],Ni[FPLIMB];
  TTT_EXTERN int m;
  TTT_EXTERN fp_t u[FPLIMB+1];
  TTT_EXTERN uint64_t N[FPLIMB2],R2[FPLIMB],R3[FPLIMB],RmodP[FPLIMB];
  TTT_EXTERN fp_t Ni_neg;  //Ni_neg=-N^(-1)


  TTT_EXTERN struct timeval tv_start,tv_end;
  TTT_EXTERN float MILLER_ATE_4SPARSE_TIME;
  TTT_EXTERN float MILLER_ATE_5SPARSE_TIME;
  TTT_EXTERN float MILLER_ATE_6SPARSE_TIME;
  TTT_EXTERN float MILLER_ATE_7SPARSE_TIME;
  TTT_EXTERN float FINAL_EXP_TIME;

  typedef struct {
    int add;
    int add_ui;
    int add_nonmod;
    int add_nonmod_double;
    int sub;
    int sub_ui;
    int sub_nonmod;
    int sub_nonmod_double;
    int mul;
    int set_neg;
    int r1shift;
    int sqr;
    int inv;
    int mod;
    int mod_nomal;
  } cost;
}
#endif

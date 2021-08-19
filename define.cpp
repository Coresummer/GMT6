// #pragma once
#ifdef TTT_INSTANCE_HERE
    #define TTT_EXTERN
#else
    #define TTT_EXTERN extern
#endif
#include <ELiPS/define.h>
// int cost_add,cost_add_ui,cost_sub,cost_sub_ui,cost_mul,cost_mul_ui,cost_sqr,cost_inv,cost_mod;
int cost_add,cost_add_ui,cost_sub,cost_sub_ui,cost_mul,cost_set_neg,cost_sqr,cost_inv,cost_mod;
int cost_add_nonmod,cost_add_nonmod_double,cost_sub_nonmod,cost_sub_nonmod_double,cost_r1shift,cost_mod_nomal;

TTT_EXTERN mp_limb_t buf[FPLIMB],tmp_mul[FPLIMB2],tmp1[FPLIMB],tmp2[FPLIMB];

/*============================================================================*/
/* Pairing functions                                                          */
/*============================================================================*/

TTT_EXTERN gmp_randstate_t state;
TTT_EXTERN mpz_t X_z,prime_z,order_z,trace_z,X_abs_z;
TTT_EXTERN mp_limb_t X_abs[FXLIMB],X2[FXLIMB2],prime[FPLIMB],order[FRLIMB],trace[FPLIMB];
TTT_EXTERN mp_limb_t prime_carry[FPLIMB];
TTT_EXTERN mp_limb_t prime2[FPLIMB2];
TTT_EXTERN fp2_t Alpha_1,Alpha_1_inv;
TTT_EXTERN mp_limb_t epsilon1[FPLIMB],epsilon2[FPLIMB];
TTT_EXTERN fp_t epsilon1_montgomery,epsilon2_montgomery;
TTT_EXTERN mpz_t efp_total,efp12_total;
TTT_EXTERN fp2_t frobenius_constant[12][6];
TTT_EXTERN fp2_t frobenius_constant_montgomery[12][6];
TTT_EXTERN fp2_t skew_frobenius_constant[12][2];
TTT_EXTERN mp_limb_t curve_b[FPLIMB];
matrix_t matrix_of_fp12_to_fp12cv,matrix_of_fp12cv_to_fp12;
matrix_t matrix_of_fp12_to_fpm2,matrix_of_fpm2_to_fp12;
matrix_t matrix_of_fp12_to_fpm,matrix_of_fpm_to_fp12;
matrix_t matrix_of_fpm_to_fp12cv,matrix_of_fp12cv_to_fpm;

TTT_EXTERN mpz_t sqrt_power_z;
TTT_EXTERN mpz_t g1_power;

//montgomery
// mp_limb_t R[FPLIMB],Ri[FPLIMB],R1[FPLIMB],RR[FPLIMB],Ni[FPLIMB];
// mp_limb_t u[FPLIMB+1];
// mp_limb_t N[FPLIMB2],R2[FPLIMB],R3[FPLIMB],RmodP[FPLIMB];
TTT_EXTERN mp_limb_t N[FPLIMB2],RmodP[FPLIMB],R3[FPLIMB];
TTT_EXTERN mp_limb_t Ni_neg;//Ni_neg=-N^(-1)
TTT_EXTERN mpz_t X_mod_order_z;
/*============================================================================*/
/* Test functions                                                             */
/*============================================================================*/
TTT_EXTERN struct timeval tv_start,tv_end;

TTT_EXTERN float MILLER_OPT_AFFINE,FINALEXP_OPT_AFFINE;
TTT_EXTERN float MILLER_OPT_PROJECTIVE,FINALEXP_OPT_PROJECTIVE;

TTT_EXTERN cost MILLER_OPT_AFFINE_COST,FINALEXP_OPT_AFFINE_COST;
TTT_EXTERN cost MILLER_OPT_PROJECTIVE_COST,FINALEXP_OPT_PROJECTIVE_COST;
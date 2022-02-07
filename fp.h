#pragma once
#ifndef FP_H
#define FP_H

#include "mpn.h"

#include "mcl.h"

void fp_init(fp_t *A);
void fpd_init(fpd_t *A);
void fp_printf(std::string str ,fp_t *A);
void fpd_printf(std::string str ,fpd_t *A);
void fpd_println(std::string str ,fpd_t *A);
void fp_println(std::string str ,fp_t *A);
void fp_printf_montgomery(std::string str ,fp_t *A);
void fp_println_montgomery(std::string str ,fp_t *A);
void fp_set(fp_t *ANS,fp_t *A);
void fp_set_fpd(fpd_t *ANS,fp_t *A);
void fpd_set(fpd_t *ANS,fpd_t *A);
void fpd_set_neg_montgomery(fpd_t *ANS,fpd_t *A);
void fp_set_ui(fp_t *ANS,unsigned long int UI);
void fp_set_mpn(fp_t *ANS,mp_limb_t *A);
#ifdef mcl
inline void fp_set_neg(fp_t *ANS,fp_t *A)
{
	mcl_neg(ANS->x0, A->x0);
}
#else
void fp_set_neg(fp_t *ANS,fp_t *A);
#endif
void fp_set_neg_montgomery(fp_t *ANS,fp_t *A);
void fp_lshift(fp_t *ANS,fp_t *A, unsigned long int UI);
#ifdef mcl
inline void fp_l1shift(fp_t *ANS,fp_t *A)
{
	mcl_add(ANS->x0, A->x0, A->x0);
}
#else
void fp_l1shift(fp_t *ANS,fp_t *A);
#endif
void fp_l1shift_nonmod_single(fp_t *ANS, fp_t *A);
void fp_l1shift_nonmod_double(fpd_t *ANS, fpd_t *A);
void fp_l1shift_single(fp_t *ANS,fp_t *A);
void fp_l1shift_double(fpd_t *ANS,fpd_t *A);
void fp_r1shift(fp_t *ANS, fp_t *A);
void fp_r1shift_nonmod_single(fp_t *ANS, fp_t *A);
void fp_hlv(fp_t *ANS,fp_t *A);
void fp_set_random(fp_t *ANS,gmp_randstate_t state);
void fp_set_random_montgomery(fp_t *ANS, gmp_randstate_t state);
void pre_montgomery();
void fp_mulmod_montgomery(fp_t *ANS,fp_t *A,fp_t *B);
#ifdef mcl
inline void mpn_mulmod_montgomery(mp_limb_t *ANS,mp_size_t /*ANS_size*/,mp_limb_t *A,mp_size_t /*A_size*/,mp_limb_t *B,mp_size_t /*B_size*/)
{
	mcl_mont(ANS, A, B);
}
#else
void mpn_mulmod_montgomery(mp_limb_t *ANS,mp_size_t ANS_size,mp_limb_t *A,mp_size_t A_size,mp_limb_t *B,mp_size_t B_size);
#endif
void fp_sqrmod_montgomery(fp_t *ANS,fp_t *A);
void mpn_sqrmod_montgomery(mp_limb_t *ANS,mp_size_t ANS_size,mp_limb_t *A,mp_size_t A_size);
void mpn_mod_montgomery(mp_limb_t *ANS,mp_size_t ANS_size,mp_limb_t *A,mp_size_t A_size);
void fp_mod_montgomery(fp_t *ANS,fp_t *A);
void fp_to_montgomery(fp_t *ANS, fp_t *A);
void mpn_to_montgomery(mp_limb_t *ANS, mp_limb_t *A);
void fp_mod(fp_t *ans, mp_limb_t *a, mp_size_t size_a);
void fp_mul(fp_t *ANS,fp_t *A,fp_t *B);
void fp_mul_nonmod(fpd_t *ANS,fp_t *A,fp_t *B);
void fp_mul_montgomery(mp_limb_t *ANS,mp_size_t ANS_size,mp_limb_t *A,mp_size_t A_size);
void fp_mul_ui(fp_t *ANS,fp_t *A,unsigned long int UI);
void fp_mul_ui_nonmod_single(fp_t *ANS, fp_t *A, unsigned long int UI);
void fp_mul_mpn(fp_t *ANS,fp_t *A,mp_limb_t *B);
#if 0//#ifdef mcl
inline void fp_sqr(fp_t *ANS,fp_t *A)
{
	mcl_mont(ANS->x0, A->x0, A->x0);
}
#else
void fp_sqr(fp_t *ANS,fp_t *A);
#endif
void fp_sqr_nonmod(fpd_t *ANS,fp_t *A);
#ifdef mcl
inline void fp_add(fp_t *ANS,fp_t *A,fp_t *B)
{
	mcl_add(ANS->x0, A->x0, B->x0);
}
#else
void fp_add(fp_t *ANS,fp_t *A,fp_t *B);
#endif

void fp_add_double(fpd_t *ANS, fpd_t *A, fpd_t *B);
void fp_add_nonmod_single(fp_t *ANS,fp_t *A,fp_t *B);
void fp_add_nonmod_double(fpd_t *ANS,fpd_t *A,fpd_t *B);
void fp_add_ui(fp_t *ANS,fp_t *A,unsigned long int UI);
void fp_add_mpn(fp_t *ANS,fp_t *A,mp_limb_t *B);
#ifdef mcl
inline void fp_sub(fp_t *ANS,fp_t *A,fp_t *B)
{
	mcl_sub(ANS->x0, A->x0, B->x0);
}
#else
void fp_sub(fp_t *ANS,fp_t *A,fp_t *B);
#endif
void fp_sub_double(fpd_t *ANS,fpd_t *A,fpd_t *B);
void fp_sub_nonmod_single(fp_t *ANS,fp_t *A,fp_t *B);
void fp_sub_nonmod_double(fpd_t *ANS,fpd_t *A,fpd_t *B);
void fp_sub_ui(fp_t *ANS,fp_t *A,unsigned long int UI);
void fp_sub_mpn(fp_t *ANS,fp_t *A,mp_limb_t *B);
void fp_inv(fp_t *ANS,fp_t *A);
void fp_inv_montgomery(fp_t *ANS,fp_t *A);
int  fp_legendre(fp_t *A);
void fp_sqrt(fp_t *ANS,fp_t *A);
void fp_pow(fp_t *ANS,fp_t *A,mpz_t scalar);
void fp_pow_mpn(fp_t *ans,fp_t *a,mp_limb_t *r,mp_size_t n);
void fp_pow_montgomery(fp_t *ANS, fp_t *A, mpz_t scalar);
int  fp_cmp(fp_t *A,fp_t *B);
int  fp_cmp_ui(fp_t *A,unsigned long int UI);
int  fp_cmp_mpn(fp_t *A,mp_limb_t *B);
int  fp_cmp_zero(fp_t *A);
int  fp_cmp_one(fp_t *A);
int fpd_cmp_zero(fpd_t *A);
int fp_montgomery_trick(fp_t *A_inv,fp_t *A,int n);
int fp_montgomery_trick_montgomery(fp_t *A_inv,fp_t *A,int n);
void fp_lshift_ui_nonmod_single(fp_t *ANS, fp_t *A, int s);
void fp_lshift_ui_nonmod_double(fpd_t *ANS, fpd_t *A, int s);

#ifdef mcl
#define fp_mul_base fp_set_neg
#else
void fp_mul_base(fp_t *ANS,fp_t *A);
#endif

void fp_mul_base_nonmod_sigle(fp_t *ANS,fp_t *A);
void fp_mul_base_nonmod_double(fpd_t *ANS,fpd_t *A);

void fp_mul_base_inv(fp_t *ANS,fp_t *A);
void fp_mul_base_inv_single(fp_t *ANS,fp_t *A);

#endif

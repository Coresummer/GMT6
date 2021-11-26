#pragma once
#ifndef FP2_H
#define FP2_H

#include "fp.h"

void fp2_init(fp2_t *A);
void fpd2_init(fpd2_t *A);
void fp2_printf(std::string str ,fp2_t *A);
void fp2_println(std::string str ,fp2_t *A);
void fpd2_println(std::string str ,fpd2_t *A);
void fp2_printf_montgomery(std::string str ,fp2_t *A);
void fp2_println_montgomery(std::string str, fp2_t *A);
void fp2_set(fp2_t *ANS,fp2_t *A);
void fpd2_set(fpd2_t *ANS, fpd2_t *A);
void fp2_set_ui(fp2_t *ANS,unsigned long int UI);
void fp2_set_ui_ui(fp2_t *ANS,unsigned long int UI);
void fp2_set_mpn(fp2_t *ANS,mp_limb_t *A);
void fp2_set_neg(fp2_t *ANS,fp2_t *A);
void fp2_set_conj(fp2_t *ANS,fp2_t *A);
void fp2_set_conj_montgomery(fp2_t *ANS,fp2_t *A);
void fp2_set_conj_montgomery_fpd(fpd2_t *ANS,fp2_t *A);
void fp2_to_montgomery(fp2_t *ANS,fp2_t *A);
void fp2_mod_montgomery(fp2_t *ANS,fp2_t *A);
void fp2_mod_montgomery_double(fp2_t *ANS,fpd2_t *A);
void fp2_r1shift(fp2_t *ANS, fp2_t *A);
void fp2_lshift(fp2_t *ANS, fp2_t *A, unsigned long int UI);
void fp2_l1shift(fp2_t *ANS, fp2_t *A);
void fp2_l1shift_double(fpd2_t *ANS, fpd2_t *A);
void fp2_l1shift_nonmod_single(fp2_t *ANS, fp2_t *A);
void fp2_l1shift_nonmod_double(fpd2_t *ANS, fpd2_t *A);
void fp2_hlv(fp2_t *ANS,fp2_t *A);
void fp2_set_random(fp2_t *ANS,gmp_randstate_t state);
void fp2_mul(fp2_t *ANS,fp2_t *A,fp2_t *B);
void fp2_mul_lazy(fp2_t *ANS,fp2_t *A,fp2_t *B);
void fp2_mul_lazy_montgomery(fp2_t *ANS,fp2_t *A,fp2_t *B);
void fp2_mul_nonmod_montgomery(fpd2_t *ANS,fp2_t *A,fp2_t *B);
void fp2_mul_ui(fp2_t *ANS,fp2_t *A,unsigned long int UI);
void fp2_mul_mpn(fp2_t *ANS,fp2_t *A,mp_limb_t *B);
void fp2_mul_mpn_montgomery(fp2_t *ANS,fp2_t *A,mp_limb_t *B);
void fp2_sqr(fp2_t *ANS,fp2_t *A);
void fp2_sqr_final(fp2_t *ANS,fp2_t *A);
void fp2_sqr_lazy(fp2_t *ANS,fp2_t *A);
void fp2_sqr_lazy_montgomery(fp2_t *ANS,fp2_t *A);
void fp2_sqr_nonmod_montgomery(fpd2_t *ANS, fp2_t *A);
void fp2_sqr_nonmod_montgomery2(fpd2_t *ANS, fp2_t *A);
void fp2_add(fp2_t *ANS,fp2_t *A,fp2_t *B);
void fp2_add_double(fpd2_t *ANS,fpd2_t *A,fpd2_t *B);
void fp2_add_nonmod_single(fp2_t *ANS,fp2_t *A,fp2_t *B);
void fp2_add_nonmod_double(fpd2_t *ANS,fpd2_t *A,fpd2_t *B);
void fp2_add_ui(fp2_t *ANS,fp2_t *A,unsigned long int UI);
void fp2_add_ui_ui(fp2_t *ANS,fp2_t *A,unsigned long int UI);
void fp2_add_mpn(fp2_t *ANS,fp2_t *A,mp_limb_t *B);
void fp2_sub(fp2_t *ANS,fp2_t *A,fp2_t *B);
void fp2_sub_double(fpd2_t *ANS,fpd2_t *A,fpd2_t *B);
void fp2_sub_nonmod_single(fp2_t *ANS,fp2_t *A,fp2_t *B);
void fp2_sub_nonmod_double(fpd2_t *ANS,fpd2_t *A,fpd2_t *B);
void fp2_sub_ui(fp2_t *ANS,fp2_t *A,unsigned long int UI);
void fp2_sub_ui_ui(fp2_t *ANS,fp2_t *A,unsigned long int UI);
void fp2_sub_mpn(fp2_t *ANS,fp2_t *A,mp_limb_t *B);
void fp2_inv(fp2_t *ANS,fp2_t *A);
void fp2_inv_lazy(fp2_t *ANS, fp2_t *A);
void fp2_inv_lazy_montgomery(fp2_t *ANS,fp2_t *A);
int fp2_legendre(fp2_t *A);
void fp2_sqrt(fp2_t *ANS,fp2_t *A);
void fp2_pow(fp2_t *ANS,fp2_t *A,mpz_t scalar);
void fp2_pow_montgomery(fp2_t *ANS, fp2_t *A, mpz_t scalar);
int fp2_cmp(fp2_t *A,fp2_t *B);
int fp2_cmp_ui(fp2_t *A,unsigned long int UI);
int fp2_cmp_mpn(fp2_t *A,mp_limb_t *B);
int fp2_cmp_zero(fp2_t *A);
int fp2_cmp_one(fp2_t *A);
int fp2_montgomery_trick_montgomery(fp2_t *A_inv,fp2_t *A,int n);

void fp2_frobenius_map_p1(fp2_t *ANS,fp2_t *A);
void fp2_frobenius_map_p2(fp2_t *ANS,fp2_t *A);
void fp2_frobenius_map_p3(fp2_t *ANS,fp2_t *A);

void fp2_mul_base(fp2_t *ANS,fp2_t *A);
void fp2_mul_base_montgomery(fp2_t *ANS,fp2_t *A);
void fp2_mul_base_nonmod_single(fp2_t *ANS,fp2_t *A);
void fp2_mul_base_nonmod_double(fpd2_t *ANS,fpd2_t *A);
#endif

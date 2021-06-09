#pragma once
#ifndef fp3_H
#define fp3_H

#include "fp.h"

void fp3_init(fp3_t *A);
void fp3_printf(char *str,fp3_t *A);
void fp3_println(char *str,fp3_t *A);
void fpd3_println(char *str,fpd3_t *A);
void fp3_printf_montgomery(char *str,fp3_t *A);
void fp3_set(fp3_t *ANS,fp3_t *A);
void fp3_set_ui(fp3_t *ANS,unsigned long int UI);
void fp3_set_ui_ui(fp3_t *ANS,unsigned long int UI);
void fp3_set_mpn(fp3_t *ANS,mp_limb_t *A);
void fp3_set_neg(fp3_t *ANS,fp3_t *A);
void fp3_to_montgomery(fp3_t *ANS,fp3_t *A);
void fp3_mod_montgomery(fp3_t *ANS,fp3_t *A);
void fp3_mod_montgomery_double(fp3_t *ANS,fpd3_t *A);
void fp3_lshift_1(fp3_t *ANS,fp3_t *A);
void fp3_hlv(fp3_t *ANS,fp3_t *A);
void fp3_set_random(fp3_t *ANS,gmp_randstate_t state);
void fp3_mul(fp3_t *ANS,fp3_t *A,fp3_t *B);

void fp3_mul_sparse_add_1(fp3_t *ANS,fp3_t *A,fp3_t *B);
void fp3_mul_sparse_add_2(fp3_t *ANS,fp3_t *A,fp3_t *B);

void fp3_mul_sparse_dbl_1(fp3_t *ANS,fp3_t *A,fp3_t *B);
void fp3_mul_sparse_dbl_2(fp3_t *ANS,fp3_t *A,fp3_t *B);

void fp3_mul_lazy_montgomery(fp3_t *ANS,fp3_t *A,fp3_t *B);
void fp3_mul_nonmod_montgomery(fp3_t *ANS,fp3_t *A,fp3_t *B);
void fp3_mul_ui(fp3_t *ANS,fp3_t *A,unsigned long int UI);
void fp3_mul_mpn(fp3_t *ANS,fp3_t *A,mp_limb_t *B);
void fp3_mul_mpn_montgomery(fp3_t *ANS,fp3_t *A,mp_limb_t *B);
void fp3_sqr(fp3_t *ANS,fp3_t *A);
void fp3_sqr_lazy_montgomery(fp3_t *ANS,fp3_t *A);
void fp3_add(fp3_t *ANS,fp3_t *A,fp3_t *B);
void fp3_add_nonmod_single(fp3_t *ANS,fp3_t *A,fp3_t *B);
void fp3_add_nonmod_double(fpd3_t *ANS,fpd3_t *A,fpd3_t *B);
void fp3_add_ui(fp3_t *ANS,fp3_t *A,unsigned long int UI);
void fp3_add_ui_ui(fp3_t *ANS,fp3_t *A,unsigned long int UI);
void fp3_add_mpn(fp3_t *ANS,fp3_t *A,mp_limb_t *B);
void fp3_sub(fp3_t *ANS,fp3_t *A,fp3_t *B);
void fp3_sub_nonmod_single(fp3_t *ANS,fp3_t *A,fp3_t *B);
void fp3_sub_nonmod_double(fpd3_t *ANS,fpd3_t *A,fpd3_t *B);
void fp3_sub_ui(fp3_t *ANS,fp3_t *A,unsigned long int UI);
void fp3_sub_ui_ui(fp3_t *ANS,fp3_t *A,unsigned long int UI);
void fp3_sub_mpn(fp3_t *ANS,fp3_t *A,mp_limb_t *B);
void fp3_inv(fp3_t *ANS,fp3_t *A);
void fp3_inv_lazy_montgomery(fp3_t *ANS,fp3_t *A);
int fp3_legendre(fp3_t *A);
void fp3_sqrt(fp3_t *ANS,fp3_t *A);
void fp3_pow(fp3_t *ANS,fp3_t *A,mpz_t scalar);
int fp3_cmp(fp3_t *A,fp3_t *B);
int fp3_cmp_ui(fp3_t *A,unsigned long int UI);
int fp3_cmp_mpn(fp3_t *A,mp_limb_t *B);
int fp3_cmp_zero(fp3_t *A);
int fp3_cmp_one(fp3_t *A);
int fp3_montgomery_trick_montgomery(fp3_t *A_inv,fp3_t *A,int n);

void fp3_frobenius_map_p1(fp3_t *ANS,fp3_t *A);
void fp3_frobenius_map_p2(fp3_t *ANS,fp3_t *A);
void fp3_frobenius_map_p3(fp3_t *ANS,fp3_t *A);

void fp3_mul_base(fp3_t *ANS,fp3_t *A);

#endif

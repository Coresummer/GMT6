#pragma once
#ifndef FP6_H
#define FP6_H

#include "fp2.h"

void fp6_init(fp6_t *A);
void fp6_printf(std::string str ,fp6_t *A);
void fp6_println(std::string str ,fp6_t *A);
void fp6_printf_montgomery(std::string str ,fp6_t *A);
void fp6_println_montgomery(std::string str, fp6_t *A);
void fp6_set(fp6_t *ANS,fp6_t *A);
void fp6_set_ui(fp6_t *ANS,unsigned long int UI);
void fp6_set_ui_ui(fp6_t *ANS,unsigned long int UI);
void fp6_set_mpn(fp6_t *ANS,mp_limb_t *A);
void fp6_set_neg(fp6_t *ANS,fp6_t *A);
void fp6_to_montgomery(fp6_t *ANS,fp6_t *A);
void fp6_mod_montgomery(fp6_t *ANS,fp6_t *A);
void fp6_set_random(fp6_t *ANS,gmp_randstate_t state);
void fp6_mul(fp6_t *ANS,fp6_t *A,fp6_t *B);
void fp6_mul_lazy(fp6_t *ANS,fp6_t *A,fp6_t *B);
void fp6_mul_lazy_montgomery(fp6_t *ANS,fp6_t *A,fp6_t *B);

void fp6_mul_sparse_add(fp6_t *ANS,fp6_t *A,fp6_t *B);
void fp6_mul_sparse_add_costello(fp6_t *ANS,fp6_t *A,fp6_t *B);
void fp6_mul_sparse_dbl(fp6_t *ANS,fp6_t *A,fp6_t *B);
void fp6_mul_sparse_add_lazy_montgomery(fp6_t *ANS,fp6_t *A,fp6_t *B);
void fp6_mul_sparse_add_costello_montgomery(fp6_t *ANS,fp6_t *A,fp6_t *B);
void fp6_mul_sparse_add_costello_lazy_montgomery(fp6_t *ANS,fp6_t *A,fp6_t *B);
void fp6_mul_sparse_dbl_lazy_montgomery(fp6_t *ANS,fp6_t *A,fp6_t *B);
void fp6_mul_sparse_dbl_costello_lazy_montgomery(fp6_t *ANS,fp6_t *A,fp6_t *B);


void fp6_mul_ui(fp6_t *ANS,fp6_t *A,unsigned long int UI);
void fp6_mul_mpn(fp6_t *ANS,fp6_t *A,mp_limb_t *B);
void fp6_sqr(fp6_t *ANS,fp6_t *A);
void fp6_sqr_lazy(fp6_t *ANS, fp6_t *A);
void fp6_sqr_GS(fp6_t *ANS,fp6_t *A);
void fp6_sqr_GS_lazy_montgomery(fp6_t *ANS,fp6_t *A);
void fp6_sqr_GS_lazy_montgomery2(fp6_t *ANS,fp6_t *A);

void fp6_sqr_lazy_montgomery(fp6_t *ANS,fp6_t *A);
void fp6_add(fp6_t *ANS,fp6_t *A,fp6_t *B);
void fp6_add_lazy(fp6_t *ANS,fp6_t *A,fp6_t *B);
void fp6_add_ui(fp6_t *ANS,fp6_t *A,unsigned long int UI);
void fp6_add_ui_ui(fp6_t *ANS,fp6_t *A,unsigned long int UI);
void fp6_add_mpn(fp6_t *ANS,fp6_t *A,mp_limb_t *B);
void fp6_sub(fp6_t *ANS,fp6_t *A,fp6_t *B);
void fp6_sub_lazy(fp6_t *ANS,fp6_t *A,fp6_t *B);
void fp6_sub_ui(fp6_t *ANS,fp6_t *A,unsigned long int UI);
void fp6_sub_ui_ui(fp6_t *ANS,fp6_t *A,unsigned long int UI);
void fp6_sub_mpn(fp6_t *ANS,fp6_t *A,mp_limb_t *B);
void fp6_inv(fp6_t *ANS,fp6_t *A);
void fp6_inv_lazy_montgomery(fp6_t *ANS,fp6_t *A);
int fp6_legendre(fp6_t *A);
void fp6_sqrt(fp6_t *ANS,fp6_t *A);
void fp6_pow(fp6_t *ANS,fp6_t *A,mpz_t scalar);
void fp6_pow_montgomery(fp6_t *ANS, fp6_t *A, mpz_t scalar);

void fp6_finalexpow_x_2NAF(fp6_t *ANS,fp6_t *A);
void fp6_finalexpow_x_1_2NAF(fp6_t *ANS,fp6_t *A);
void fp6_finalexpow_3w_2NAF(fp6_t *ANS,fp6_t *A);
void fp6_finalexpow_w_2NAF(fp6_t *ANS,fp6_t *A);

void fp6_finalexpow_x_2NAF_lazy_montgomery(fp6_t *ANS,fp6_t *A);
void fp6_finalexpow_x_2NAF_lazy_montgomery2(fp6_t *ANS,fp6_t *A);
void fp6_finalexpow_x_1_2NAF_lazy_montgomery(fp6_t *ANS,fp6_t *A);
void fp6_finalexpow_3w_2NAF_lazy_montgomery(fp6_t *ANS,fp6_t *A);
void fp6_finalexpow_w_2NAF_lazy_montgomery(fp6_t *ANS,fp6_t *A);
int  fp6_cmp(fp6_t *A,fp6_t *B);
int  fp6_cmp_ui(fp6_t *A,unsigned long int UI);
int  fp6_cmp_mpn(fp6_t *A,mp_limb_t *B);
int  fp6_cmp_zero(fp6_t *A);
int  fp6_cmp_one(fp6_t *A);
int fp6_montgomery_trick_montgomery(fp6_t *A_inv,fp6_t *A,int n);
void fp6_frobenius_map_p1(fp6_t *ANS,fp6_t *A);
void fp6_frobenius_map_p2(fp6_t *ANS,fp6_t *A);
void fp6_frobenius_map_p3(fp6_t *ANS,fp6_t *A);
void fp6_frobenius_map_p1_montgomery(fp6_t *ANS,fp6_t *A);
void fp6_frobenius_map_p3_montgomery(fp6_t *ANS,fp6_t *A);
#endif

#ifndef FP6_H
#define FP6_H

#include "fp3.h"

void fp6_init(fp6_t *A);
void fp6_printf(char *str,fp6_t *A);
void fp6_println(char *str,fp6_t *A);
void fp6_printf_montgomery(char *str,fp6_t *A);
void fp6_set(fp6_t *ANS,fp6_t *A);
void fp6_set_ui(fp6_t *ANS,unsigned long int UI);
void fp6_set_ui_ui(fp6_t *ANS,unsigned long int UI);
void fp6_set_mpn(fp6_t *ANS,mp_limb_t *A);
void fp6_set_neg(fp6_t *ANS,fp6_t *A);
void fp6_to_montgomery(fp6_t *ANS,fp6_t *A);
void fp6_mod_montgomery(fp6_t *ANS,fp6_t *A);
void fp6_set_random(fp6_t *ANS,gmp_randstate_t state);
void fp6_mul(fp6_t *ANS,fp6_t *A,fp6_t *B);
void fp6_mul_lazy_montgomery(fp6_t *ANS,fp6_t *A,fp6_t *B);

void fp6_mul_sparse_add(fp6_t *ANS,fp6_t *A,fp6_t *B);
void fp6_mul_sparse_dbl(fp6_t *ANS,fp6_t *A,fp6_t *B);

void fp6_mul_ui(fp6_t *ANS,fp6_t *A,unsigned long int UI);
void fp6_mul_mpn(fp6_t *ANS,fp6_t *A,mp_limb_t *B);
void fp6_sqr(fp6_t *ANS,fp6_t *A);
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
int  fp6_cmp(fp6_t *A,fp6_t *B);
int  fp6_cmp_ui(fp6_t *A,unsigned long int UI);
int  fp6_cmp_mpn(fp6_t *A,mp_limb_t *B);
int  fp6_cmp_zero(fp6_t *A);
int  fp6_cmp_one(fp6_t *A);
int fp6_montgomery_trick_montgomery(fp6_t *A_inv,fp6_t *A,int n);
void fp6_frobenius_map_p1(fp6_t *ANS,fp6_t *A);
void fp6_frobenius_map_p2(fp6_t *ANS,fp6_t *A);
void fp6_frobenius_map_p3(fp6_t *ANS,fp6_t *A);
void fp6_frobenius_map_p4(fp6_t *ANS,fp6_t *A);
void fp6_frobenius_map_p5(fp6_t *ANS,fp6_t *A);

#endif

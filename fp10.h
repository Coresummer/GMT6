#ifndef FP10_H
#define FP10_H

#include "fp5.h"

void fp10_init(fp10_t *A);
void fp10_printf(char *str,fp10_t *A);
void fp10_println(char *str,fp10_t *A);
void fp10_printf_montgomery(char *str,fp10_t *A);
void fp10_set(fp10_t *ANS,fp10_t *A);
void fp10_set_ui(fp10_t *ANS,unsigned long int UI);
void fp10_set_ui_ui(fp10_t *ANS,unsigned long int UI);
void fp10_set_mpn(fp10_t *ANS,mp_limb_t *A);
void fp10_set_neg(fp10_t *ANS,fp10_t *A);
void fp10_to_montgomery(fp10_t *ANS,fp10_t *A);
void fp10_mod_montgomery(fp10_t *ANS,fp10_t *A);
void fp10_set_random(fp10_t *ANS,gmp_randstate_t state);
void fp10_mul(fp10_t *ANS,fp10_t *A,fp10_t *B);
void fp10_mul_lazy_montgomery(fp10_t *ANS,fp10_t *A,fp10_t *B);
void fp10_mul_ui(fp10_t *ANS,fp10_t *A,unsigned long int UI);
void fp10_mul_mpn(fp10_t *ANS,fp10_t *A,mp_limb_t *B);
void fp10_sqr(fp10_t *ANS,fp10_t *A);
void fp10_sqr_lazy_montgomery(fp10_t *ANS,fp10_t *A);
void fp10_add(fp10_t *ANS,fp10_t *A,fp10_t *B);
void fp10_add_lazy(fp10_t *ANS,fp10_t *A,fp10_t *B);
void fp10_add_ui(fp10_t *ANS,fp10_t *A,unsigned long int UI);
void fp10_add_ui_ui(fp10_t *ANS,fp10_t *A,unsigned long int UI);
void fp10_add_mpn(fp10_t *ANS,fp10_t *A,mp_limb_t *B);
void fp10_sub(fp10_t *ANS,fp10_t *A,fp10_t *B);
void fp10_sub_lazy(fp10_t *ANS,fp10_t *A,fp10_t *B);
void fp10_sub_ui(fp10_t *ANS,fp10_t *A,unsigned long int UI);
void fp10_sub_ui_ui(fp10_t *ANS,fp10_t *A,unsigned long int UI);
void fp10_sub_mpn(fp10_t *ANS,fp10_t *A,mp_limb_t *B);
void fp10_inv(fp10_t *ANS,fp10_t *A);
void fp10_inv_lazy_montgomery(fp10_t *ANS,fp10_t *A);
int fp10_legendre(fp10_t *A);
void fp10_sqrt(fp10_t *ANS,fp10_t *A);
void fp10_pow(fp10_t *ANS,fp10_t *A,mpz_t scalar);
int  fp10_cmp(fp10_t *A,fp10_t *B);
int  fp10_cmp_ui(fp10_t *A,unsigned long int UI);
int  fp10_cmp_mpn(fp10_t *A,mp_limb_t *B);
int  fp10_cmp_zero(fp10_t *A);
int  fp10_cmp_one(fp10_t *A);
int fp10_montgomery_trick_montgomery(fp10_t *A_inv,fp10_t *A,int n);
void fp10_frobenius_map_p1(fp10_t *ANS,fp10_t *A);
void fp10_frobenius_map_p2(fp10_t *ANS,fp10_t *A);
void fp10_frobenius_map_p3(fp10_t *ANS,fp10_t *A);
void fp10_frobenius_map_p5(fp10_t *ANS,fp10_t *A);

#endif

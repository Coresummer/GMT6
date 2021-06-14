#ifndef FP5_H
#define FP5_H

#include "fp.h"

void fp5_init(fp5_t *A);
void fp5_printf(std::string str,fp5_t *A);
void fp5_println(std::string str,fp5_t *A);
void fpd5_println(std::string str,fpd5_t *A);
void fp5_printf_montgomery(std::string str,fp5_t *A);
void fp5_set(fp5_t *ANS,fp5_t *A);
void fp5_set_ui(fp5_t *ANS,unsigned long int UI);
void fp5_set_ui_ui(fp5_t *ANS,unsigned long int UI);
void fp5_set_mpn(fp5_t *ANS,mp_limb_t *A);
void fp5_set_neg(fp5_t *ANS,fp5_t *A);
void fp5_to_montgomery(fp5_t *ANS,fp5_t *A);
void fp5_mod_montgomery(fp5_t *ANS,fp5_t *A);
void fp5_mod_montgomery_double(fp5_t *ANS,fpd5_t *A);
void fp5_lshift_1(fp5_t *ANS,fp5_t *A);
void fp5_hlv(fp5_t *ANS,fp5_t *A);
void fp5_set_random(fp5_t *ANS,gmp_randstate_t state);
void fp5_mul(fp5_t *ANS,fp5_t *A,fp5_t *B);
void fp5_mul_lazy_montgomery(fp5_t *ANS,fp5_t *A,fp5_t *B);
void fp5_mul_nonmod_montgomery(fp5_t *ANS,fp5_t *A,fp5_t *B);
void fp5_mul_ui(fp5_t *ANS,fp5_t *A,unsigned long int UI);
void fp5_mul_mpn(fp5_t *ANS,fp5_t *A,mp_limb_t *B);
void fp5_mul_mpn_montgomery(fp5_t *ANS,fp5_t *A,mp_limb_t *B);
void fp5_sqr(fp5_t *ANS,fp5_t *A);
void fp5_sqr_lazy_montgomery(fp5_t *ANS,fp5_t *A);
void fp5_add(fp5_t *ANS,fp5_t *A,fp5_t *B);
void fp5_add_nonmod_single(fp5_t *ANS,fp5_t *A,fp5_t *B);
void fp5_add_nonmod_double(fpd5_t *ANS,fpd5_t *A,fpd5_t *B);
void fp5_add_ui(fp5_t *ANS,fp5_t *A,unsigned long int UI);
void fp5_add_ui_ui(fp5_t *ANS,fp5_t *A,unsigned long int UI);
void fp5_add_mpn(fp5_t *ANS,fp5_t *A,mp_limb_t *B);
void fp5_sub(fp5_t *ANS,fp5_t *A,fp5_t *B);
void fp5_sub_nonmod_single(fp5_t *ANS,fp5_t *A,fp5_t *B);
void fp5_sub_nonmod_double(fpd5_t *ANS,fpd5_t *A,fpd5_t *B);
void fp5_sub_ui(fp5_t *ANS,fp5_t *A,unsigned long int UI);
void fp5_sub_ui_ui(fp5_t *ANS,fp5_t *A,unsigned long int UI);
void fp5_sub_mpn(fp5_t *ANS,fp5_t *A,mp_limb_t *B);
void fp5_inv(fp5_t *ANS,fp5_t *A);
void fp5_inv_lazy_montgomery(fp5_t *ANS,fp5_t *A);
int fp5_legendre(fp5_t *A);
void fp5_sqrt(fp5_t *ANS,fp5_t *A);
void fp5_pow(fp5_t *ANS,fp5_t *A,mpz_t scalar);
int fp5_cmp(fp5_t *A,fp5_t *B);
int fp5_cmp_ui(fp5_t *A,unsigned long int UI);
int fp5_cmp_mpn(fp5_t *A,mp_limb_t *B);
int fp5_cmp_zero(fp5_t *A);
int fp5_cmp_one(fp5_t *A);
int fp5_montgomery_trick_montgomery(fp5_t *A_inv,fp5_t *A,int n);

void fp5_frobenius_map_p1(fp5_t *ANS,fp5_t *A);
void fp5_frobenius_map_p2(fp5_t *ANS,fp5_t *A);
void fp5_mul_base(fp5_t *ANS,fp5_t *A);

#endif

#ifndef FP7_H
#define FP7_H

#include "fp.h"

void fp7_init(fp7_t *A);
void fp7_printf(std::string str ,fp7_t *A);
void fp7_println(std::string str ,fp7_t *A);
void fpd7_println(std::string str ,fpd7_t *A);
void fp7_printf_montgomery(std::string str ,fp7_t *A);
void fp7_set(fp7_t *ANS,fp7_t *A);
void fp7_set_ui(fp7_t *ANS,unsigned long int UI);
void fp7_set_ui_ui(fp7_t *ANS,unsigned long int UI);
void fp7_set_mpn(fp7_t *ANS,mp_limb_t *A);
void fp7_set_neg(fp7_t *ANS,fp7_t *A);
void fp7_to_montgomery(fp7_t *ANS,fp7_t *A);
void fp7_mod_montgomery(fp7_t *ANS,fp7_t *A);
void fp7_mod_montgomery_double(fp7_t *ANS,fpd7_t *A);
void fp7_lshift_1(fp7_t *ANS,fp7_t *A);
void fp7_hlv(fp7_t *ANS,fp7_t *A);
void fp7_set_random(fp7_t *ANS,gmp_randstate_t state);
void fp7_mul(fp7_t *ANS,fp7_t *A,fp7_t *B);
void fp7_mul_lazy_montgomery(fp7_t *ANS,fp7_t *A,fp7_t *B);
void fp7_mul_nonmod_montgomery(fp7_t *ANS,fp7_t *A,fp7_t *B);
void fp7_mul_ui(fp7_t *ANS,fp7_t *A,unsigned long int UI);
void fp7_mul_mpn(fp7_t *ANS,fp7_t *A,mp_limb_t *B);
void fp7_mul_mpn_montgomery(fp7_t *ANS,fp7_t *A,mp_limb_t *B);
void fp7_sqr(fp7_t *ANS,fp7_t *A);
void fp7_sqr_lazy_montgomery(fp7_t *ANS,fp7_t *A);
void fp7_add(fp7_t *ANS,fp7_t *A,fp7_t *B);
void fp7_add_nonmod_single(fp7_t *ANS,fp7_t *A,fp7_t *B);
void fp7_add_nonmod_double(fpd7_t *ANS,fpd7_t *A,fpd7_t *B);
void fp7_add_ui(fp7_t *ANS,fp7_t *A,unsigned long int UI);
void fp7_add_ui_ui(fp7_t *ANS,fp7_t *A,unsigned long int UI);
void fp7_add_mpn(fp7_t *ANS,fp7_t *A,mp_limb_t *B);
void fp7_sub(fp7_t *ANS,fp7_t *A,fp7_t *B);
void fp7_sub_nonmod_single(fp7_t *ANS,fp7_t *A,fp7_t *B);
void fp7_sub_nonmod_double(fpd7_t *ANS,fpd7_t *A,fpd7_t *B);
void fp7_sub_ui(fp7_t *ANS,fp7_t *A,unsigned long int UI);
void fp7_sub_ui_ui(fp7_t *ANS,fp7_t *A,unsigned long int UI);
void fp7_sub_mpn(fp7_t *ANS,fp7_t *A,mp_limb_t *B);
void fp7_inv(fp7_t *ANS,fp7_t *A);
void fp7_inv_lazy_montgomery(fp7_t *ANS,fp7_t *A);
int fp7_legendre(fp7_t *A);
void fp7_sqrt(fp7_t *ANS,fp7_t *A);
void fp7_pow(fp7_t *ANS,fp7_t *A,mpz_t scalar);
int fp7_cmp(fp7_t *A,fp7_t *B);
int fp7_cmp_ui(fp7_t *A,unsigned long int UI);
int fp7_cmp_mpn(fp7_t *A,mp_limb_t *B);
int fp7_cmp_zero(fp7_t *A);
int fp7_cmp_one(fp7_t *A);
int fp7_montgomery_trick_montgomery(fp7_t *A_inv,fp7_t *A,int n);

void fp7_frobenius_map_p1(fp7_t *ANS,fp7_t *A);
void fp7_frobenius_map_p2(fp7_t *ANS,fp7_t *A);
void fp7_frobenius_map_p3(fp7_t *ANS,fp7_t *A);

void fp7_mul_base(fp7_t *ANS,fp7_t *A);

#endif

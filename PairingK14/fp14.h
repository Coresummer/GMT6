#ifndef FP14_H
#define FP14_H

#include "fp7.h"

void fp14_init(fp14_t *A);
void fp14_printf(std::string str ,fp14_t *A);
void fp14_println(std::string str ,fp14_t *A);
void fp14_printf_montgomery(std::string str ,fp14_t *A);
void fp14_set(fp14_t *ANS,fp14_t *A);
void fp14_set_ui(fp14_t *ANS,unsigned long int UI);
void fp14_set_ui_ui(fp14_t *ANS,unsigned long int UI);
void fp14_set_mpn(fp14_t *ANS,mp_limb_t *A);
void fp14_set_neg(fp14_t *ANS,fp14_t *A);
void fp14_to_montgomery(fp14_t *ANS,fp14_t *A);
void fp14_mod_montgomery(fp14_t *ANS,fp14_t *A);
void fp14_set_random(fp14_t *ANS,gmp_randstate_t state);
void fp14_mul(fp14_t *ANS,fp14_t *A,fp14_t *B);
void fp14_mul_lazy_montgomery(fp14_t *ANS,fp14_t *A,fp14_t *B);
void fp14_mul_ui(fp14_t *ANS,fp14_t *A,unsigned long int UI);
void fp14_mul_mpn(fp14_t *ANS,fp14_t *A,mp_limb_t *B);
void fp14_sqr(fp14_t *ANS,fp14_t *A);
void fp14_sqr_lazy_montgomery(fp14_t *ANS,fp14_t *A);
void fp14_add(fp14_t *ANS,fp14_t *A,fp14_t *B);
void fp14_add_lazy(fp14_t *ANS,fp14_t *A,fp14_t *B);
void fp14_add_ui(fp14_t *ANS,fp14_t *A,unsigned long int UI);
void fp14_add_ui_ui(fp14_t *ANS,fp14_t *A,unsigned long int UI);
void fp14_add_mpn(fp14_t *ANS,fp14_t *A,mp_limb_t *B);
void fp14_sub(fp14_t *ANS,fp14_t *A,fp14_t *B);
void fp14_sub_lazy(fp14_t *ANS,fp14_t *A,fp14_t *B);
void fp14_sub_ui(fp14_t *ANS,fp14_t *A,unsigned long int UI);
void fp14_sub_ui_ui(fp14_t *ANS,fp14_t *A,unsigned long int UI);
void fp14_sub_mpn(fp14_t *ANS,fp14_t *A,mp_limb_t *B);
void fp14_inv(fp14_t *ANS,fp14_t *A);
void fp14_inv_lazy_montgomery(fp14_t *ANS,fp14_t *A);
int fp14_legendre(fp14_t *A);
void fp14_sqrt(fp14_t *ANS,fp14_t *A);
void fp14_pow(fp14_t *ANS,fp14_t *A,mpz_t scalar);
int  fp14_cmp(fp14_t *A,fp14_t *B);
int  fp14_cmp_ui(fp14_t *A,unsigned long int UI);
int  fp14_cmp_mpn(fp14_t *A,mp_limb_t *B);
int  fp14_cmp_zero(fp14_t *A);
int  fp14_cmp_one(fp14_t *A);
int fp14_montgomery_trick_montgomery(fp14_t *A_inv,fp14_t *A,int n);
void fp14_frobenius_map_p1(fp14_t *ANS,fp14_t *A);
void fp14_frobenius_map_p2(fp14_t *ANS,fp14_t *A);
void fp14_frobenius_map_p3(fp14_t *ANS,fp14_t *A);
void fp14_frobenius_map_p4(fp14_t *ANS,fp14_t *A);
void fp14_frobenius_map_p5(fp14_t *ANS,fp14_t *A);

#endif

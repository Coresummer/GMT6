#pragma once
#ifndef MPN_H
#define MPN_H

#include "scalar.h"

void mpn_init(mp_limb_t *a,mp_size_t size);
void mpn_set_char(mp_limb_t *ans,mp_size_t mp_size, const char* str );
void mpn_set_ui(mp_limb_t *ans,mp_size_t size,unsigned long int ui);
void mpn_set_mpz(mp_limb_t *ans,mpz_t a);
void mpn_mod(mp_limb_t *ans,mp_limb_t *a,mp_size_t size_a);
int mpn_cmp_char(mp_limb_t *a,std::string str );
int mpn_cmp_ui(mp_limb_t *a,mp_size_t size,unsigned long int ui);
int mpn_chk_limb(mp_limb_t *a,mp_size_t sizeA,mp_size_t sizeB);
void mpn_lshift_ext(mp_limb_t *ans,mp_limb_t *a,mp_size_t size,long int L);
void mpn_rshift_ext(mp_limb_t *ans,mp_limb_t *a,mp_size_t size,long int L);
void mpn_dbl(mp_limb_t *ans,mp_limb_t *a,mp_size_t size);
void mpn_add_char(mp_limb_t *ans,mp_limb_t *a,mp_size_t size,std::string str );
void mpn_sub_char(mp_limb_t *ans,mp_limb_t *a,mp_size_t size,std::string str );
void mpn_mul_char(mp_limb_t *ans,mp_limb_t *a,mp_size_t size,std::string str );
void mpn_add_ui(mp_limb_t *ans,mp_limb_t *a,mp_size_t size,unsigned long int ui);
void mpn_sub_ui(mp_limb_t *ans,mp_limb_t *a,mp_size_t size,unsigned long int ui);
void mpn_mul_ui(mp_limb_t *ans,mp_limb_t *a,mp_size_t size,unsigned long int ui);
void mpn_pow(mp_limb_t *ans,mp_size_t ans_size,mp_limb_t *a,mp_size_t a_size,mp_limb_t *r,mp_size_t n);
void mpn_pow_ui(mp_limb_t *ans,mp_size_t ans_size,mp_limb_t *a,mp_size_t a_size,std::string str );
void mpn_tdiv_q_char(mp_limb_t *ans,mp_limb_t *a,mp_size_t size_a,std::string str );
void mpn_tdiv_q_ui(mp_limb_t *ans,mp_limb_t *a,mp_size_t size_a,unsigned long int UI);
void mpn_invert(mp_limb_t *ANS,mp_limb_t *A,mp_limb_t *p);
//void mpn_mulmod_montgomery(mp_limb_t *ANS, mp_size_t ANS_size, mp_limb_t *A, mp_size_t A_size, mp_limb_t *B, mp_size_t B_size);
void mpn_sqrmod_montgomery(mp_limb_t *ANS, mp_size_t ANS_size, mp_limb_t *A, mp_size_t A_size);
void mpn_mod_montgomery(mp_limb_t *ANS, mp_size_t ANS_size, mp_limb_t *A, mp_size_t A_size);
void mpn_to_montgomery(mp_limb_t *ANS, mp_limb_t *A);

#endif

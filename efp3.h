#pragma once
#ifndef Efp3_H
#define Efp3_H

#include "efp.h"

void efp3_init(efp3_t *P);
void efp3_projective_init(efp3_projective_t *P);
void efp3_jacobian_init(efp3_jacobian_t *P);
void efp3_printf(char *str,efp3_t *P);
void efp3_println(char *str,efp3_t *P);
void efp3_projective_printf(char *str,efp3_projective_t *P);
void efp3_jacobian_printf(char *str,efp3_jacobian_t *P);
void efp3_printf_montgomery(char *str,efp3_t *P);
void efp3_jacobian_printf_montgomery(char *str,efp3_jacobian_t *P);
void efp3_projective_printf_montgomery(char *str,efp3_projective_t *P);
void efp3_projective_printf_affine(char *str,efp3_projective_t *P);
void efp3_projective_printf_affine_montgomery(char *str,efp3_projective_t *P);
void efp3_set(efp3_t *ANS,efp3_t *A);
void efp3_projective_set(efp3_projective_t *ANS,efp3_projective_t *A);
void efp3_jacobian_set(efp3_jacobian_t *ANS,efp3_jacobian_t *A);
void efp3_affine_to_projective(efp3_projective_t *ANS,efp3_t *A);
void efp3_affine_to_jacobian(efp3_jacobian_t *ANS,efp3_t *A);
void efp3_affine_to_projective_montgomery(efp3_projective_t *ANS,efp3_t *A);
void efp3_affine_to_jacobian_montgomery(efp3_jacobian_t *ANS,efp3_t *A);
void efp3_jacobian_to_affine(efp3_t *ANS,efp3_jacobian_t *A);
void efp3_projective_to_affine(efp3_t *ANS,efp3_projective_t *A);
void efp3_jacobian_to_affine_montgomery(efp3_t *ANS,efp3_jacobian_t *A);
void efp3_projective_to_affine_montgomery(efp3_t *ANS,efp3_projective_t *A);
void efp3_mix(efp3_jacobian_t *ANS,efp3_jacobian_t *A,fp3_t *Zi);
void efp3_mix_montgomery(efp3_jacobian_t *ANS,efp3_jacobian_t *A,fp3_t *Zi);
void efp3_set_ui(efp3_t *ANS,unsigned long int UI);
void efp3_to_montgomery(efp3_t *ANS,efp3_t *A);
void efp3_projective_to_montgomery(efp3_projective_t *ANS,efp3_projective_t *A);
void efp3_mod_montgomery(efp3_t *ANS,efp3_t *A);
void efp3_projective_mod_montgomery(efp3_projective_t *ANS,efp3_projective_t *A);
void efp3_set_mpn(efp3_t *ANS,mp_limb_t *A);
void efp3_set_neg(efp3_t *ANS,efp3_t *A);
void efp3_jacobian_set_neg(efp3_jacobian_t *ANS,efp3_jacobian_t *A);
int efp3_cmp(efp3_t *A,efp3_t *B);
void efp3_rational_point(efp3_t *P);
void efp3_ecd(efp3_t *ANS,efp3_t *P);
void efp3_ecd_jacobian_lazy_montgomery(efp3_jacobian_t *ANS,efp3_jacobian_t *P);
void efp3_eca(efp3_t *ANS,efp3_t *P1,efp3_t *P2);
void efp3_eca_jacobian_lazy_montgomery(efp3_jacobian_t *ANS,efp3_jacobian_t *P1,efp3_jacobian_t *P2);
void efp3_eca_mixture_lazy_montgomery(efp3_jacobian_t *ANS,efp3_jacobian_t *P1,efp3_jacobian_t *P2);
void efp3_scm(efp3_t *ANS,efp3_t *P,mpz_t scalar);


#endif

#pragma once
#ifndef EFP_H
#define EFP_H

#include "fp6.h"

void efp_init(efp_t *P);
void efp_projective_init(efp_projective_t *P);
void efp_jacobian_init(efp_jacobian_t *P);
void efp_printf(char *str,efp_t *P);
void efp_println(char *str,efp_t *P);
void efp_projective_printf(char *str,efp_projective_t *P);
void efp_jacobian_printf(char *str,efp_jacobian_t *P);
void efp_set(efp_t *ANS,efp_t *A);
void efp_projective_set(efp_projective_t *ANS,efp_projective_t *A);
void efp_jacobian_set(efp_jacobian_t *ANS,efp_jacobian_t *A);
void efp_affine_to_projective(efp_projective_t *ANS,efp_t *A);
void efp_affine_to_jacobian(efp_jacobian_t *ANS,efp_t *A);
void efp_affine_to_jacobian_montgomery(efp_jacobian_t *ANS,efp_t *A);
void efp_projective_to_affine(efp_t *ANS,efp_projective_t *A);
void efp_jacobian_to_affine(efp_t *ANS,efp_jacobian_t *A);
void efp_jacobian_montgomery(efp_t *ANS,efp_jacobian_t *A);
void efp_mix(efp_jacobian_t *ANS,efp_jacobian_t *A,fp_t *Zi);
void efp_mix_montgomery(efp_jacobian_t *ANS,efp_jacobian_t *A,fp_t *Zi);
void efp_to_montgomery(efp_t *ANS,efp_t *A);
void efp_mod_montgomery(efp_t *ANS,efp_t *A);
void efp_set_ui(efp_t *ANS,unsigned long int UI);
void efp_set_mpn(efp_t *ANS,mp_limb_t *A);
void efp_set_neg(efp_t *ANS,efp_t *A);
void efp_projective_set_neg(efp_projective_t *ANS,efp_projective_t *A);
void efp_jacobian_set_neg(efp_jacobian_t *ANS,efp_jacobian_t *A);
int efp_cmp(efp_t *A,efp_t *B);
void efp_rational_point(efp_t *P);
void efp_ecd(efp_t *ANS,efp_t *P);
void efp_ecd_jacobian_lazy_montgomery(efp_jacobian_t *ANS,efp_jacobian_t *P);
void efp_eca(efp_t *ANS,efp_t *P1,efp_t *P2);
void efp_eca_jacobian_lazy_montgomery(efp_jacobian_t *ANS,efp_jacobian_t *P1,efp_jacobian_t *P2);
void efp_eca_mixture_lazy_montgomery(efp_jacobian_t *ANS,efp_jacobian_t *P1,efp_jacobian_t *P2);
void efp_scm(efp_t *ANS,efp_t *P,mpz_t scalar);
void efp_jacobi_checkOnCurve_Twist(efp_jacobian_t* A);
void efp_checkOnCurve_Twsit(efp_t* A);
#endif

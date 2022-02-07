#pragma once
#ifndef EFP2_H
#define EFP2_H

#include "efp.h"

void efp2_init(efp2_t *P);
void efp2_projective_init(efp2_projective_t *P);
void efp2_jacobian_init(efp2_jacobian_t *P);
void efp2_printf(std::string str ,efp2_t *P);
void efp2_println(std::string str ,efp2_t *P);
void efp2_projective_printf(std::string str ,efp2_projective_t *P);
void efp2_jacobian_printf(std::string str ,efp2_jacobian_t *P);
void efp2_printf_montgomery(std::string str ,efp2_t *P);
void efp2_jacobian_printf_montgomery(std::string str ,efp2_jacobian_t *P);
void efp2_projective_printf_montgomery(std::string str ,efp2_projective_t *P);
void efp2_projective_printf_affine(std::string str ,efp2_projective_t *P);
void efp2_projective_printf_affine_montgomery(std::string str ,efp2_projective_t *P);
void efp2_set(efp2_t *ANS,efp2_t *A);
void efp2_projective_set(efp2_projective_t *ANS,efp2_projective_t *A);
void efp2_jacobian_set(efp2_jacobian_t *ANS,efp2_jacobian_t *A);
void efp2_affine_to_projective(efp2_projective_t *ANS,efp2_t *A);
void efp2_affine_to_jacobian(efp2_jacobian_t *ANS,efp2_t *A);
void efp2_affine_to_projective_montgomery(efp2_projective_t *ANS,efp2_t *A);
void efp2_affine_to_jacobian_montgomery(efp2_jacobian_t *ANS,efp2_t *A);
void efp2_jacobian_to_affine(efp2_t *ANS,efp2_jacobian_t *A);
void efp2_projective_to_affine(efp2_t *ANS,efp2_projective_t *A);
void efp2_jacobian_to_affine_montgomery(efp2_t *ANS,efp2_jacobian_t *A);
void efp2_projective_to_affine_montgomery(efp2_t *ANS,efp2_projective_t *A);
void efp2_mix(efp2_jacobian_t *ANS,efp2_jacobian_t *A,fp2_t *Zi);
void efp2_mix_montgomery(efp2_jacobian_t *ANS,efp2_jacobian_t *A,fp2_t *Zi);
void efp2_set_ui(efp2_t *ANS,unsigned long int UI);
void efp2_to_montgomery(efp2_t *ANS,efp2_t *A);
void efp2_projective_to_montgomery(efp2_projective_t *ANS,efp2_projective_t *A);
void efp2_mod_montgomery(efp2_t *ANS,efp2_t *A);
void efp2_projective_mod_montgomery(efp2_projective_t *ANS,efp2_projective_t *A);
void efp2_set_mpn(efp2_t *ANS,mp_limb_t *A);
void efp2_set_neg(efp2_t *ANS,efp2_t *A);
void efp2_jacobian_set_neg(efp2_jacobian_t *ANS,efp2_jacobian_t *A);
int efp2_cmp(efp2_t *A,efp2_t *B);
void efp2_rational_point(efp2_t *P);
void efp2_ecd(efp2_t *ANS,efp2_t *P);
void efp2_ecd_jacobian_lazy_montgomery(efp2_jacobian_t *ANS,efp2_jacobian_t *P);
void efp2_eca(efp2_t *ANS,efp2_t *P1,efp2_t *P2);
void efp2_eca_jacobian_lazy_montgomery(efp2_jacobian_t *ANS,efp2_jacobian_t *P1,efp2_jacobian_t *P2);
void efp2_eca_mixture_lazy_montgomery(efp2_jacobian_t *ANS,efp2_jacobian_t *P1,efp2_jacobian_t *P2);
void efp2_scm(efp2_t *ANS,efp2_t *P,mpz_t scalar);


#endif

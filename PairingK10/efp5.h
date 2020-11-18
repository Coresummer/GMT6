#ifndef EFP5_H
#define EFP5_H

#include "efp.h"

void efp5_init(efp5_t *P);
void efp5_projective_init(efp5_projective_t *P);
void efp5_jacobian_init(efp5_jacobian_t *P);
void efp5_printf(char *str,efp5_t *P);
void efp5_println(char *str,efp5_t *P);
void efp5_projective_printf(char *str,efp5_projective_t *P);
void efp5_jacobian_printf(char *str,efp5_jacobian_t *P);
void efp5_printf_montgomery(char *str,efp5_t *P);
void efp5_jacobian_printf_montgomery(char *str,efp5_jacobian_t *P);
void efp5_projective_printf_montgomery(char *str,efp5_projective_t *P);
void efp5_projective_printf_affine(char *str,efp5_projective_t *P);
void efp5_projective_printf_affine_montgomery(char *str,efp5_projective_t *P);
void efp5_set(efp5_t *ANS,efp5_t *A);
void efp5_projective_set(efp5_projective_t *ANS,efp5_projective_t *A);
void efp5_jacobian_set(efp5_jacobian_t *ANS,efp5_jacobian_t *A);
void efp5_affine_to_projective(efp5_projective_t *ANS,efp5_t *A);
void efp5_affine_to_jacobian(efp5_jacobian_t *ANS,efp5_t *A);
void efp5_affine_to_projective_montgomery(efp5_projective_t *ANS,efp5_t *A);
void efp5_affine_to_jacobian_montgomery(efp5_jacobian_t *ANS,efp5_t *A);
void efp5_jacobian_to_affine(efp5_t *ANS,efp5_jacobian_t *A);
void efp5_projective_to_affine(efp5_t *ANS,efp5_projective_t *A);
void efp5_jacobian_to_affine_montgomery(efp5_t *ANS,efp5_jacobian_t *A);
void efp5_projective_to_affine_montgomery(efp5_t *ANS,efp5_projective_t *A);
void efp5_mix(efp5_jacobian_t *ANS,efp5_jacobian_t *A,fp5_t *Zi);
void efp5_mix_montgomery(efp5_jacobian_t *ANS,efp5_jacobian_t *A,fp5_t *Zi);
void efp5_set_ui(efp5_t *ANS,unsigned long int UI);
void efp5_to_montgomery(efp5_t *ANS,efp5_t *A);
void efp5_projective_to_montgomery(efp5_projective_t *ANS,efp5_projective_t *A);
void efp5_mod_montgomery(efp5_t *ANS,efp5_t *A);
void efp5_projective_mod_montgomery(efp5_projective_t *ANS,efp5_projective_t *A);
void efp5_set_mpn(efp5_t *ANS,mp_limb_t *A);
void efp5_set_neg(efp5_t *ANS,efp5_t *A);
void efp5_jacobian_set_neg(efp5_jacobian_t *ANS,efp5_jacobian_t *A);
int efp5_cmp(efp5_t *A,efp5_t *B);
void efp5_rational_point(efp5_t *P);
void efp5_ecd(efp5_t *ANS,efp5_t *P);
void efp5_ecd_jacobian_lazy_montgomery(efp5_jacobian_t *ANS,efp5_jacobian_t *P);
void efp5_eca(efp5_t *ANS,efp5_t *P1,efp5_t *P2);
void efp5_eca_jacobian_lazy_montgomery(efp5_jacobian_t *ANS,efp5_jacobian_t *P1,efp5_jacobian_t *P2);
void efp5_eca_mixture_lazy_montgomery(efp5_jacobian_t *ANS,efp5_jacobian_t *P1,efp5_jacobian_t *P2);
void efp5_scm(efp5_t *ANS,efp5_t *P,mpz_t scalar);


#endif

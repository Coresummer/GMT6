#ifndef EFP7_H
#define EFP7_H

#include "efp.h"

void efp7_init(efp7_t *P);
void efp7_projective_init(efp7_projective_t *P);
void efp7_jacobian_init(efp7_jacobian_t *P);
void efp7_printf(std::string str ,efp7_t *P);
void efp7_println(std::string str ,efp7_t *P);
void efp7_projective_printf(std::string str ,efp7_projective_t *P);
void efp7_jacobian_printf(std::string str ,efp7_jacobian_t *P);
void efp7_printf_montgomery(std::string str ,efp7_t *P);
void efp7_jacobian_printf_montgomery(std::string str ,efp7_jacobian_t *P);
void efp7_projective_printf_montgomery(std::string str ,efp7_projective_t *P);
void efp7_projective_printf_affine(std::string str ,efp7_projective_t *P);
void efp7_projective_printf_affine_montgomery(std::string str ,efp7_projective_t *P);
void efp7_set(efp7_t *ANS,efp7_t *A);
void efp7_projective_set(efp7_projective_t *ANS,efp7_projective_t *A);
void efp7_jacobian_set(efp7_jacobian_t *ANS,efp7_jacobian_t *A);
void efp7_affine_to_projective(efp7_projective_t *ANS,efp7_t *A);
void efp7_affine_to_jacobian(efp7_jacobian_t *ANS,efp7_t *A);
void efp7_affine_to_projective_montgomery(efp7_projective_t *ANS,efp7_t *A);
void efp7_affine_to_jacobian_montgomery(efp7_jacobian_t *ANS,efp7_t *A);
void efp7_jacobian_to_affine(efp7_t *ANS,efp7_jacobian_t *A);
void efp7_projective_to_affine(efp7_t *ANS,efp7_projective_t *A);
void efp7_jacobian_to_affine_montgomery(efp7_t *ANS,efp7_jacobian_t *A);
void efp7_projective_to_affine_montgomery(efp7_t *ANS,efp7_projective_t *A);
void efp7_mix(efp7_jacobian_t *ANS,efp7_jacobian_t *A,fp7_t *Zi);
void efp7_mix_montgomery(efp7_jacobian_t *ANS,efp7_jacobian_t *A,fp7_t *Zi);
void efp7_set_ui(efp7_t *ANS,unsigned long int UI);
void efp7_to_montgomery(efp7_t *ANS,efp7_t *A);
void efp7_projective_to_montgomery(efp7_projective_t *ANS,efp7_projective_t *A);
void efp7_mod_montgomery(efp7_t *ANS,efp7_t *A);
void efp7_projective_mod_montgomery(efp7_projective_t *ANS,efp7_projective_t *A);
void efp7_set_mpn(efp7_t *ANS,mp_limb_t *A);
void efp7_set_neg(efp7_t *ANS,efp7_t *A);
void efp7_jacobian_set_neg(efp7_jacobian_t *ANS,efp7_jacobian_t *A);
int efp7_cmp(efp7_t *A,efp7_t *B);
void efp7_rational_point(efp7_t *P);
void efp7_ecd(efp7_t *ANS,efp7_t *P);
void efp7_ecd_jacobian_lazy_montgomery(efp7_jacobian_t *ANS,efp7_jacobian_t *P);
void efp7_eca(efp7_t *ANS,efp7_t *P1,efp7_t *P2);
void efp7_eca_jacobian_lazy_montgomery(efp7_jacobian_t *ANS,efp7_jacobian_t *P1,efp7_jacobian_t *P2);
void efp7_eca_mixture_lazy_montgomery(efp7_jacobian_t *ANS,efp7_jacobian_t *P1,efp7_jacobian_t *P2);
void efp7_scm(efp7_t *ANS,efp7_t *P,mpz_t scalar);


#endif

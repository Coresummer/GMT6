#ifndef EFP10_H
#define EFP10_H

#include "efp5.h"

void efp10_init(efp10_t *P);
void efp10_printf(std::string str,efp10_t *P);
void efp10_println(std::string str,efp10_t *P);
void efp10_set(efp10_t *ANS,efp10_t *A);
void efp10_set_ui(efp10_t *ANS,unsigned long int UI1,unsigned long int UI2);
void efp10_set_mpn(efp10_t *ANS,mp_limb_t *A);
void efp10_set_neg(efp10_t *ANS,efp10_t *A);
int efp10_cmp(efp10_t *A,efp10_t *B);
void efp10_rational_point(efp10_t *P);
void generate_g1(efp10_t *P);
void generate_g2(efp10_t *Q);
void efp10_ecd(efp10_t *ANS,efp10_t *P);
void efp10_eca(efp10_t *ANS,efp10_t *P1,efp10_t *P2);
void efp10_scm(efp10_t *ANS,efp10_t *P,mpz_t scalar);
void efp10_frobenius_map_p1(efp10_t *ANS,efp10_t *A);

#endif

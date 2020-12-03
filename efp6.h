#ifndef EFP6_H
#define EFP6_H

#include "efp2.h"

void efp6_init(efp6_t *P);
void efp6_printf(char *str,efp6_t *P);
void efp6_println(char *str,efp6_t *P);
void efp6_set(efp6_t *ANS,efp6_t *A);
void efp6_set_ui(efp6_t *ANS,unsigned long int UI1,unsigned long int UI2);
void efp6_set_mpn(efp6_t *ANS,mp_limb_t *A);
void efp6_set_neg(efp6_t *ANS,efp6_t *A);
int efp6_cmp(efp6_t *A,efp6_t *B);
void efp6_rational_point(efp6_t *P);
void generate_g1(efp6_t *P);
void generate_g2(efp6_t *Q);
void efp6_ecd(efp6_t *ANS,efp6_t *P);
void efp6_eca(efp6_t *ANS,efp6_t *P1,efp6_t *P2);
void efp6_scm(efp6_t *ANS,efp6_t *P,mpz_t scalar);
void efp6_frobenius_map_p1(efp6_t *ANS,efp6_t *A);

#endif

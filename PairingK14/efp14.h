#ifndef EFP14_H
#define EFP14_H

#include "efp7.h"

void efp14_init(efp14_t *P);
void efp14_printf(char *str,efp14_t *P);
void efp14_println(char *str,efp14_t *P);
void efp14_set(efp14_t *ANS,efp14_t *A);
void efp14_set_ui(efp14_t *ANS,unsigned long int UI1,unsigned long int UI2);
void efp14_set_mpn(efp14_t *ANS,mp_limb_t *A);
void efp14_set_neg(efp14_t *ANS,efp14_t *A);
int efp14_cmp(efp14_t *A,efp14_t *B);
void efp14_rational_point(efp14_t *P);
void generate_g1(efp14_t *P);
void generate_g2(efp14_t *Q);
void efp14_ecd(efp14_t *ANS,efp14_t *P);
void efp14_eca(efp14_t *ANS,efp14_t *P1,efp14_t *P2);
void efp14_scm(efp14_t *ANS,efp14_t *P,mpz_t scalar);
void efp14_frobenius_map_p1(efp14_t *ANS,efp14_t *A);

#endif

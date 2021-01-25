#ifndef MILLER_H
#define MILLER_H

#include "create.h"

// void efp6_to_efp(efp_t *ANS,efp6_t *A);
// void efp_to_efp6(efp6_t *ANS,efp_t *A);
// void efp6_to_efp3(efp3_t *ANS,efp6_t *A);
// void efp3_to_efp6(efp6_t *ANS,efp3_t *A);
// void ff_lttp_6sparse(fp6_t *f,efp3_t *T,efp_t *P);
// void ff_lttp_7sparse(fp6_t *f,efp3_t *T,efp_t *P);
// void f_ltqp_6sparse(fp6_t *f,efp3_t *T,efp3_t *Q,efp_t *P);
// void f_ltqp_7sparse(fp6_t *f,efp3_t *T,efp3_t *Q,efp_t *P);
// void Pseudo_7sparse_mapping(efp_t *P,efp3_t *Q);
// void fp6_mul_6sparse(fp6_t *ANS,fp6_t *A,fp6_t *B_6sparse);
// void fp6_mul_7sparse(fp6_t *ANS,fp6_t *A,fp6_t *B_7sparse);
// void miller_ate_6sparse(fp6_t *f,efp6_t *P,efp6_t *Q);
// void miller_ate_7sparse(fp6_t *f,efp6_t *P,efp6_t *Q);

void efp6_to_Jacefp(efp_jacobian_t *ANS,efp6_t *A);
void efp6_to_efp(efp_t *ANS,efp6_t *A);
void ff_lttp(fp6_t *f, efp_jacobian_t *S, efp_t *P);
void ff_ltqp(fp6_t *f, efp_jacobian_t *S, efp_t *Q,efp_t *P);
void miller_ate(fp6_t *f,efp6_t *P,efp6_t *Q);

#endif

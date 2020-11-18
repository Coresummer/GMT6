#ifndef MILLER_H
#define MILLER_H

#include "create.h"

void efp14_to_efp(efp_t *ANS,efp14_t *A);
void efp_to_efp14(efp14_t *ANS,efp_t *A);
void efp14_to_efp7(efp7_t *ANS,efp14_t *A);
void efp7_to_efp14(efp14_t *ANS,efp7_t *A);
void ff_lttp_6sparse(fp14_t *f,efp7_t *T,efp_t *P);
void ff_lttp_7sparse(fp14_t *f,efp7_t *T,efp_t *P);
void f_ltqp_6sparse(fp14_t *f,efp7_t *T,efp7_t *Q,efp_t *P);
void f_ltqp_7sparse(fp14_t *f,efp7_t *T,efp7_t *Q,efp_t *P);
void Pseudo_7sparse_mapping(efp_t *P,efp7_t *Q);
void fp14_mul_6sparse(fp14_t *ANS,fp14_t *A,fp14_t *B_6sparse);
void fp14_mul_7sparse(fp14_t *ANS,fp14_t *A,fp14_t *B_7sparse);
void miller_ate_6sparse(fp14_t *f,efp14_t *P,efp14_t *Q);
void miller_ate_7sparse(fp14_t *f,efp14_t *P,efp14_t *Q);

#endif

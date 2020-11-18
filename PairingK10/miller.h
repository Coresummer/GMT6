#ifndef MILLER_H
#define MILLER_H

#include "create.h"

void efp10_to_efp(efp_t *ANS,efp10_t *A);
void efp_to_efp10(efp10_t *ANS,efp_t *A);
void efp10_to_efp5(efp5_t *ANS,efp10_t *A);
void efp5_to_efp10(efp10_t *ANS,efp5_t *A);
void ff_lttp_4sparse(fp10_t *f,efp5_t *T,efp_t *P);
void ff_lttp_5sparse(fp10_t *f,efp5_t *T,efp_t *P);
void f_ltqp_4sparse(fp10_t *f,efp5_t *T,efp5_t *Q,efp_t *P);
void f_ltqp_5sparse(fp10_t *f,efp5_t *T,efp5_t *Q,efp_t *P);
void Pseudo_5sparse_mapping(efp_t *P,efp5_t *Q);
void fp10_mul_4sparse(fp10_t *ANS,fp10_t *A,fp10_t *B_4sparse);
void fp10_mul_5sparse(fp10_t *ANS,fp10_t *A,fp10_t *B_5sparse);
void miller_ate_4sparse(fp10_t *f,efp10_t *P,efp10_t *Q);
void miller_ate_5sparse(fp10_t *f,efp10_t *P,efp10_t *Q);

#endif

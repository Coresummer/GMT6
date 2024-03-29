#pragma once
#ifndef MILLER_H
#define MILLER_H

#include "create.h"

void efp6_to_Jacefp(efp_jacobian_t *ANS,efp6_t *A);
void efp6_to_Jacefp_montgomery(efp_jacobian_t *ANS,efp6_t *A);
void efp6_to_efp(efp_t *ANS,efp6_t *A);
void efp6_to_efp_montgomery(efp_t *ANS,efp6_t *A);
void ff_lttp(fp6_t *f, efp_jacobian_t *S, efp_t *P);
void ff_lttp_lazy_montgomery(fp6_t *f, efp_jacobian_t *S, efp_t *P);
void ff_lttp_costello(fp6_t *f, efp_jacobian_t *U, efp_t *S);
void ff_lttp_costello_lazy_montgomery(fp6_t *f, efp_jacobian_t *U, efp_t *S);

void ff_ltqp(fp6_t *f, efp_jacobian_t *S, efp_t *Q,efp_t *P);
void ff_ltqp_lazy_montgomery(fp6_t *f, efp_jacobian_t *S, efp_t *Q,efp_t *P);
void ff_ltqp_costello_mixed(fp6_t *f, efp_jacobian_t *U, efp_t *R,efp_t *S);
void ff_ltqp_costello_mixed_lazy_montgomery(fp6_t *f, efp_jacobian_t *U, efp_t *R,efp_t *S);

void miller_opt_ate_jac(fp6_t *f,efp6_t *P,efp6_t *Q);
void miller_opt_ate_jac_2NAF(fp6_t *f,efp6_t *P,efp6_t *Q);
void miller_opt_ate_proj_2NAF(fp6_t *f,efp6_t *P,efp6_t *Q);
void miller_opt_ate_jac_2NAF_lazy_montgomery(fp6_t *f,efp6_t *P,efp6_t *Q);
void miller_opt_ate_proj_2NAF_lazy_montgomery(fp6_t *f,efp6_t *P,efp6_t *Q);
void pre_miller_opt_ate_proj_loop_2NAF_lazy_montgomery(fp6_t *f,efp_t* mapped_P,efp_t* mapped_Q,efp_t* mapped_Q_neg,efp_jacobian_t *S, efp6_t *P,efp6_t *Q);
void miller_opt_ate_proj_loop_2NAF_lazy_montgomery(fp6_t *f,efp_t* mapped_P,efp_t* mapped_Q,efp_t* mapped_Q_neg,efp_jacobian_t *S);
#endif

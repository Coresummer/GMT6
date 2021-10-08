#pragma once
#ifndef FINAL_EXP_H
#define FINAL_EXP_H

#include "miller.h"

// void final_exp_basic(fp6_t *ANS,fp6_t *A);
void final_exp(fp6_t *ANS,fp6_t *A);
void final_exp_lazy_montgomery(fp6_t *ANS,fp6_t *A);
void final_exp_lazy_montgomery2(fp6_t *ANS,fp6_t *A);
#endif

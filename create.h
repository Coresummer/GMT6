#pragma once
#ifndef CREATE_H
#define CREATE_H

//#include "efp10.h"
#include "efp6.h"

void create_prt();
void check_base();
void frobenius_precalculation();
void curve_search();//[#EFp]P = 0 を満たすような a を探索する
void create_twist_curve();
void frobenius_trace(mpz_t *trace,unsigned int m);
void efpm_order(mpz_t *order,unsigned int m);
void create_weil();
//void skew_frobenius_map_g2(efp5_t *skew_Q,efp5_t *Q);
void tmp_init();

#endif
 
#pragma once
#ifndef TEST_PAIRING_H
#define TEST_PAIRING_H

// #include "count.h"
#include "final_exp.h"
#include "./time.h"
//void SCM_func_check();
void check_pairing();
void check_pairing_2NAF();
void check_pairing_static();
void check_pairing_count();
void check_pairing_count_2NAF();
void check_pairing_count_2NAF_lazy_montgomery();
void check_pairing_time();
void check_pairing_time_2NAF();
void check_pairing_time_2NAF_lazy_montgomery();
#endif

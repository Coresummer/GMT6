#pragma once

#ifndef FIELD_TEST_H
#define FIELD_TEST_H

// #include "count.h"
#include "fp6.h"
#include "./time.h"

int test_fp(int fp_n);
int test_fp2(int fp2_n);
int test_fp6(int fp6_n);
int test_field(int fp, int fp2, int fp6, int sqr);
int test_fp_montgomery(int fp_n);

void check_fp_with_montgomery();
void check_fp2_with_montgomery();
void check_fp6_with_montgomery();

#endif

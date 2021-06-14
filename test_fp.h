#pragma once
#ifndef TEST_FP_H
#define TEST_FP_H

#include "count.h"
#include "fp3.h"
#include "fp6.h"
#include <cybozu/benchmark.hpp>

void check_fp();
void check_fp3();
void check_fp6();
void check_fp3_count();
void check_fp6_count();
void check_fp_time();
void check_fp_time_clk();

#endif

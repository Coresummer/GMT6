#pragma once

#ifndef TIME_H
#define TIME_H

#include "define.h"

float timedifference_msec(struct timeval tv_start, struct timeval tv_end);
float timedifference_usec(struct timeval tv_start, struct timeval tv_end);
// //extern float timedifference_nsec(struct timespec tv_start, struct timespec tv_end);
void cost_zero();
void cost_init(cost *A);
void cost_check(cost *A);
void cost_addition(cost *A, cost *B);
void cost_substruction(cost *ANS, cost *A, cost *B);
void cost_printf(std::string str, cost *A, int n);
#endif

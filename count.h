#pragma once
#ifndef COUNT_H
#define COUNT_H

#include "define.h"

void count_start();
void count_printf();
float timedifference_msec(struct timeval tv_start, struct timeval tv_end);

#endif

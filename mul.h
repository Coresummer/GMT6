#pragma once
#ifndef MUL_H
#define MUL_H

#define TTT_INSTANCE_HERE

#include "define.h"

extern "C"{
    void fp_mul11_1_asm(uint64_t *ANS, uint64_t *A, uint64_t B);
    void fp_mul11_1_add_asm(uint64_t *ANS, uint64_t *A, uint64_t B);
#endif
}

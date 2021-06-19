#pragma once
#ifdef TTT_INSTANCE_HERE
    #define TTT_EXTERN
#else
    #define TTT_EXTERN extern
#endif

// #ifndef DEFINE_H
// #define DEFINE_H

#include "stdint.h"
#include "stdio.h"
#include "string.h"
#include "stdlib.h"

extern "C"{
    #define WORDS64 11
    #define DWORDS64 22

    #define BWORDS WORDS64*8
    #define DBWORDS DWORDS64*8

    #define BITS BWORDS*8
    #define DBITS DBWORDS*8

    typedef uint64_t UINT;

    TTT_EXTERN UINT Prime;

    struct fp{
        UINT v[WORDS64];
    };

    struct fpd{
        UINT v[DWORDS64];
    };

}
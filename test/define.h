#pragma once

#ifdef TTT_INSTANCE_HERE
    #define TTT_EXTERN
#else
    #define TTT_EXTERN extern
#endif

#ifndef DEFINE_H
#define DEFINE_H


#include <stdlib.h>
#include <gmp.h>
#include <sys/time.h>
#include <string.h>
#include <stdlib.h>
#include "utils.h"
#include <string>
#include <iostream>

#endif
extern "C"{
    #define WORDS64 11
    #define DWORDS64 22

    #define BWORDS WORDS64*8
    #define DBWORDS DWORDS64*8

    #define BITS BWORDS*8
    #define DBITS DBWORDS*8

    struct fp{
        uint64_t v0[WORDS64];
    };

    struct fp2{
        fp v0[WORDS64];
        fp v1[WORDS64];
    };
    struct fp6{
        fp2 v0[WORDS64];
        fp2 v1[WORDS64];
        fp2 v2[WORDS64];
    };

    struct fpd{
        uint64_t v0[DWORDS64];
    };
    struct fpd2{
        fpd v0[DWORDS64];
        fpd v1[DWORDS64];
    };
    struct fpd6{
        fpd2 v0[WORDS64];
        fpd2 v1[WORDS64];       
        fpd2 v2[WORDS64];        
    };

    struct efp{
        fp x;
        fp y;
        int inf;
    };
    struct efp2{
        fp2 x;
        fp2 y;
        int inf;
    };
    struct efp6{
        fp6 x;
        fp6 y;
        int inf;
    };

    struct efp_projective{
        fp x;
        fp y;
        fp z;
        int inf;
    };
    struct efp2_projective{
        fp2 x;
        fp2 y;
        fp2 z;
        int inf;
    };
    struct efp6_projective{
        fp6 x;
        fp6 y;
        fp6 z;
        int inf;
    };

    TTT_EXTERN fp cp_prime;
    TTT_EXTERN fp cp_zero;
    TTT_EXTERN mpz_t cp_prime_z;

}
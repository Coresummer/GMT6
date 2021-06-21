#include "define.h"
#include <cstdint>
#include <string>

extern "C"{
    void fp_init(fp *res);
    void fpd_init(fp *res);

    void fp_init_set_ui(fp *res, uint64_t UI);

    char* fp_get_str(fp *A);
    char* fpd_get_str(fpd* A);

    void fp_print( std::string str,fp *A);
    void fp_println( std::string str,fp *A);

    void fpd_print(std::string str, fpd* A);
    void fpd_println(std::string str, fpd* A);

    void fp_set(fp *ANS, fp *A);
    void fp_set_mpz(fp *ANS, mpz_t A);
    void fpd_set(fpd *ANS,fpd *A);
    void fp_set_ui(fp *ANS,uint64_t UI);

    void fp_set_neg(fp *ANS,fp *A);

    void fp_lshift_1(fp *ANS,fp *A);
    void fp_rshift_1(fp *ANS,fp *A);

    void fp_set_random(fp *ANS,gmp_randstate_t state);

    void fp_mod(fp *Ans,fp *A);

    void fp_add(fp *ANS, fp *A, fp *B);
    void fp_sub(fp *ANS, fp *A, fp *B);
    void fp_mul(fp *ANS, fp *A, fp *B);
    void fp_mod(fp *ANS, fp *A);
    void fp_mulmod(fp *ANS, fp *A, fp *B);
    void fp_mul_mont(fp *ANS, fp *A, fp *B);

    
}



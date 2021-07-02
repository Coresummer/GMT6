#include "define.h"
#define TTT_INSTANCE_HERE

extern "C"{
    void fp_field_setup();
    void fp_init(fp *A);
    void fpd_init(fpd *A);

    void fp_init_set_ui(fp *res, uint64_t UI);

    char* fp_get_str(fp *A);
    char* fpd_get_str(fpd* A);

    void fp_print(const std::string str,const fp *A);
    void fp_println(const std::string str,const fp *A);
    void fpd_print(const std::string str,const fpd* A);
    void fpd_println(const std::string str,const fpd* A);

    void fp_set(fp *ANS,const fp *A);
    void mpz_set_fp( mpz_t* ANS, const fp *A);
    void fp_set_mpz(fp *ANS,const mpz_t A);

    void fpd_set(fpd *ANS,const fpd *A);
    void fp_set_ui(fp *ANS,const uint64_t UI);

    void fp_set_neg(fp *ANS,const fp *A);

    void fp_lshift_1(fp *ANS,const fp *A);
    void fp_rshift_1(fp *ANS,const fp *A);

    void fp_set_random(fp *ANS,gmp_randstate_t state);

    void fp_mod(fp *ANS, const fp *A);

    void fp_mul(fp *Ans,const fp *A,const fp *B);
    void fp_mul_nonmod(fpd *Ans,const fp *A,const fp *B);
    void fp_mul_ui(fp *Ans,const fp *A,const uint64_t UI);
    void fp_mul_fp_t(fp *Ans,const fp *A,const uint64_t *B);

    void fp_sqr(fp *Ans,const fp *A);
    void fp_sqr_nonmod(fpd *Ans,const fp *A);

    void fp_add(fp *ANS,const  fp *A,const  fp *B);
    void fp_add_ui(fp *Ans,const fp *A,const uint64_t UI);
    void fp_add_fp_t(fp *Ans,const fp *A,const uint64_t *B);

    void fp_sub(fp *ANS,const  fp *A,const  fp *B);
    void fp_sub_ui(fp *Ans,const fp *A,const uint64_t UI);
    void fp_sub_fp_t(fp *Ans,const fp *A,const uint64_t *B);

    TTT_EXTERN fp cp_prime;

}



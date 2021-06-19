#include "define.h"

extern "C"{
    void fp_init(UINT* res);
    void fp_init_set_uint64(UINT *res, uint64_t op);
    char* fp_get_str(UINT *A);
    void fp_print(char* str, UINT* A);

    void fp_add(UINT* res, UINT* A, UINT* B);
    void fp_sub(UINT* res, UINT* A, UINT* B);
    void fp_mul(UINT* res, UINT* A, UINT* B);
    void fp_mod(UINT* res, UINT* A, UINT* B);
    void fp_mulmod(UINT* res, UINT* A, UINT* B);
    void fp_mul_mont(UINT* res, UINT* A, UINT* B);
}



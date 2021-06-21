#include "define.h"
#include "fp.h"

int main(){
    fp cp_prime;
    fp_init_set_ui(&cp_prime, 9007199254740997);
    mpz_t cp_prime_z;
    mpz_init_set_ui(cp_prime_z,9007199254740997);

    fp a,b,c;
    fp_init_set_ui(&a,124135121312);
    fp_init_set_ui(&b,0);
    fp_print("a:",&a);
    fp_set(&b, &a);
    fp_print("b:",&b);
    fp_set_neg(&c, &b);
    fp_print("c:",&b);

    mpz_clear(cp_prime_z);

    return 0;
}   
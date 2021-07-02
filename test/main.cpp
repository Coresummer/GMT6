// #include "define.h"

#include "fp.h"

int main(){
    // *(fp_t*)cp_prime.v0 = 9007199254740997;
    fp_field_setup();
    // // fp_t a,b,c;

    // *(fp_t*)a = 1231532513251343221;
    // *(fp_t*)b = 2142163261264930543;

    // fp cp_prime;
    // fp_init_set_ui(&cp_prime, 9007199254740997);
    // mpz_t cp_prime_z;
    // mpz_init_set_ui(cp_prime_z,9007199254740997);

    fp a,b,c;
    fp_print("p:", &cp_prime);
    fp_init_set_ui(&a,1231532513251343221);
    fp_init_set_ui(&b,2142163261264930543);
    fp_print("a:",&a);
    fp_set(&b, &a);
    fp_print("b:",&b);
    fp_mod(&b,&b);
    fp_print("b:",&b);
    fp_set_neg(&c, &b);
    fp_print("c:",&c);

    // mpz_clear(cp_prime_z);

    return 0;
}   
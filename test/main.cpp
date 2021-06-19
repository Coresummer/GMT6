// #include "define.h"
#include "fp.h"
#include "utils.h"
int main(){
    UINT a;

    fp_init_set_uint64(&a,124135121312);
    fp_print(toCharPtr("fp_init_set_uint64():"),&a);

    return 0;
}
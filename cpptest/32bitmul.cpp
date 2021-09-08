#include <cstdint>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/time.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>
#include <assert.h>
#include <string.h>
#include <vector>
#include <string>
#include <iostream>



int main(){
    uint32_t a1,a2,b1,b2;
    uint64_t c;

    // a = 429496729;
    // b = 42949672;

    // c = uint64_t(a) * uint64_t(b);
    c = 0x2507C4F614296;
    a1 = c >> 32;
    std::cout << c << std::endl;
    std::cout << a1 << std::endl;

    return 0;
}
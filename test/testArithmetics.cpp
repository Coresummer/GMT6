#define WORDS 88
#define DWORDS 196

#define BITS WORDS*8
#define DBITS DWORDS*8


// #include <cstring>
#include <iostream>
#include "stdio.h"
#include "string.h"

typedef unsigned _ExtInt(BITS)  fp_t;
typedef unsigned _ExtInt(DBITS) fpd_t;

void mpn_init(fp_t *op){
    *op = 0;
}

void mpn_init_set_str_base10(fp_t *op, char* str){
    *op = 0;
    
}

void mpn_init_set_str_base16(fp_t *op, char* str){
    *op = 0;
    
}

void mpn_print(fp_t *op, std::string str){
    std::cout << str ;
    // printf("%s",str);

    uint8_t buf[WORDS];
    memcpy(buf, op, sizeof(buf));
    printf("0x");
    if(buf[0]==0){
        printf("0\n");
    }else{
        for(int i=WORDS-1;i>=0;i--){
        if(buf[i] != 0) printf("%x",buf[i]);
        }
        printf("\n");
    }
}


int main()
{
    fp_t a;
    mpn_init(&a);
    mpn_print(&a, "fp_init(&a): ");

    a = 11111111111111;
    a *= a;
    a *= a;
    a *= a;
    a *= a;
    a *= a;
    a *= a;
    mpn_print(&a, "fp_set_int(&a,11111111111111): ");
    
    return 0; 
}

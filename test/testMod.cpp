#define WORDS 88
#define DWORDS 196

#define BITS WORDS*8
#define DBITS DWORDS*8

#include <iostream>
#include "stdio.h"
#include "string.h"

typedef unsigned _ExtInt(BITS)  fp_t;
typedef unsigned _ExtInt(DBITS) fpd_t;

struct fp{
    uint64_t v0[WORDS];
};

fp cp_prime;

void fp_t_print(fp_t *op, std::string str){
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

void fpd_t_print(fpd_t *op, std::string str){
    std::cout << str ;
    // printf("%s",str);

    uint8_t buf[DWORDS];
    memcpy(buf, op, sizeof(buf));
    printf("0x");
    if(buf[0]==0){
        printf("0\n");
    }else{
        for(int i=DWORDS-1;i>=0;i--){
        if(buf[i] != 0) printf("%x",buf[i]);
        }
        printf("\n");
    }
}

void fp_mul(fp* ANS, fp* A, fp* B){
    fp_t c,p,res;
    fpd_t a,b,dres;
    a = *(fp_t*)A->v0;
    b = *(fp_t*)B->v0;
    dres = a*b;

    // p = *(fp_t*)cp_prime.v0;
    p=9007199254740997;
    *(fp_t*)res = dres;
    c = res % p;

    *(fp_t*)ANS->v0 = c;
}

void fp_t_modtest(fp_t* ANS){
    fp_t a,b,c,p;

    a=1231532513251343221;
    b=2142163261264930543;
    c=0;
    p=9007199254740997;
    // *(fp_t*)c=0;
    c = (a*b) % p;
    fp_t_print(&c,"a * b % p:");    

    *ANS = c;

}

void fp_init_set_ui(fp *A, const uint64_t UI){
  fp_t ui = UI;
//   *(fp_t*)A->v0 = ui % *(const fp_t*)(cp_prime.v0);
}

void fp_mul(fp *Ans,const fp *A,const fp *B){
  #ifdef DEBUG_COST_A
  cost_mul++;
  #endif
  fpd_t da = *(const fp_t*)A->v0;
  fpd_t db = *(const fp_t*)B->v0;
//   *(fp_t*)Ans->v0 = *(fp_t*)(da * db) % *(fp_t*)cp_prime.v0;
}

int main()
{
    *(fp_t*)cp_prime.v0 = 9007199254740997;

    fp a,b,c;
    // fp_init_set_ui(&a,1231532513251343221);
    // fp_init_set_ui(&b,2142163261264930543);
    // fp_init_set_ui(&c,0);
    // // fp_t ans = (a * b) % *(fp_t*)cp_prime.v0;
    // fp_mul(&c,&a,&b);

    *(fp_t*)a.v0=1231532513251343221;
    *(fp_t*)b.v0=2142163261264930543;
    *(fp_t*)c.v0=0;
    *(fp_t*)c.v0= (*(fp_t*)a.v0 * *(fp_t*)b.v0 ) % *(fp_t*)cp_prime.v0;
    // fp_t_mod((fp_t*)c.v0, (fp_t*)a.v0, (fp_t*)cp_prime.v0);
    fp_t_print((fp_t*)c.v0,"a * b % p ");  

    printf("fp_t_mod\n");
    fp_t ans;
    fp_t_modtest(&ans);
    fp_t_print(&ans,"a * b % p:");  

    fp_mul(&c, &a,&b);
    fp_t_print((fp_t*)c.v0,"a * b % p ");  

}

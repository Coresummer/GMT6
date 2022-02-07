#include <gmp.h>
#include <cstdio>
#include <gmp.h>

int main(){
    mpz_t p,r,pr,r_2,rrp;

    mpz_init(p);
    mpz_init(r);
    mpz_init(pr);
    mpz_init(r_2);

    //p
    mpz_set_str(p,"9401ff90f28bffb0c610fb10bf9e0fefd59211629a7991563c5e468d43ec9cfe1549fd59c20ab5b9a7cda7f27a0067b8303eeb4b31555cf4f24050ed155555cd7fa7a5f8aaaaaaad47ede1a6aaaaaaaab69e6dcb",16);
    
    //r
    mpz_init_set_ui(r,2);
    mpz_pow_ui(r,r,704);
    mpz_mod(r,r,p);
    
    //r_2
    mpz_mul(r_2,r,r);
    mpz_mod(r_2,r_2,p);
    
    //seek p_inv on R

    mpz_t t,R,i,tmpMod;
    mpz_init_set_ui(pr,0);
    mpz_init_set_ui(R,2);
    mpz_pow_ui(R,R,704);
    mpz_init_set_ui(i,1);
    mpz_init_set_ui(tmpMod,0);
    
    while(mpz_cmp_ui(R, 1)!=0){
        printf("s\n");
        mpz_mod_ui(tmpMod,t,2);
        __gmp_printf("tmpMod:%Zd",tmpMod);
        if(mpz_cmp_ui(tmpMod, 0)==0){
            printf("here");
            mpz_add(t,t,p);
            mpz_add(pr,pr,i);
        }
        mpz_tdiv_q_ui(t,t,2);
        mpz_div_ui(R,R,2);
        mpz_mul_ui(i,i,2);
    }

    // mpz_mul(rrp,p,pr);
    //print
    gmp_printf("p:%Zx\n",p);
    gmp_printf("r(mod p):%Zx\n",r);
    gmp_printf("r_2(mod p):%Zx\n",r_2);
    gmp_printf("pr(mod p):%Zx\n",pr);
    gmp_printf("rrp(mod p):%Zx\n",rrp);

}
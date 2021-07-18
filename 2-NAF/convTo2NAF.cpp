#include "gmp.h"
#include <vector>
#include <iostream>
using namespace std;

int main(){
    mpz_t xai,tmp;
    mpz_init_set_str(xai,"efffffffffffffe00000000000000000",16);

    vector<int> v;
    mpz_init_set_ui(tmp,0);
    while(mpz_cmp_ui(xai, 0 )!= 0){
        mpz_mod_ui(tmp,xai,2);
        if(mpz_cmp_ui(tmp, 1)==0){
            mpz_mod_ui(tmp,xai,4);
            int res = 2-(mpz_get_si(tmp));
            v.push_back(res);
            mpz_set_si(tmp,res);
            mpz_sub(xai,xai,tmp);
        }else{
            v.push_back(0);
        }
        mpz_div_ui(xai,xai,2);
    }
    for (int i =0; i < v.size(); i++){
        cout << v[i] << ", " ;
    }
    
    return 0;

}
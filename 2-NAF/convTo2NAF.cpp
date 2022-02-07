#include "gmp.h"
#include <vector>
#include <iostream>
using namespace std;

int main(){
    mpz_t xai,hp3w,hpw,x_1,tmp;
    mpz_init_set_str(xai,"efffffffffffffe00000000000000000",16);
    mpz_init_set(x_1,xai);
    mpz_sub_ui(x_1,x_1,1);
    
    mpz_init_set_str(hp3w,"111",10);//1811507161526425387769904
    mpz_init(hpw);
    mpz_divexact_ui(hpw,hp3w,3);
    vector<int> v,v2,v3,v4;

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
    cout << "xai:";
    for (int i =0; i < v.size(); i++){
        cout << v[i] << ", " ;
    }
    cout << endl;
    cout << endl;

    // mpz_init_set_ui(tmp,0);
    while(mpz_cmp_ui(x_1, 0 )!= 0){
        mpz_mod_ui(tmp,x_1,2);
        if(mpz_cmp_ui(tmp, 1)==0){
            mpz_mod_ui(tmp,x_1,4);
            int res = 2-(mpz_get_si(tmp));
            v2.push_back(res);
            mpz_set_si(tmp,res);
            mpz_sub(x_1,x_1,tmp);
        }else{
            v2.push_back(0);
        }
        mpz_div_ui(x_1,x_1,2);
    }
    cout << "x_1:";
    for (int i =0; i < v2.size(); i++){
        cout << v2[i] << ", " ;
    }
    cout << endl;
    cout << endl;

        // mpz_init_set_ui(tmp,0);
    while(mpz_cmp_ui(hp3w, 0 )!= 0){
        mpz_mod_ui(tmp,hp3w,2);
        if(mpz_cmp_ui(tmp, 1)==0){
            mpz_mod_ui(tmp,hp3w,4);
            int res = 2-(mpz_get_si(tmp));
            v3.push_back(res);
            mpz_set_si(tmp,res);
            mpz_sub(hp3w,hp3w,tmp);
        }else{
            v3.push_back(0);
        }
        mpz_div_ui(hp3w,hp3w,2);
    }
    cout << "3w:";
    for (int i =0; i < v3.size(); i++){
        cout << v3[i] << ", " ;
    }
    cout << endl;
    cout << endl;

    while(mpz_cmp_ui(hpw, 0 )!= 0){
        mpz_mod_ui(tmp,hpw,2);
        if(mpz_cmp_ui(tmp, 1)==0){
            mpz_mod_ui(tmp,hpw,4);
            int res = 2-(mpz_get_si(tmp));
            v4.push_back(res);
            mpz_set_si(tmp,res);
            mpz_sub(hpw,hpw,tmp);
        }else{
            v4.push_back(0);
        }
        mpz_div_ui(hpw,hpw,2);
    }
    cout << "w:";
    for (int i =0; i < v4.size(); i++){
        cout << v4[i] << ", " ;
    }
    cout << endl;
    cout << endl;

    mpz_clear(hp3w);
    mpz_clear(hpw);
    mpz_clear(xai);
    mpz_clear(x_1);
    mpz_clear(tmp);

    
    return 0;

}
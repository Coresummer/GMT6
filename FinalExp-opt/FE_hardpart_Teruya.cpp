//clang++ -g FE_hardpart.cpp -std=c++11 -Wall -O2 -march=native -lntl -pthread -lgmp

#include <NTL/ZZXFactoring.h>
#include <NTL/vec_ZZ.h>
#include <NTL/ZZ_pX.h>
#include <NTL/ZZX.h>
#include <cstdio>
#include <iostream>
#include <math.h>
#include <string>
#include <vector>

using namespace std;
using namespace NTL;

vector<ZZX> Pp; //[5][3]
vector<ZZX> Rr; //[5][3]
vector<ZZX> Tt; //[5][3]

void TwoDimZZX_init(vector<ZZX> *ANS,int x,int y){//x<=y
    for(int i=0;i<y;i++){
        ZZX t1;
        t1.SetLength(x);
        ANS->push_back(t1);
    }
}

void TwoDimZZX_clear(vector<ZZX> *ANS){//x<=y
    for(int i=0;i<ANS->size();i++){
        ANS[i].clear();   
    }
}


void TwoDimZZX_Mul(vector<ZZX> *ANS, vector<ZZX> A, vector<ZZX> B){
    for(int i=0;i<A.size();i++){
        for(int j=0;j<B.size();j++){
            cout << "i" <<i << "j" <<i;
            if(i+j<(*ANS).size()-1){
                (*ANS)[i+j]=A[i]*B[j];
            }
        }
    }
}

void TwoDimZZX_Println(string str,vector<ZZX> A){
    // cout << A[0].size() << "," << A[0][0] << endl;
    cout << str << endl;
    for(int i=0;i<A.size();i++){
        cout << "x^" << i << ":";
        cout << A[i] << ", ";
        cout << endl;
    }
}

void CP6SetupPRT(){
  TwoDimZZX_init(&Pp, 3, 5);
  TwoDimZZX_init(&Rr, 3, 5);
  TwoDimZZX_init(&Tt, 3, 5);

  Pp[0][2] = 9;
  Pp[0][1] = 12;//12
  Pp[0][0] = 4;//4

  Pp[1][2] = -18;
  Pp[1][1] = -12;
  Pp[1][0] = 0; //0

  Pp[2][2] = 27;
  Pp[2][1] = 18;
  Pp[2][0] = 16;//16

  Pp[3][2] = -18;//-18
  Pp[3][1] = -6;//-6
  Pp[3][0] = -12;//-12

  Pp[4][2] = 9; //9
  Pp[4][1] = 6; //6
  Pp[4][0] = 4; //4

  //Rr

  Rr[0][2] = 0;
  Rr[0][1] = 0;//12
  Rr[0][0] = 1;//4

  Rr[1][2] = 0;
  Rr[1][1] = 0;
  Rr[1][0] = -1;

  Rr[2][2] = 0;
  Rr[2][1] = 0;
  Rr[2][0] = 1;

  Rr[3][2] = 0;
  Rr[3][1] = 0;
  Rr[3][0] = 0;

  Rr[4][2] = 0;
  Rr[4][1] = 0;
  Rr[4][0] = 0;

////Tt
  Tt[0][2] = 0;
  Tt[0][1] = 0;
  Tt[0][0] = 1;

  Tt[1][2] = 0;
  Tt[1][1] = 0;
  Tt[1][0] = 2;

  Tt[2][2] = 0;
  Tt[2][1] = 0;
  Tt[2][0] = -1;

  Tt[3][2] = 0;
  Tt[3][1] = 0;
  Tt[3][0] = 0;

  Tt[4][2] = 0;
  Tt[4][1] = 0;
  Tt[4][0] = 0;
}

void CP6ClearPRT(){
    TwoDimZZX_clear(&Pp);
    TwoDimZZX_clear(&Rr);
    TwoDimZZX_clear(&Tt);
}

void CP6HyashidaFinalexp(){
    vector<ZZX> tmp1_6_10,tmp2_6_10,tmp3_6_10;
    vector<ZZX> tmp1_9_15,tmp2_9_15,tmp3_9_15;

    TwoDimZZX_init(&tmp1_6_10, 6, 10);
    TwoDimZZX_init(&tmp2_6_10, 6, 10);
    TwoDimZZX_init(&tmp3_6_10, 6, 10);

    TwoDimZZX_init(&tmp1_9_15, 9, 15);
    TwoDimZZX_init(&tmp2_9_15, 9, 15);
    TwoDimZZX_init(&tmp3_9_15, 9, 15);

    TwoDimZZX_Mul(&tmp1_6_10, Pp, Pp);
    TwoDimZZX_Println("Pp^2", tmp1_6_10);   
    TwoDimZZX_Mul(&tmp1_9_15, tmp1_6_10, Pp);
    TwoDimZZX_Println("Pp^3", tmp1_9_15);   

}

int main(){

    CP6SetupPRT();
    TwoDimZZX_Println("Pp",Pp);
    TwoDimZZX_Println("Rr",Rr);
    TwoDimZZX_Println("Tt",Tt);

    CP6HyashidaFinalexp();
    return 0;
}
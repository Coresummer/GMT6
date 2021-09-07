//clang++ -g FE_hardpart.cpp -std=c++11 -Wall -O2 -march=native -lntl -pthread -lgmp

#include <NTL/ZZXFactoring.h>
#include <NTL/vec_ZZ.h>
#include <NTL/ZZ_pX.h>
#include <NTL/ZZX.h>
#include <math.h>

using namespace std;
using namespace NTL;

int Base=0;
ZZX P,R,T,t,t1[5],P2[9],R_Ans[7];

ZZX Pp[5],Rr[5], Tt[5];
ZZX Pp2[10];
ZZX Pp3[15],Tt2[10], Tt3[15];

ZZ hy,hy_2,x,p,tt,originalP, r,originalR;

void SetupPrime_k10();
void SetupPrime_k14();
void SetupPrime_cp6();

void HardPart_k10();
void HardPart_k14();
void HardPart_CP6();

ZZ toDec(char val){
	if (val=='A' || val=='a') return to_ZZ(10);
	else if(val=='B' || val=='b') return to_ZZ(11);
	else if(val=='C' || val=='c') return to_ZZ(12);
	else if(val=='D' || val=='d') return to_ZZ(13);
	else if(val=='E' || val=='e') return to_ZZ(14);
	else if(val=='F' || val=='f') return to_ZZ(15);
	else return to_ZZ(val-'0');
}

ZZ hexToZZ(string hexVal){
	ZZ val;
	val = to_ZZ(0);	//initialise the value to zero
	double base = 16;
	int j = 0;
	//convert the hex string to decimal string
	for (int i = ((hexVal.length())-1); i > -1; i--){
		val += toDec(hexVal[i])*(to_ZZ((pow(base, j))));
		j++;
	}
	//cout << endl << "The value in decimal is " << val << endl; 
	return val;
}

int main(){
  SetupPrime_cp6();
  // HardPart_CP6();
  // HardPart_k10();
  //HardPart_k14();

  return 0;
}

void Cp6NewHardPart(){
  cout << "Parameter CP6" << endl;
  for(int i=0;i<5;i++){
    Pp[i].SetLength(3);
  }
  for(int i=0;i<10;i++){
    Pp2[i].SetLength(3);
  }
  for(int i=0;i<15;i++){
    Pp3[i].SetLength(3);
  }
  for(int i=0;i<5;i++){
    Rr[i].SetLength(3);
  }
  for(int i=0;i<5;i++){
    Tt[i].SetLength(3);
  }
  for(int i=0;i<5;i++){
    Tt2[i].SetLength(3);
  }
  for(int i=0;i<5;i++){
    Tt3[i].SetLength(3);
  }


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

  Pp2 = Pp * Pp;

  
  

}


void SetupPrime_k10(){
  cout << "Parameter k=10" << endl;
  Base = 4;//pに割る4があるので、、、
  P.SetLength(15);
  R.SetLength(9);

  P[14] = 1;
  P[12] = -2;
  P[10] = 1;
  P[4] = 1;
  P[2] = 2;
  P[0] = 1;

  R[8] = 1;
  R[6] = -1;
  R[4] = 1;
  R[2] = -1;
  R[0] = 1;
}

void SetupPrime_k14(){
  cout << "Parameter k=14" << endl;
  Base = 4;
  P.SetLength(19);
  R.SetLength(13);

  P[18] = 1;
  P[16] = -2;
  P[14] = 1;
  P[4] = 1;
  P[2] = 2;
  P[0] = 1;

  R[12] = 1;
  R[10] = -1;
  R[8] = 1;
  R[6] = -1;
  R[4] = 1;
  R[2] = -1;
  R[0] = 1;
}

void SetupPrime_cp6(){
  // hy.SetSize(10000);
  // hy_2.SetSize(10000);
  // x.SetSize(10000);
  // p.SetSize(10000);
  // tt.SetSize(10000);
  // originalP.SetSize(10000);
  // r.SetSize(10000);
  // originalR.SetSize(10000);

  originalR = hexToZZ("e0ffffffffffffc400000000000003ff10000000000000200000000000000001");
  x = hexToZZ("efffffffffffffe00000000000000000");//128
  hy = hexToZZ("ffbbffffffffffffc020");//80
  
  hy_2 = hy*hy;
  originalP = hexToZZ("9401ff90f28bffb0c610fb10bf9e0fefd59211629a7991563c5e468d43ec9cfe1549fd59c20ab5b9a7cda7f27a0067b8303eeb4b31555cf4f24050ed155555cd7fa7a5f8aaaaaaad47ede1a6aaaaaaaab69e6dcb");
  cout << "Parameter cp k=6" << endl;
  Base = 12;
  P.SetLength(5);
  R.SetLength(3);

  for(int i=0;i<5;i++){
    t1[i].SetLength(3);
  }

  for(int i=0;i<9;i++){
    P2[i].SetLength(9);
  }

  for(int i=0;i<7;i++){
    R_Ans[i].SetLength(9);
  }

  t1[0][2] = 9;
  t1[0][1] = 12;//12
  t1[0][0] = 16;//4

  t1[1][2] = -18;
  t1[1][1] = -12;
  t1[1][0] = -24; //0

  t1[2][2] = 27;
  t1[2][1] = 18;
  t1[2][0] = 28;//16

  t1[3][2] = -18;//-18
  t1[3][1] = -6;//-6
  t1[3][0] = -12;//-12

  t1[4][2] = 9; //9
  t1[4][1] = 6; //6
  t1[4][0] = 4; //4

  // for(int i=0;i<5;i++){
  //   tt=0;
  //   for(int j=0;j<3;j++){
  //     if(j==0){
  //       tt += t1[i][j];
  //     }else if(j==1){
  //       tt += t1[i][j] * hy;
  //     }else if(j==2){
  //       tt += t1[i][j] * hy_2;
  //     }
  //   }
  //   tt *= power(x,i);
  //   // cout << "tt^" << i << ":" << tt << endl;

  //   // cout << "x^" << i << ":" << power(x,i) << endl;
  //   p += tt;
  //   // cout << "p^" << i << ":" << p << endl << endl;
  // }
  p /= 12;

  cout << "         p:" << p << endl;
  cout << "original p:" << originalP << endl;

  r = power(x,2) -x +1;

  cout << "         r:" << r << endl;
  cout << "original r:" << originalR << endl;

  //(12P)^2
  // for(int i=0;i<5;i++){
  //   for(int j=0;j<5;j++){
  //     P2[i+j] += (t1[i]*t1[j]);
  //   }
  // }
  cout << endl << endl ;

  // (12P)^2 - 12P
  // for(int i=0;i<5;i++){
  //   P2[i] -= t1[i]*12;
  // }

  //(12P)^2 - 12P + 144
  // P2[0][0]+=144;

  // cout << "(12p(x))^2 - 12p(x) + 144" << endl;

  // for(int i=0;i<9;i++){
  //   cout << "P2-" <<i<<":" << P2[i] << endl;
  // }

  for(int i=5;i>=2;i--){
    t1[i-2] -= t1[i];
    t1[i-1] += t1[i];
    R_Ans[i-2] = t1[i];
    t1[i] -= t1[i];
  }
    cout << endl << endl ;

  cout << "surplus" << endl;
  for(int i=0;i<5;i++){
    cout << "P-" <<i<<":" << t1[i] << endl;
  }
  cout << endl << endl ;

  cout << "Quotient*144" << endl;
  for(int i=0;i<5;i++){
    cout << "r*x^"<<i<<"*(:" << R_Ans[i] << ")" << endl;
  }

}

void HardPart_k10(){
  ZZX p[4],Top,Bottom,Res,Rem,temp1,temp2;
  for(int i=0;i<4;i++)  p[i].SetLength(14*(i+1)+1);//P^(i+1)が収まるサイズあれば良いので、、、
  Top.SetLength(14*4+1);
  Bottom.SetLength(9);
  Res.SetLength(14*4+1);
  Rem.SetLength(14*4+1);
  temp1.SetLength(14*4+1);
  temp2.SetLength(14*4+1);

  //setup p,r;
  SetupPrime_k10();

  p[0]=P;
  for(int i=1;i<4;i++)  p[i]=p[i-1]*p[0];
  for(int i=0;i<4;i++)  cout << "p^" << i+1 << " : " << p[i] << endl << endl;

  //分数が出てくるとめんどくさいので、4^4をかける(その結果プレーンな最終べきと同じではないことに注意する！！)
  Top = p[3] -p[2]*Base +p[1]*(int)pow(Base,2) -p[0]*(int)pow(Base,3) +(int)pow(Base,4);
  Bottom = R;
  cout << "Top : " << Top << endl << endl;
  cout << "Bottom : " << Bottom << endl << endl;

  DivRem(Res,Rem,Top,Bottom);
  cout << "Deg=" << deg(Bottom) << endl;
  cout << "Res" << Res << endl;
  cout << "Rem" << Rem << endl << endl;

  for(int i=2;i>=0;i--){
    cout << "deg(Res) = " << deg(Res) << endl;
    cout << "deg(p^" << i+1 << ") = " << deg(p[i]) << endl;
    DivRem(Rem,temp2,Res,p[i]);
    Res = temp2/Base;
    cout << "Rem" << Rem << endl << endl;
  }
  cout << "p^0:" << temp2/Base << endl;
}

void HardPart_k14(){
  ZZX p[6],Top,Bottom,Res,Rem,temp1,temp2;
  for(int i=0;i<6;i++)  p[i].SetLength(140);
  Top.SetLength(140);
  Bottom.SetLength(13);
  Res.SetLength(140);
  Rem.SetLength(140);
  temp1.SetLength(120);
  temp2.SetLength(120);

  //setup p,r;
  SetupPrime_k14();

  p[0] = P;
  for(int i=1;i<6;i++)  p[i] = (p[i-1] * p[0]);
  for(int i=0;i<6;i++)  cout << "p^" << i+1 << " : " << p[i] << endl << endl;

  Top = p[5] - p[4]*Base + p[3]*(int)pow(Base,2) - p[2]*(int)pow(Base,3) + p[1]*(int)pow(Base,4) - p[0]*(int)pow(Base,5) + (int)pow(Base,6);
  Bottom = R;
  cout << "Top : " << Top << endl << endl;
  cout << "Bottom : " << Bottom << endl << endl;

  DivRem(Res,Rem,Top,Bottom);
  cout << "Deg=" << deg(Bottom) << endl;
  cout << "Res" << Res << endl;
  cout << "Rem" << Rem << endl << endl;

  for(int i=4;i>=0;i--){
    cout << "deg(Res) = " << deg(Res) << endl;
    cout << "deg(p^" << i+1 << ") = " << deg(p[i]) << endl;
    DivRem(Rem,temp2,Res,p[i]);
    Res = temp2/Base;
    cout << "Rem" << Rem << endl << endl;
  }

  cout << "p^0:" << temp2/Base << endl;
}

void HardPart_cp6(){
  ZZX p[6],Top,Bottom,Res,Rem,temp1,temp2;
  for(int i=0;i<6;i++)  p[i].SetLength(140);
  Top.SetLength(140);
  Bottom.SetLength(13);
  Res.SetLength(140);
  Rem.SetLength(140);
  temp1.SetLength(120);
  temp2.SetLength(120);

  //setup p,r;
  SetupPrime_cp6();

  p[0] = P;
  for(int i=1;i<6;i++)  p[i] = (p[i-1] * p[0]);
  for(int i=0;i<6;i++)  cout << "p^" << i+1 << " : " << p[i] << endl << endl;

  Top = p[5] - p[4]*Base + p[3]*(int)pow(Base,2) - p[2]*(int)pow(Base,3) + p[1]*(int)pow(Base,4) - p[0]*(int)pow(Base,5) + (int)pow(Base,6);
  Bottom = R;
  cout << "Top : " << Top << endl << endl;
  cout << "Bottom : " << Bottom << endl << endl;

  DivRem(Res,Rem,Top,Bottom);
  cout << "Deg=" << deg(Bottom) << endl;
  cout << "Res" << Res << endl;
  cout << "Rem" << Rem << endl << endl;

  for(int i=4;i>=0;i--){
    cout << "deg(Res) = " << deg(Res) << endl;
    cout << "deg(p^" << i+1 << ") = " << deg(p[i]) << endl;
    DivRem(Rem,temp2,Res,p[i]);
    Res = temp2/Base;
    cout << "Rem" << Rem << endl << endl;
  }

  cout << "p^0:" << temp2/Base << endl;
}

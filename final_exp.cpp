#include "final_exp.h"
#include "fp6.h"
#include <ELiPS/define.h>
#include <cstdio>

void final_exp(fp6_t *ANS,fp6_t *A){
  static fp6_t tmp1_fp6, tmp2_fp6,tmp3_fp6,tmp4_fp6,tmp5_fp6,tmp6_fp6,tmp7_fp6,tmp8_fp6,tmp9_fp6,tmp10_fp6,tmp11_fp6,tmp12_fp6;

  fp6_inv(&tmp1_fp6,A);
  fp6_frobenius_map_p3(ANS,A);//(p^3)
  fp6_mul(ANS,ANS,&tmp1_fp6);//(p^3-1)

  fp6_frobenius_map_p1(&tmp1_fp6,ANS);//(p^3-1)(p)
  fp6_mul(ANS,ANS,&tmp1_fp6);                //(p^3-1)(p+1) = M

  //Second part
//L1
  fp6_inv(&tmp2_fp6,ANS);                     //M^-1                                       //I
  fp6_sqr(&tmp3_fp6,&tmp2_fp6);               //M^-2                                       //S
  fp6_pow(&tmp4_fp6,ANS,X_z);                 //M^x                                        //128
  fp6_mul(&tmp5_fp6,&tmp4_fp6,&tmp3_fp6);     //M^(x-2) = -t0/x                            //M
  fp6_inv(&tmp6_fp6,&tmp5_fp6);               //M^(-x+2) = t0/x                            //I
  fp6_pow(&tmp7_fp6,&tmp5_fp6,X_z);           //M^(x^2-2x) = -t0                           //128

  fp6_mul(&tmp8_fp6,&tmp6_fp6,&tmp7_fp6);     //M^(x^2-3x+2) = M^(-t0+t0/x) //reuse        //M
  fp6_mul(&tmp8_fp6,&tmp8_fp6,ANS);           //M^(x^2-3x+3) = M^(-t0+t0/x+1)              //M
  fp6_pow(&tmp8_fp6,&tmp8_fp6,three);         //M^3(x^2-3x+3)  //left                      //3 = 1M + 1S

  fp6_frobenius_map_p1(&tmp9_fp6,ANS);        //M^p                                        //p
  fp6_inv(&tmp12_fp6,&tmp7_fp6);              //M^t0                                       //I
  fp6_mul(&tmp9_fp6,&tmp9_fp6,&tmp12_fp6);    //M^*(p+t0)                                  //M
  fp6_mul(&tmp9_fp6,&tmp9_fp6,&tmp3_fp6);     //M^*(p+t0-2) = M' right L1                  //M

//L2
  fp6_pow(&tmp5_fp6, &tmp9_fp6,hp_3w);       //M'^3w                                       //80
  fp6_mul(&tmp6_fp6,&tmp5_fp6,&tmp9_fp6);    //M'(3w+1)                                    //M
  fp6_pow(&tmp7_fp6, &tmp6_fp6,hp_3w);       //M'^9w^2 +3w                                 //80
  
  //paper version
  // fp6_mul(&tmp12_fp6,&tmp7_fp6,&tmp10_fp6);  //M'^(9w^2-3w)
  // fp6_mul(&tmp11_fp6,&tmp12_fp6,&tmp9_fp6);  //M'^(9w^2-3w+1)

  // fp6_pow(&tmp11_fp6,&tmp11_fp6,X_1);        //M'^(9w^2-3w+1)(x-1)                        //128
  // fp6_mul(&tmp11_fp6,&tmp11_fp6,&tmp12_fp6); //M'^(9w^2-3w+1)(x-1)+9w^2-3w 
  // fp6_mul(&tmp11_fp6,&tmp11_fp6,&tmp10_fp6); //M'^(9w^2-3w+1)(x-1)+9w^2-6w 

  // fp6_pow(&tmp11_fp6,&tmp11_fp6,X_1);        //M'^((9w^2-3w+1)(x-1)+9w^2-6w)(x-1)         //128
  // fp6_mul(&tmp11_fp6,&tmp11_fp6,&tmp12_fp6); //M'^((9w^2-3w+1)(x-1)+9w^2-6w)(x-1)+9w^2-3w 
  // fp6_mul(&tmp11_fp6,&tmp11_fp6,&tmp10_fp6); //M'^((9w^2-3w+1)(x-1)+9w^2-6w)(x-1)+9w^2-6w 
  // fp6_mul(&tmp11_fp6,&tmp11_fp6,&tmp10_fp6); //M'^((9w^2-3w+1)(x-1)+9w^2-6w)(x-1)+9w^2-9w   //right L2

  //my version
  fp6_mul(&tmp11_fp6,&tmp7_fp6,&tmp9_fp6);   //M'^(9w^2+3w+1)                                //M

  fp6_pow(&tmp11_fp6,&tmp11_fp6,X_1);        //M'^(9w^2+3w+1)(x-1)                           //128
  fp6_mul(&tmp11_fp6,&tmp11_fp6,&tmp7_fp6);  //M'^(9w^2+3w+1)(x-1)+(9w^2+3w)                 //M
  fp6_mul(&tmp11_fp6,&tmp11_fp6,&tmp5_fp6);  //M'^(9w^2+3w+1)(x-1)+(9w^2+6w)                 //M

  fp6_pow(&tmp11_fp6,&tmp11_fp6,X_1);        //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1)            //128
  fp6_mul(&tmp11_fp6,&tmp11_fp6,&tmp7_fp6);  //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1) +(9w^2+3w) //M

  fp6_sqr(&tmp12_fp6,&tmp6_fp6);             //M'2*(3w+1) = M'^6w+2                          //S
  fp6_mul(&tmp12_fp6,&tmp12_fp6,&tmp9_fp6);  //M'^(6w+3)                                     //M
  fp6_mul(&tmp11_fp6,&tmp11_fp6,&tmp12_fp6);  //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1) +(9w^2+3w) + (6w+3) //M

  fp6_mul(ANS,&tmp8_fp6,&tmp11_fp6);         //left * right = M^(3(-t0-x+3) + (p+t0-2)((9w^2+3w+1)(x-1)+9w^2+6w)(x-1)+9w^2+9w + 3) //M
}

#include "final_exp.h"
#include "fp6.h"
#include <cstdio>

void final_exp(fp6_t *ANS,fp6_t *A){
  static fp6_t tmp1_fp6, tmp2_fp6,tmp3_fp6,tmp4_fp6,tmp5_fp6,tmp6_fp6,tmp7_fp6,tmp8_fp6,tmp9_fp6,tmp10_fp6,tmp11_fp6,tmp12_fp6;

  fp6_inv(&tmp1_fp6,A);
  fp6_frobenius_map_p3(ANS,A);//(p^3)
  fp6_mul(ANS,ANS,&tmp1_fp6);//(p^3-1)

  fp6_frobenius_map_p1(&tmp1_fp6,ANS);//(p^3-1)(p)
  fp6_mul(ANS,ANS,&tmp1_fp6);         //(p^3-1)(p+1) = M
  //Second part
//L1
  fp6_frobenius_map_p3(&tmp2_fp6,ANS);                     //M^-1                                       //I
  fp6_sqr_GS(&tmp3_fp6,&tmp2_fp6);               //M^-2                                       //S
  
  //M^x                                        //128
  fp6_finalexpow_x_2NAF(&tmp4_fp6, ANS);

  fp6_mul(&tmp5_fp6,&tmp4_fp6,&tmp3_fp6);     //M^(x-2) = -t0/x                            //M
  fp6_frobenius_map_p3(&tmp6_fp6,&tmp5_fp6);               //M^(-x+2) = t0/x                            //I
  
  //M^(x^2-2x) = -t0                           //128
  fp6_finalexpow_x_2NAF(&tmp7_fp6, &tmp5_fp6);

  fp6_mul(&tmp8_fp6,&tmp6_fp6,&tmp7_fp6);     //M^(x^2-3x+2) = M^(-t0+t0/x) //reuse        //M
  fp6_mul(&tmp8_fp6,&tmp8_fp6,ANS);           //M^(x^2-3x+3) = M^(-t0+t0/x+1)              //M
  fp6_sqr_GS(&tmp9_fp6,&tmp8_fp6);
  fp6_mul(&tmp8_fp6,&tmp9_fp6,&tmp8_fp6);

  fp6_frobenius_map_p1(&tmp9_fp6,ANS);        //M^p                                        //p
  fp6_frobenius_map_p3(&tmp12_fp6,&tmp7_fp6);              //M^t0                                       //I
  fp6_mul(&tmp9_fp6,&tmp9_fp6,&tmp12_fp6);    //M^*(p+t0)                                  //M
  fp6_mul(&tmp9_fp6,&tmp9_fp6,&tmp3_fp6);     //M^*(p+t0-2) = M' right L1                  //M

//L2
  //M'^3w                                       //80
  fp6_finalexpow_3w_2NAF(&tmp5_fp6, &tmp9_fp6);

  fp6_mul(&tmp6_fp6,&tmp5_fp6,&tmp9_fp6);    //M'(3w+1)                                    //M
  
  //M'^9w^2 +3w                                 //80
  fp6_finalexpow_3w_2NAF(&tmp7_fp6, &tmp6_fp6);

  fp6_mul(&tmp11_fp6,&tmp7_fp6,&tmp9_fp6);   //M'^(9w^2+3w+1)                                //M

  //M'^(9w^2+3w+1)(x-1)                           //128
  fp6_finalexpow_x_1_2NAF(&tmp11_fp6, &tmp11_fp6);

  fp6_mul(&tmp11_fp6,&tmp11_fp6,&tmp7_fp6);  //M'^(9w^2+3w+1)(x-1)+(9w^2+3w)                 //M
  fp6_mul(&tmp11_fp6,&tmp11_fp6,&tmp5_fp6);  //M'^(9w^2+3w+1)(x-1)+(9w^2+6w)                 //M

  //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1)            //128
  fp6_finalexpow_x_1_2NAF(&tmp11_fp6, &tmp11_fp6);

  fp6_mul(&tmp11_fp6,&tmp11_fp6,&tmp7_fp6);  //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1) +(9w^2+3w) //M

  fp6_sqr_GS(&tmp12_fp6,&tmp6_fp6);             //M'2*(3w+1) = M'^6w+2                          //S
  fp6_mul(&tmp12_fp6,&tmp12_fp6,&tmp9_fp6);  //M'^(6w+3)                                     //M
  fp6_mul(&tmp11_fp6,&tmp11_fp6,&tmp12_fp6);  //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1) +(9w^2+3w) + (6w+3) //M

  fp6_mul(ANS,&tmp8_fp6,&tmp11_fp6);         //left * right = M^(3(-t0-x+3) + (p+t0-2)((9w^2+3w+1)(x-1)+9w^2+6w)(x-1)+9w^2+9w + 3) //M
}

void final_exp_lazy_montgomery2(fp6_t *ANS,fp6_t *A){
  static fp6_t tmp1_fp6, tmp2_fp6,tmp3_fp6,tmp4_fp6,tmp5_fp6,tmp6_fp6,tmp7_fp6,tmp8_fp6,tmp9_fp6,tmp10_fp6,tmp11_fp6,tmp12_fp6;

  fp6_inv_lazy_montgomery(&tmp1_fp6,A);
  fp6_frobenius_map_p3_montgomery(ANS,A);//(p^3)
  fp6_mul_lazy_montgomery(ANS,ANS,&tmp1_fp6);//(p^3-1)

  fp6_frobenius_map_p1_montgomery(&tmp1_fp6,ANS);//(p^3-1)(p)
  fp6_mul_lazy_montgomery(ANS,ANS,&tmp1_fp6);         //(p^3-1)(p+1) = M
  //Second part
//L1
  fp6_frobenius_map_p3_montgomery(&tmp2_fp6,ANS);                     //M^-1                                       //I
  fp6_sqr_GS_lazy_montgomery(&tmp3_fp6,&tmp2_fp6);               //M^-2                                       //S
  //M^x                 //128

  fp6_finalexpow_x_2NAF_lazy_montgomery(&tmp4_fp6, ANS);

  fp6_mul_lazy_montgomery(&tmp5_fp6,&tmp4_fp6,&tmp3_fp6);     //M^(x-2) = -t0/x                            //M
  fp6_frobenius_map_p3_montgomery(&tmp6_fp6,&tmp5_fp6);               //M^(-x+2) = t0/x                            //I

  //M^(x^2-2x) = -t0                           //128
  fp6_finalexpow_x_2NAF_lazy_montgomery(&tmp7_fp6, &tmp5_fp6);

  fp6_mul_lazy_montgomery(&tmp8_fp6,&tmp6_fp6,&tmp7_fp6);     //M^(x^2-3x+2) = M^(-t0+t0/x) //reuse        //M
  fp6_mul_lazy_montgomery(&tmp8_fp6,&tmp8_fp6,ANS);           //M^(x^2-3x+3) = M^(-t0+t0/x+1)              //M
  fp6_sqr_GS_lazy_montgomery(&tmp9_fp6,&tmp8_fp6);
  fp6_mul_lazy_montgomery(&tmp8_fp6,&tmp9_fp6,&tmp8_fp6);

  fp6_frobenius_map_p1_montgomery(&tmp9_fp6,ANS);        //M^p                                        //p
  fp6_frobenius_map_p3_montgomery(&tmp12_fp6,&tmp7_fp6);              //M^t0                                       //I
  fp6_mul_lazy_montgomery(&tmp9_fp6,&tmp9_fp6,&tmp12_fp6);    //M^*(p+t0)                                  //M
  fp6_mul_lazy_montgomery(&tmp9_fp6,&tmp9_fp6,&tmp3_fp6);     //M^*(p+t0-2) = M' right L1                  //M

//L2
  //M'^3w                                       //80
  fp6_finalexpow_3w_2NAF_lazy_montgomery(&tmp5_fp6, &tmp9_fp6);

  fp6_mul_lazy_montgomery(&tmp6_fp6,&tmp5_fp6,&tmp9_fp6);    //M'(3w+1)                                    //M
  
  //M'^9w^2 +3w                                 //80
  fp6_finalexpow_3w_2NAF_lazy_montgomery(&tmp7_fp6, &tmp6_fp6);

  fp6_mul_lazy_montgomery(&tmp11_fp6,&tmp7_fp6,&tmp9_fp6);   //M'^(9w^2+3w+1)                                //M

  //M'^(9w^2+3w+1)(x-1)                           //128
  fp6_finalexpow_x_1_2NAF_lazy_montgomery(&tmp11_fp6, &tmp11_fp6);

  fp6_mul_lazy_montgomery(&tmp11_fp6,&tmp11_fp6,&tmp7_fp6);  //M'^(9w^2+3w+1)(x-1)+(9w^2+3w)                 //M
  fp6_mul_lazy_montgomery(&tmp11_fp6,&tmp11_fp6,&tmp5_fp6);  //M'^(9w^2+3w+1)(x-1)+(9w^2+6w)                 //M

  //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1)            //128
  fp6_finalexpow_x_1_2NAF_lazy_montgomery(&tmp11_fp6, &tmp11_fp6);

  fp6_mul_lazy_montgomery(&tmp11_fp6,&tmp11_fp6,&tmp7_fp6);  //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1) +(9w^2+3w) //M
 
  fp6_sqr_GS_lazy_montgomery(&tmp12_fp6,&tmp6_fp6);             //M'2*(3w+1) = M'^6w+2                          //S
  fp6_mul_lazy_montgomery(&tmp12_fp6,&tmp12_fp6,&tmp9_fp6);  //M'^(6w+3)                                     //M
  fp6_mul_lazy_montgomery(&tmp11_fp6,&tmp11_fp6,&tmp12_fp6);  //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1) +(9w^2+3w) + (6w+3) //M

  fp6_mul_lazy_montgomery(ANS,&tmp8_fp6,&tmp11_fp6);         //left * right = M^(3(-t0-x+3) + (p+t0-2)((9w^2+3w+1)(x-1)+9w^2+6w)(x-1)+9w^2+9w + 3) //M
}

void final_exp_lazy_montgomery(fp6_t *ANS,fp6_t *A){
  static fp6_t tmp1_fp6, tmp2_fp6,tmp3_fp6,tmp4_fp6,tmp5_fp6,tmp6_fp6,tmp7_fp6,tmp8_fp6,tmp9_fp6,tmp10_fp6,tmp11_fp6,tmp12_fp6;

  fp6_inv_lazy_montgomery(&tmp1_fp6,A);
  fp6_frobenius_map_p3_montgomery(ANS,A);//(p^3)
  fp6_mul_lazy_montgomery(ANS,ANS,&tmp1_fp6);//(p^3-1)

  fp6_frobenius_map_p1_montgomery(&tmp1_fp6,ANS);//(p^3-1)(p)
  fp6_mul_lazy_montgomery(ANS,ANS,&tmp1_fp6);         //(p^3-1)(p+1) = M
  fp6_sqr_lazy_montgomery(&tmp12_fp6, ANS);
  //Second part
//L1
  fp6_frobenius_map_p3_montgomery(&tmp2_fp6,ANS);           //M^-1                                       //I
  fp6_frobenius_map_p1_montgomery(&tmp3_fp6, ANS);          //M^p
  fp6_finalexpow_x_2NAF_lazy_montgomery(&tmp4_fp6, ANS);    //M^x
  fp6_mul_lazy_montgomery(&tmp9_fp6, &tmp2_fp6, &tmp3_fp6); // M^(p-1)
  fp6_mul_lazy_montgomery(&tmp9_fp6, &tmp9_fp6, &tmp4_fp6); // M^(p-1+x) = M'

//L2
  //M'^3w                                       //80
  fp6_finalexpow_3w_2NAF_lazy_montgomery(&tmp5_fp6, &tmp9_fp6);

  fp6_mul_lazy_montgomery(&tmp6_fp6,&tmp5_fp6,&tmp9_fp6);    //M'(3w+1)                                    //M
  
  //M'^9w^2 +3w                                 //80
  fp6_finalexpow_3w_2NAF_lazy_montgomery(&tmp7_fp6, &tmp6_fp6);

  fp6_mul_lazy_montgomery(&tmp11_fp6,&tmp7_fp6,&tmp9_fp6);   //M'^(9w^2+3w+1)                                //M

  //M'^(9w^2+3w+1)(x-1)                           //128
  fp6_finalexpow_x_1_2NAF_lazy_montgomery(&tmp11_fp6, &tmp11_fp6);

  fp6_mul_lazy_montgomery(&tmp11_fp6,&tmp11_fp6,&tmp7_fp6);  //M'^(9w^2+3w+1)(x-1)+(9w^2+3w)                 //M
  fp6_mul_lazy_montgomery(&tmp11_fp6,&tmp11_fp6,&tmp5_fp6);  //M'^(9w^2+3w+1)(x-1)+(9w^2+6w)                 //M

  //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1)            //128
  fp6_finalexpow_x_1_2NAF_lazy_montgomery(&tmp11_fp6, &tmp11_fp6);

  fp6_mul_lazy_montgomery(&tmp11_fp6,&tmp11_fp6,&tmp7_fp6);  //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1) +(9w^2+3w) //M
  fp6_mul_lazy_montgomery(&tmp11_fp6,&tmp11_fp6,&tmp5_fp6);  //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1) +(9w^2+6w) //M
  fp6_mul_lazy_montgomery(&tmp11_fp6,&tmp11_fp6,&tmp5_fp6);  //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1) +(9w^2+9w) //M

  fp6_mul_lazy_montgomery(ANS,ANS,&tmp11_fp6);         //left * right = M^(1 + (p-1+x)((9w^2+3w+1)(x-1)+9w^2+6w)(x-1)+9w^2+9w ) //M
  fp6_mul_lazy_montgomery(ANS,ANS,&tmp12_fp6);         //left * right = M^(3 + (p-1+x)((9w^2+3w+1)(x-1)+9w^2+6w)(x-1)+9w^2+9w ) //M
}
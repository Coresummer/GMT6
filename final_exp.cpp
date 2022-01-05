#include "final_exp.h"
#include "fp6.h"
#include <cstdio>

void final_exp(fp6_t *ANS,fp6_t *A){
  static fp6_t tmp1_fp6,tmp2_fp6,tmp3_fp6,tmp4_fp6,tmp5_fp6,tmp6_fp6,tmp7_fp6;

  fp6_inv(&tmp1_fp6,A);          //-1
  fp6_frobenius_map_p3(ANS,A);        //(p^3)
  fp6_mul(ANS,ANS,&tmp1_fp6);    //(p^3-1)
//If sqr needed Use FP6_GS_SQR from here
  fp6_frobenius_map_p1(&tmp1_fp6,ANS);//(p^3-1)(p)
  fp6_mul(ANS,ANS,&tmp1_fp6);    //(p^3-1)(p+1) = M
  
  fp6_sqr_GS(&tmp2_fp6, ANS);      //M^2   
  //Hard part
//L1
  fp6_frobenius_map_p3(&tmp3_fp6,ANS);           //M^-1                                       //I
  fp6_frobenius_map_p1(&tmp4_fp6, ANS);          //M^p
  fp6_finalexpow_x_2NAF(&tmp5_fp6, ANS);    //M^x
  fp6_mul(&tmp3_fp6, &tmp3_fp6, &tmp4_fp6); // M^(p-1)
  fp6_mul(&tmp3_fp6, &tmp3_fp6, &tmp5_fp6); // M^(p-1+x) = M'
//L2
  //M'^3w //80
  fp6_finalexpow_w_2NAF(&tmp5_fp6, &tmp3_fp6);   //M'(w)
  fp6_sqr_GS(&tmp4_fp6,&tmp5_fp6);  //M'(2w)
  fp6_mul(&tmp4_fp6,&tmp4_fp6,&tmp5_fp6);  //M'(3w)

  fp6_mul(&tmp6_fp6,&tmp4_fp6,&tmp3_fp6);         //M'(3w+1)                                    //M
  
  //80
  fp6_finalexpow_w_2NAF(&tmp7_fp6, &tmp6_fp6);   //M'^3w^2 +w
  fp6_sqr_GS(&tmp1_fp6,&tmp7_fp6);  //M'^6w^2 +2w
  fp6_mul(&tmp1_fp6,&tmp1_fp6,&tmp7_fp6);  //M'^9w^2 +3w

  fp6_mul(&tmp5_fp6,&tmp1_fp6,&tmp3_fp6);        //M'^(9w^2+3w+1)                                //M
  //128
  fp6_finalexpow_x_1_2NAF(&tmp5_fp6, &tmp5_fp6);//M'^(9w^2+3w+1)(x-1)

  fp6_mul(&tmp6_fp6, &tmp1_fp6, &tmp4_fp6);       //M'^9w^2 +3w+ 3w = M'^(9w^2+6w)
  fp6_mul(&tmp5_fp6,&tmp5_fp6,&tmp6_fp6);       //M'^(9w^2+3w+1)(x-1)+(9w^2+6w)                 //M

  //128
  fp6_finalexpow_x_1_2NAF(&tmp5_fp6, &tmp5_fp6);//M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1)

  fp6_mul(&tmp5_fp6,&tmp5_fp6,&tmp6_fp6);       //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1) +(9w^2+6w) //M
  fp6_mul(&tmp5_fp6,&tmp5_fp6,&tmp4_fp6);       //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1) +(9w^2+9w) //M

  fp6_mul(ANS,ANS,&tmp5_fp6);                    //M^(1 + (p-1+x)((9w^2+3w+1)(x-1)+9w^2+6w)(x-1)+9w^2+9w ) //M
  fp6_mul(ANS,ANS,&tmp2_fp6);                    //M^(3 + (p-1+x)((9w^2+3w+1)(x-1)+9w^2+6w)(x-1)+9w^2+9w ) //M

}

void final_exp_lazy_montgomery(fp6_t *ANS,fp6_t *A){
  static fp6_t tmp1_fp6,tmp2_fp6,tmp3_fp6,tmp4_fp6,tmp5_fp6,tmp6_fp6,tmp7_fp6;

  fp6_inv_lazy_montgomery(&tmp1_fp6,A);          //-1
  fp6_frobenius_map_p3_montgomery(ANS,A);        //(p^3)
  fp6_mul_lazy_montgomery(ANS,ANS,&tmp1_fp6);    //(p^3-1)
//If sqr needed Use FP6_GS_SQR from here
  fp6_frobenius_map_p1_montgomery(&tmp1_fp6,ANS);//(p^3-1)(p)
  fp6_mul_lazy_montgomery(ANS,ANS,&tmp1_fp6);    //(p^3-1)(p+1) = M
  fp6_sqr_GS_lazy_montgomery(&tmp2_fp6, ANS);      //M^2   
  //Hard part
//L1
  fp6_frobenius_map_p3_montgomery(&tmp3_fp6,ANS);           //M^-1                                       //I
  fp6_frobenius_map_p1_montgomery(&tmp4_fp6, ANS);          //M^p
  fp6_finalexpow_x_2NAF_lazy_montgomery(&tmp5_fp6, ANS);    //M^x
  fp6_mul_lazy_montgomery(&tmp3_fp6, &tmp3_fp6, &tmp4_fp6); // M^(p-1)
  fp6_mul_lazy_montgomery(&tmp3_fp6, &tmp3_fp6, &tmp5_fp6); // M^(p-1+x) = M'
//L2
  //M'^3w //80
  // fp6_finalexpow_3w_2NAF_lazy_montgomery(&tmp4_fp6, &tmp3_fp6);   //M'(3w)
  fp6_finalexpow_w_2NAF_lazy_montgomery(&tmp5_fp6, &tmp3_fp6);   //M'(w)
  fp6_sqr_GS_lazy_montgomery(&tmp4_fp6,&tmp5_fp6);  //M'(2w)
  fp6_mul_lazy_montgomery(&tmp4_fp6,&tmp4_fp6,&tmp5_fp6);  //M'(3w)

  fp6_mul_lazy_montgomery(&tmp6_fp6,&tmp4_fp6,&tmp3_fp6);         //M'(3w+1)                                    //M
  
  //80
  // fp6_finalexpow_3w_2NAF_lazy_montgomery(&tmp1_fp6, &tmp6_fp6);   //M'^9w^2 +3w
  fp6_finalexpow_w_2NAF_lazy_montgomery(&tmp7_fp6, &tmp6_fp6);   //M'^3w^2 +w
  fp6_sqr_GS_lazy_montgomery(&tmp1_fp6,&tmp7_fp6);  //M'^6w^2 +2w
  fp6_mul_lazy_montgomery(&tmp1_fp6,&tmp1_fp6,&tmp7_fp6);  //M'^9w^2 +3w

  fp6_mul_lazy_montgomery(&tmp5_fp6,&tmp1_fp6,&tmp3_fp6);        //M'^(9w^2+3w+1)                                //M
  //128
  fp6_finalexpow_x_1_2NAF_lazy_montgomery(&tmp5_fp6, &tmp5_fp6);//M'^(9w^2+3w+1)(x-1)

  fp6_mul_lazy_montgomery(&tmp6_fp6, &tmp1_fp6, &tmp4_fp6);       //(9w^2+6w)  
  fp6_mul_lazy_montgomery(&tmp5_fp6,&tmp5_fp6,&tmp6_fp6);       //M'^(9w^2+3w+1)(x-1)+(9w^2+6w)                 //M

  //128
  fp6_finalexpow_x_1_2NAF_lazy_montgomery(&tmp5_fp6, &tmp5_fp6);//M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1)

  fp6_mul_lazy_montgomery(&tmp5_fp6,&tmp5_fp6,&tmp6_fp6);       //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1) +(9w^2+6w) //M
  fp6_mul_lazy_montgomery(&tmp5_fp6,&tmp5_fp6,&tmp4_fp6);       //M'^((9w^2+3w+1)(x-1)+9w^2+6w)(x-1) +(9w^2+9w) //M

  fp6_mul_lazy_montgomery(ANS,ANS,&tmp5_fp6);                    //M^(1 + (p-1+x)((9w^2+3w+1)(x-1)+9w^2+6w)(x-1)+9w^2+9w ) //M
  fp6_mul_lazy_montgomery(ANS,ANS,&tmp2_fp6);                    //M^(3 + (p-1+x)((9w^2+3w+1)(x-1)+9w^2+6w)(x-1)+9w^2+9w ) //M
}
#include "final_exp.h"

void final_exp(fp10_t *ANS,fp10_t *A){
  fp10_t tmp0,tmp1,tmp2,tmp3,tmp4;
  fp10_t tmp_p0,tmp_p1,tmp_p2,tmp_p3;

  //f^(p^5 -1)の部分
  fp10_frobenius_map_p5(&tmp0,A);
  fp10_inv(&tmp1,A);
  fp10_mul(&tmp0,&tmp0,&tmp1);
  //f^(p +1)の部分
  fp10_set(&tmp1,&tmp0);
  fp10_frobenius_map_p1(&tmp0,&tmp0);
  fp10_mul(&tmp0,&tmp0,&tmp1);

  //f^(p^4 -p^3 +p^2 -p +1)/r の部分
  fp10_pow(&tmp1,&tmp0,X_1_div2);
  fp10_pow(&tmp1,&tmp1,X_1_div2);
  fp10_pow(&tmp1,&tmp1,X_1);
  fp10_pow(&tmp1,&tmp1,X_1);
  fp10_set(&tmp2,&tmp1);
  fp10_pow(&tmp1,&tmp1,X_z);
  fp10_pow(&tmp1,&tmp1,X_z);
  fp10_mul(&tmp1,&tmp1,&tmp2);
  #if 1//ゴミを何もかけないとき
  fp10_set(&tmp_p3,&tmp1);
  fp10_inv(&tmp2,&tmp1);
  fp10_pow(&tmp3,&tmp1,X_z);
  fp10_pow(&tmp3,&tmp3,X_z);
  fp10_mul(&tmp3,&tmp3,&tmp2);
  fp10_set(&tmp_p2,&tmp3);
  fp10_pow(&tmp3,&tmp3,X_z);
  fp10_pow(&tmp3,&tmp3,X_z);
  fp10_mul(&tmp3,&tmp3,&tmp1);
  fp10_set(&tmp_p1,&tmp3);
  fp10_pow(&tmp3,&tmp3,X_z);
  fp10_pow(&tmp3,&tmp3,X_z);
  fp10_mul(&tmp3,&tmp3,&tmp2);
  fp10_mul(&tmp_p0,&tmp0,&tmp3);
  #else//x^2 をかけるとき
  fp10_inv(&tmp2,&tmp1);
  fp10_set(&tmp_p0,&tmp2);
  fp10_pow(&tmp3,&tmp1,X_z);
  fp10_pow(&tmp3,&tmp3,X_z);
  fp10_set(&tmp_p3,&tmp3);
  fp10_mul(&tmp3,&tmp3,&tmp2);
  fp10_pow(&tmp3,&tmp3,X_z);
  fp10_pow(&tmp3,&tmp3,X_z);
  fp10_set(&tmp_p2,&tmp3);
  fp10_mul(&tmp3,&tmp3,&tmp1);
  fp10_pow(&tmp3,&tmp3,X_z);
  fp10_pow(&tmp3,&tmp3,X_z);
  fp10_mul(&tmp_p1,&tmp0,&tmp3);
  #endif

  fp10_frobenius_map_p3(&tmp_p3,&tmp_p3);
  fp10_frobenius_map_p2(&tmp_p2,&tmp_p2);
  fp10_frobenius_map_p1(&tmp_p1,&tmp_p1);
  fp10_mul(ANS,&tmp_p0,&tmp_p1);
  fp10_mul(ANS,ANS,&tmp_p2);
  fp10_mul(ANS,ANS,&tmp_p3);
}

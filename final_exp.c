#include "final_exp.h"

void final_exp(fp6_t *ANS,fp6_t *A){
  static fp6_t tmp1_fp6;

  fp6_inv(&tmp1_fp6,A);
  fp6_frobenius_map_p3(ANS,A);//(p^3)
  fp6_mul(ANS,ANS,&tmp1_fp6);//(p^3-1)

  fp6_frobenius_map_p1(&tmp1_fp6,ANS);//(p^3-1)(p)
  fp6_mul(ANS,ANS,&tmp1_fp6);//(p^3-1)(p+1)

  fp6_pow(ANS,ANS,hardpart);//(p^3-1)(p+1)(p^2-p+1)/r

  // fp6_pow(ANS,A,fp6_total_r);
}

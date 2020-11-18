#include "final_exp.h"

void final_exp(fp14_t *ANS,fp14_t *A){
  static fp14_t tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6;
  static fp14_t tmp_p0,tmp_p1,tmp_p2,tmp_p3,tmp_p4,tmp_p5;

  //f^(p^7 -1)の部分
  fp14_frobenius_map_p3(&tmp0,A);
  fp14_frobenius_map_p4(&tmp0,&tmp0);
  fp14_inv(&tmp1,A);
  fp14_mul(&tmp0,&tmp0,&tmp1);
  //f^(p +1)の部分
  fp14_set(&tmp1,&tmp0);
  fp14_frobenius_map_p1(&tmp0,&tmp0);
  fp14_mul(&tmp6,&tmp0,&tmp1);

#ifdef OriginalExp
  //(f^(p^7 -1))^(p+1) = R = tmp6
  //Rambda5
  fp14_pow(&tmp_p5,&tmp6,X_1_div2);//Rambda5 = R^(x^6 - x^4 - x^2 + 1)
  fp14_inv(&tmp5,&tmp_p5); //tmp5 = Rambda5^-1
  //Rambda4
  fp14_pow(&tmp_p4,&tmp_p5,X_2_1); //Rambda4 = Rmabda5(x^2-1)
  //Rmabda3
  fp14_pow(&tmp_p3,&tmp_p4,X_2);   //Rambda3 = Rmabda4^x^2
  fp14_mul(&tmp_p3,&tmp_p3,&tmp_p5);//Rambda3 = Rmabda4^x^2 + Rambda5
  //R^Rambda2
  fp14_pow(&tmp_p2,&tmp_p3,X_2);   //Rambda2 = Rmabda3^x^2
  fp14_mul(&tmp_p2,&tmp_p2,&tmp5);//Rambda2 = Rmabda3^x^2 - Rambda5
  //R^Rambda1
  fp14_pow(&tmp_p1,&tmp_p2,X_2);   //Rambda1 = Rmabda2^x^2
  fp14_mul(&tmp_p1,&tmp_p1,&tmp_p5);//Rambda1 = Rmabda2^x^2 + Rambda5
  //R^Rambda0
  fp14_pow(&tmp_p0,&tmp_p1,X_2);   //Rambda0 = Rmabda1^x^2
  fp14_mul(&tmp_p0,&tmp_p0,&tmp5);//Rambda0 = Rmabda1^x^2 - Rambda5
  fp14_pow(&tmp2,&tmp6,four);
  fp14_mul(&tmp_p0,&tmp_p0,&tmp2);//Rambda0 = Rmabda1^x^2 - Rambda5 + 4

#endif

#ifdef LoubnaExp
  //(f^(p^7 -1))^(p+1) = R = tmp6
  //Rambda5
  fp14_pow(&tmp5,&tmp6,X_2_1);//Rambda5.1 = R^(x^ + 1)^2
  fp14_pow(&tmp4,&tmp5,X_2);  //Rambda5.0 = R^(((x^ + 1)^2)*x^2))
  fp14_mul(&tmp_p5,&tmp5,&tmp4); //Rambda5 = Rambda5.1 * Rambda5.0
  fp14_inv(&tmp3,&tmp5); //tmp3 = Rambda5.1^-1

  //Rambda4
  fp14_pow(&tmp2,&tmp4,X_2);  //Rambda4 = Rambda5.0*x^2 - Rambda5.1 =Rambda4.0 - Rambda5.1
  fp14_mul(&tmp_p4,&tmp2,&tmp3);

  //Rmabda3
  fp14_pow(&tmp2,&tmp2,X_2);   //Rambda3.0 = Rmabda4.0^x^2
  fp14_mul(&tmp_p3,&tmp2,&tmp5);//Rambda3 = Rmabda4.0^x^2 + Rambda5.1
  //R^Rambda2
  fp14_pow(&tmp2,&tmp2,X_2);   //Rambda2.0 = Rmabda3.0^x^2
  fp14_mul(&tmp_p2,&tmp2,&tmp3);//Rambda2 = Rmabda3.0^x^2 + Rambda5.1
  //R^Rambda1
  fp14_pow(&tmp2,&tmp2,X_2);   //Rambda1.0 = Rmabda2.0^x^2
  fp14_mul(&tmp_p1,&tmp2,&tmp5);//Rambda1 = Rmabda2.0^x^2 + Rambda5.1
  //R^Rambda0
  fp14_pow(&tmp2,&tmp2,X_2);   //Rambda0 = Rmabda1.0^x^2
  fp14_mul(&tmp_p0,&tmp2,&tmp3);//Rambda0 = Rmabda1.0^x^2 - Rambda5.1
  fp14_pow(&tmp1,&tmp6,four);
  fp14_inv(&tmp1,&tmp1);
  fp14_mul(&tmp_p0,&tmp_p0,&tmp1);//Rambda0 = Rmabda1^x^2 - Rambda5 + 4

#endif

  fp14_frobenius_map_p5(&tmp_p5,&tmp_p5);
  fp14_frobenius_map_p4(&tmp_p4,&tmp_p4);
  fp14_frobenius_map_p3(&tmp_p3,&tmp_p3);
  fp14_frobenius_map_p2(&tmp_p2,&tmp_p2);
  fp14_frobenius_map_p1(&tmp_p1,&tmp_p1);

  fp14_mul(ANS,&tmp_p0,&tmp_p1);
  fp14_mul(ANS,ANS,&tmp_p2);
  fp14_mul(ANS,ANS,&tmp_p3);
  fp14_mul(ANS,ANS,&tmp_p4);
  fp14_mul(ANS,ANS,&tmp_p5);
}

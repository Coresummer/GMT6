#include "miller.h"
#include "define.h"
#include "efp2.h"
#include "efp6.h"
#include "fp.h"
#include "efp.h"
#include "fp2.h"
#include "fp6.h"
#include "mpn.h"
#include <cstdio>

void efp6_to_Jacefp(efp_jacobian_t *ANS,efp6_t *A){ 
  fp_set(&ANS->x,&A->x.x2.x0);
  fp_set(&ANS->y,&A->y.x0.x1);
  fp_set_ui(&ANS->z, 1);
  ANS->infinity = 0;
}

void efp6_to_efp(efp_t *ANS,efp6_t *A){ 
  fp_set(&ANS->x,&A->x.x2.x0);
  fp_set(&ANS->y,&A->y.x0.x1);
  ANS->infinity = A->infinity;
}

void efp6_to_Jacefp_montgomery(efp_jacobian_t *ANS,efp6_t *A){ 
  fp_to_montgomery(&ANS->x,&A->x.x2.x0);
  fp_to_montgomery(&ANS->y,&A->y.x0.x1);
  fp_set_ui(&ANS->z, 1);
  fp_to_montgomery(&ANS->z,&ANS->z);
  ANS->infinity = 0;
}

void efp6_to_efp_montgomery(efp_t *ANS,efp6_t *A){ 
  fp_to_montgomery(&ANS->x,&A->x.x2.x0);
  fp_to_montgomery(&ANS->y,&A->y.x0.x1);
  ANS->infinity = A->infinity;
}

//double line //
void ff_lttp(fp6_t *f, efp_jacobian_t *S, efp_t *P){
  fp6_sqr(f,f); //update

  static fp_t tmp1_fp, tmp2_fp,tmp3_fp;
  static fp_t t1,t2,t3;
  static fp_t nextX,nextY,nextZ;

  static fp6_t tmp1_fp6;

  fp_sqr(&t1,&S->y);              //t1 = Y^2
  fp_l1shift(&tmp2_fp,&t1);      //tmp2 = 2*t1

  fp_mul(&t2,&tmp2_fp,&S->x);     //t2 = 2*t1*X
  fp_l1shift(&t2, &t2);          //t2 = 4*t1*X

  fp_sqr(&t3,&S->x);              //t3 = X^2
  fp_l1shift(&tmp1_fp, &t3);
  fp_add(&t3,&t3,&tmp1_fp);

  fp_sqr(&nextX,&t3);             //nextX = t3^2
  fp_l1shift(&tmp1_fp, &t2);     //tmp1 = 2*t2
  fp_sub(&nextX,&nextX,&tmp1_fp); //nextX = t3^2 - 2*t2

  fp_sub(&nextY,&t2,&nextX);      //nextY = t2-nextX
  fp_mul(&nextY,&nextY,&t3);      //nextY = (t2-nextX)t3

  fp_sqr(&tmp1_fp,&tmp2_fp);      //tmp1 = tmp2^2 = 4t1^2
  fp_l1shift(&tmp1_fp,&tmp1_fp); //tmp1 = 8t1^2

  fp_sub(&nextY,&nextY,&tmp1_fp); //nextY = (t2-nextX)t3 - 8t1^2

  fp_l1shift(&nextZ,&S->y);      //nextZ = 2Y
  fp_mul(&nextZ,&nextZ,&S->z);    //nextZ = 2YZ

  fp_sqr(&tmp1_fp,&S->z);         //tmp1 = Z^2
  fp_mul(&tmp1_fp6.x0.x1,&nextZ,&tmp1_fp);           // = nextZ*Z^2
  fp_mul_base_inv(&tmp1_fp6.x0.x1,&tmp1_fp6.x0.x1);  // = nextZ*Z^2*(2^-1)
  fp_mul(&tmp1_fp6.x0.x1,&tmp1_fp6.x0.x1,&P->y);     // = nextZ*Z^2*(2^-1)*Py

  fp_mul(&tmp3_fp,&t3,&S->x);                        //tmp3 = t3*X
  fp_sub(&tmp1_fp6.x0.x0,&tmp3_fp,&tmp2_fp);         // = t3*X - 2*t1

  fp_mul(&tmp1_fp6.x1.x1,&t3,&P->x);                 // = t3*Px
  fp_mul(&tmp1_fp6.x1.x1,&tmp1_fp6.x1.x1,&tmp1_fp);  // = t3*Px*Z^2
  fp_set_neg(&tmp1_fp6.x1.x1,&tmp1_fp6.x1.x1);       // = -t3*Px*Z^2
  fp_mul_base_inv(&tmp1_fp6.x1.x1,&tmp1_fp6.x1.x1);  // = -t3*Px*Z^2*(2^-1)

  fp6_mul_sparse_dbl(f,&tmp1_fp6,f);        //Capable for further Karatsuba //update

  fp_set(&S->x,&nextX);
  fp_set(&S->y,&nextY);
  fp_set(&S->z,&nextZ);
}

//double line //
void ff_lttp_0(fp6_t *f, efp_jacobian_t *S, efp_t *P){

  static fp_t tmp1_fp, tmp2_fp,tmp3_fp;
  static fp_t t1,t2,t3;
  static fp_t nextX,nextY,nextZ;

  fp_sqr(&t1,&S->y);              //t1 = Y^2
  fp_l1shift(&tmp2_fp,&t1);      //tmp2 = 2*t1

  fp_mul(&t2,&tmp2_fp,&S->x);     //t2 = 2*t1*X
  fp_l1shift(&t2, &t2);          //t2 = 4*t1*X

  fp_sqr(&t3,&S->x);              //t3 = X^2
  fp_l1shift(&tmp1_fp, &t3);
  fp_add(&t3,&t3,&tmp1_fp);

  fp_sqr(&nextX,&t3);             //nextX = t3^2
  fp_l1shift(&tmp1_fp, &t2);     //tmp1 = 2*t2
  fp_sub(&nextX,&nextX,&tmp1_fp); //nextX = t3^2 - 2*t2

  fp_sub(&nextY,&t2,&nextX);      //nextY = t2-nextX
  fp_mul(&nextY,&nextY,&t3);      //nextY = (t2-nextX)t3

  fp_sqr(&tmp1_fp,&tmp2_fp);      //tmp1 = tmp2^2 = 4t1^2
  fp_l1shift(&tmp1_fp,&tmp1_fp); //tmp1 = 8t1^2

  fp_sub(&nextY,&nextY,&tmp1_fp); //nextY = (t2-nextX)t3 - 8t1^2

  fp_l1shift(&nextZ,&S->y);      //nextZ = 2Y
  fp_mul(&nextZ,&nextZ,&S->z);    //nextZ = 2YZ

  fp_sqr(&tmp1_fp,&S->z);         //tmp1 = Z^2
  fp_mul(&f->x0.x1,&nextZ,&tmp1_fp);           // = nextZ*Z^2
  fp_mul_base_inv(&f->x0.x1,&f->x0.x1);  // = nextZ*Z^2*(2^-1)
  fp_mul(&f->x0.x1,&f->x0.x1,&P->y);     // = nextZ*Z^2*(2^-1)*Py

  fp_mul(&tmp3_fp,&t3,&S->x);                        //tmp3 = t3*X
  fp_sub(&f->x0.x0,&tmp3_fp,&tmp2_fp);         // = t3*X - 2*t1

  fp_mul(&f->x1.x1,&t3,&P->x);                 // = t3*Px
  fp_mul(&f->x1.x1,&f->x1.x1,&tmp1_fp);  // = t3*Px*Z^2
  fp_set_neg(&f->x1.x1,&f->x1.x1);       // = -t3*Px*Z^2
  fp_mul_base_inv(&f->x1.x1,&f->x1.x1);  // = -t3*Px*Z^2*(2^-1)

  fp_set(&S->x,&nextX);
  fp_set(&S->y,&nextY);
  fp_set(&S->z,&nextZ);
}


//double line //
void ff_lttp_costello(fp6_t *f, efp_jacobian_t *U, efp_t *S){//U = S, S = P
  fp6_sqr(f,f); //update should put into line update

  static fp_t tmpA_fp, tmpB_fp,tmpC_fp,tmpD_fp,tmpE_fp,tmpF_fp,tmpG_fp;
  static fp_t nextX,nextY,nextZ;
  static fp_t tmp1_fp,tmp2_fp;

  static fp6_t tmp1_fp6;//DBLLine result

  fp_sqr(&tmpA_fp,&U->x); //A=X1^2
  fp_sqr(&tmpB_fp,&U->y); //B=Y1^2
  fp_sqr(&tmpC_fp,&U->z); //C=Z1^2

  fp_l1shift(&tmpD_fp, &tmpC_fp);          //D = 2C
  fp_add(&tmpD_fp,&tmpD_fp, &tmpC_fp);     //D = 3C 
  fp_set_neg(&tmpD_fp,&tmpD_fp);           //D = 3bC
  fp_mul(&tmpD_fp,&tmpD_fp, &base_c_inv);  //D = 3bC (b=-1, twisted b= -base_c_inv)

  fp_add(&tmpE_fp,&U->x,&U->y);//X1+Y1
  fp_sqr(&tmpE_fp,&tmpE_fp);   //(X1+Y1)^2
  fp_sub(&tmpE_fp,&tmpE_fp,&tmpA_fp); //E=(X1+Y1)^2-A
  fp_sub(&tmpE_fp,&tmpE_fp,&tmpB_fp); //E=(X1+Y1)^2-B-A

  fp_add(&tmpF_fp,&U->z,&U->y);//F=Z1+Y1
  fp_sqr(&tmpF_fp,&tmpF_fp);   //F=(Z1+Y1)^2
  fp_sub(&tmpF_fp,&tmpF_fp,&tmpC_fp); //F=(Z1+Y1)^2-B 
  fp_sub(&tmpF_fp,&tmpF_fp,&tmpB_fp); //F=(Z1+Y1)^2-B-C

  fp_l1shift(&tmpG_fp, &tmpD_fp);
  fp_add(&tmpG_fp,&tmpG_fp,&tmpD_fp); //G= 3D

  fp_sub(&nextX,&tmpB_fp,&tmpG_fp);
  fp_mul(&nextX,&nextX,&tmpE_fp);   //X3 = E*(B-G)

  fp_add(&nextY,&tmpB_fp,&tmpG_fp); //Y3 = (B+G)
  fp_sqr(&nextY,&nextY);            //Y3 = (B+G)^2
  fp_sqr(&tmp1_fp,&tmpD_fp);        //D^2
  fp_l1shift(&tmp1_fp,&tmp1_fp);    //2D^2
  fp_l1shift(&tmp2_fp,&tmp1_fp);    //4D^2
  fp_l1shift(&tmp1_fp,&tmp2_fp);    //8D^2
  fp_add(&tmp1_fp,&tmp1_fp,&tmp2_fp);//12D^2  
  fp_sub(&nextY,&nextY,&tmp1_fp);   //Y3 = (B+G)^2 - 12D^2

  fp_mul(&nextZ,&tmpB_fp,&tmpF_fp); //B*F
  fp_l1shift(&nextZ,&nextZ);        //2B*F
  fp_l1shift(&nextZ,&nextZ);        //Z3=4B*F
//-----------------------------------------------
  fp_sub(&tmp1_fp6.x0.x0,&tmpD_fp,&tmpB_fp);        //D-B
  fp_mul_base(&tmp1_fp6.x0.x0,&tmp1_fp6.x0.x0);     //(D-B)*c
//-----------------------------------------------
  fp_set_neg(&tmp1_fp6.x0.x1,&tmpF_fp);             //-F
  fp_mul(&tmp1_fp6.x0.x1,&tmp1_fp6.x0.x1,&S->y);    //-FSy
//-----------------------------------------------
  fp_l1shift(&tmp1_fp6.x1.x1, &tmpA_fp);
  fp_add(&tmp1_fp6.x1.x1,&tmp1_fp6.x1.x1, &tmpA_fp); //3A
  fp_mul(&tmp1_fp6.x1.x1,&tmp1_fp6.x1.x1,&S->x);     //3ASx
//-----------------------------------------------
  fp6_mul_sparse_dbl(f,&tmp1_fp6,f);        //Capable for further Karatsuba //update

  fp_set(&U->x,&nextX);
  fp_set(&U->y,&nextY);
  fp_set(&U->z,&nextZ);

  // printf("DBL\n");
  // efp_proj_w1_1_checkOnCurve_Twist(U);
}


//double line //
void ff_lttp_costello_0(fp6_t *f, efp_jacobian_t *U, efp_t *S){//U = S, S = P

  static fp_t tmpA_fp, tmpB_fp,tmpC_fp,tmpD_fp,tmpE_fp,tmpF_fp,tmpG_fp;
  static fp_t nextX,nextY,nextZ;
  static fp_t tmp1_fp,tmp2_fp;

  fp_sqr(&tmpA_fp,&U->x); //A=X1^2
  fp_sqr(&tmpB_fp,&U->y); //B=Y1^2
  fp_sqr(&tmpC_fp,&U->z); //C=Z1^2

  fp_l1shift(&tmpD_fp, &tmpC_fp);          //D = 2C
  fp_add(&tmpD_fp,&tmpD_fp, &tmpC_fp);     //D = 3C 
  fp_set_neg(&tmpD_fp,&tmpD_fp);           //D = 3bC
  fp_mul(&tmpD_fp,&tmpD_fp, &base_c_inv);  //D = 3bC (b=-1, twisted b= -base_c_inv)

  fp_add(&tmpE_fp,&U->x,&U->y);//X1+Y1
  fp_sqr(&tmpE_fp,&tmpE_fp);   //(X1+Y1)^2
  fp_sub(&tmpE_fp,&tmpE_fp,&tmpA_fp); //E=(X1+Y1)^2-A
  fp_sub(&tmpE_fp,&tmpE_fp,&tmpB_fp); //E=(X1+Y1)^2-B-A

  fp_add(&tmpF_fp,&U->z,&U->y);//F=Z1+Y1
  fp_sqr(&tmpF_fp,&tmpF_fp);   //F=(Z1+Y1)^2
  fp_sub(&tmpF_fp,&tmpF_fp,&tmpC_fp); //F=(Z1+Y1)^2-B 
  fp_sub(&tmpF_fp,&tmpF_fp,&tmpB_fp); //F=(Z1+Y1)^2-B-C

  fp_l1shift(&tmpG_fp, &tmpD_fp);
  fp_add(&tmpG_fp,&tmpG_fp,&tmpD_fp); //G= 3D

  fp_sub(&nextX,&tmpB_fp,&tmpG_fp);
  fp_mul(&nextX,&nextX,&tmpE_fp);   //X3 = E*(B-G)

  fp_add(&nextY,&tmpB_fp,&tmpG_fp); //Y3 = (B+G)
  fp_sqr(&nextY,&nextY);            //Y3 = (B+G)^2
  fp_sqr(&tmp1_fp,&tmpD_fp);        //D^2
  fp_l1shift(&tmp1_fp,&tmp1_fp);    //2D^2
  fp_l1shift(&tmp2_fp,&tmp1_fp);    //4D^2
  fp_l1shift(&tmp1_fp,&tmp2_fp);    //8D^2
  fp_add(&tmp1_fp,&tmp1_fp,&tmp2_fp);//12D^2  
  fp_sub(&nextY,&nextY,&tmp1_fp);   //Y3 = (B+G)^2 - 12D^2

  fp_mul(&nextZ,&tmpB_fp,&tmpF_fp); //B*F
  fp_l1shift(&nextZ,&nextZ);        //2B*F
  fp_l1shift(&nextZ,&nextZ);        //Z3=4B*F
//-----------------------------------------------
  fp_sub(&f->x0.x0,&tmpD_fp,&tmpB_fp);        //D-B
  fp_mul_base(&f->x0.x0,&f->x0.x0);     //(D-B)*c
//-----------------------------------------------
  fp_set_neg(&f->x0.x1,&tmpF_fp);             //-F
  fp_mul(&f->x0.x1,&f->x0.x1,&S->y);    //-FSy
//-----------------------------------------------
  fp_l1shift(&f->x1.x1, &tmpA_fp);
  fp_add(&f->x1.x1,&f->x1.x1, &tmpA_fp); //3A
  fp_mul(&f->x1.x1,&f->x1.x1,&S->x);     //3ASx
//-----------------------------------------------

  fp_set(&U->x,&nextX);
  fp_set(&U->y,&nextY);
  fp_set(&U->z,&nextZ);

  // printf("DBL\n");
  // efp_proj_w1_1_checkOnCurve_Twist(U);
}

//add line 
void ff_ltqp(fp6_t *f, efp_jacobian_t *S, efp_t *Q,efp_t *P){
  static fp_t tmp1_fp, tmp2_fp,tmp3_fp;
  static fp_t t1,t2,t3,t4,t5;
  static fp_t nextX,nextY,nextZ;

  static fp6_t tmp1_fp6;

  fp_sqr(&tmp1_fp,&S->z);
  fp_mul(&t1,&Q->x,&tmp1_fp);
  fp_sub(&t1,&t1,&S->x);
  //t1 = (Z^2)*Qx - X

  fp_mul(&tmp1_fp,&tmp1_fp,&S->z);
  fp_mul(&t2,&tmp1_fp,&Q->y);
  fp_sub(&t2,&t2,&S->y);
  //t2 = Z^3 * Qy - Y

  fp_sqr(&t3,&t1);
  //t3 = t1^2 = ((Z^2)*Qx - X)^2

  fp_mul(&t4,&t1,&t3);
  //t4 = ((Z^2)*Qx - X)^3

  fp_mul(&t5,&S->x,&t3);
  //t5 = X((Z^2)*Qx - X)^2

  fp_sqr(&tmp1_fp,&t2);
  // fp_mul_ui(&tmp2_fp,&t5,2);
  fp_l1shift(&tmp2_fp, &t5);
  fp_add(&tmp2_fp,&tmp2_fp,&t4);
  fp_sub(&nextX,&tmp1_fp,&tmp2_fp);
  //X = t2^2 -(2t5+t4)

  fp_sub(&nextY,&t5,&nextX);
  fp_mul(&nextY,&nextY,&t2);
  fp_mul(&tmp1_fp,&t4,&S->y);
  fp_sub(&nextY,&nextY,&tmp1_fp);
  //Y = (t5 - X)t2 - t4Y

  fp_mul(&nextZ,&S->z,&t1);

  fp_mul_base_inv(&tmp1_fp6.x2.x1,&nextZ);
  fp_mul(&tmp1_fp6.x2.x1,&tmp1_fp6.x2.x1,&P->y);

  fp_mul(&tmp1_fp6.x0.x0,&t2,&P->x);
  fp_set_neg(&tmp1_fp6.x0.x0,&tmp1_fp6.x0.x0);

  fp_mul(&tmp1_fp,&t2,&Q->x);
  fp_mul(&tmp2_fp,&nextZ,&Q->y);
  fp_sub(&tmp1_fp6.x2.x0,&tmp1_fp,&tmp2_fp);
  
  fp6_mul_sparse_add(f,&tmp1_fp6,f); //Capable for further Karatsuba //update

  fp_set(&S->x,&nextX);
  fp_set(&S->y,&nextY);
  fp_set(&S->z,&nextZ);
}

//add line 
void ff_ltqp_costello_mixed(fp6_t *f, efp_jacobian_t *U, efp_t *R,efp_t *S){
  static fp_t tmpD_fp,tmpE_fp,tmpF_fp,tmpG_fp,tmpH_fp,tmpI_fp,tmpJ_fp;
  static fp_t nextX,nextY,nextZ;
  static fp_t tmp1_fp,tmp2_fp;

  static fp6_t tmp1_fp6;//ADDLine result

  //A=X1Z2 = X1
  //B=Y1Z2 = Y1
  //C=Z1Z2 = Z1
  fp_mul(&tmpD_fp,&U->z,&R->x);   //D=Z1X2-A = Z1X2 - X1Z2 = Z1X2 - X1
  fp_sub(&tmpD_fp,&tmpD_fp,&U->x);//D = X2Z1 - X1 = -(X1-X2Z1)
  //E=B-Z1Y2
  fp_mul(&tmpE_fp,&U->z,&R->y);   //Y2Z1
  fp_sub(&tmpE_fp,&U->y,&tmpE_fp);//B-Z1Y2 = Y1-Y2Z1
  //F=D^2
  fp_sqr(&tmpF_fp,&tmpD_fp);
  //G=E^2
  fp_sqr(&tmpG_fp,&tmpE_fp);
  //H= -D*F
  fp_mul(&tmpH_fp,&tmpD_fp,&tmpF_fp);
  fp_set_neg(&tmpH_fp,&tmpH_fp);
  //I=FA
  fp_mul(&tmpI_fp,&tmpF_fp,&U->x);
  //J=H+C*G-2I
  fp_mul(&tmpJ_fp,&U->z,&tmpG_fp);  //C*G
  fp_add(&tmpJ_fp,&tmpH_fp,&tmpJ_fp);//tmp2 = H+C*G
  fp_l1shift(&tmp1_fp, &tmpI_fp);
  fp_sub(&tmpJ_fp,&tmpJ_fp,&tmp1_fp);//H + C*G - 2I

  //X3=-DJ
  fp_mul(&nextX,&tmpJ_fp,&tmpD_fp);
  fp_set_neg(&nextX,&nextX);

  //Y3=E(I-J)-HB
  fp_mul(&tmp1_fp,&tmpH_fp,&U->y);//HB
  fp_sub(&nextY,&tmpI_fp,&tmpJ_fp);//I-J
  fp_mul(&nextY,&nextY,&tmpE_fp);//E(I-J)
  fp_sub(&nextY,&nextY,&tmp1_fp);//E(I-J)-HB

  //Z3=CH=Z1*H
  fp_mul(&nextZ,&U->z,&tmpH_fp);

//-----------------------------------------------
  fp_set_neg(&tmp1_fp6.x0.x1,&tmpE_fp);         //-(Y1-Y2Z1)
  fp_mul(&tmp1_fp6.x0.x1,&tmp1_fp6.x0.x1,&S->x);//-(Y1-Y2Z1)xS
//-----------------------------------------------
  fp_mul(&tmp1_fp6.x2.x0,&tmpD_fp,&S->y);       //(X1-X2Z1)yS
  fp_set_neg(&tmp1_fp6.x2.x0,&tmp1_fp6.x2.x0);  //(X1-X2Z1)
//-----------------------------------------------
  fp_mul(&tmp1_fp,&tmpD_fp,&R->y);            //Y2(X1-X2Z1)
  fp_mul(&tmp2_fp,&tmpE_fp,&R->x);            //X2(Y1-Y2Z1)
  fp_add(&tmp1_fp6.x2.x1,&tmp1_fp,&tmp2_fp);  //Y2(X1-X2Z1) - X2(Y1-Y2Z1)
//-----------------------------------------------
  
  fp6_mul_sparse_add_costello(f,&tmp1_fp6,f); //update

  fp_set(&U->x,&nextX);
  fp_set(&U->y,&nextY);
  fp_set(&U->z,&nextZ);
  // printf("ADD\n");
  // efp_proj_w1_1_checkOnCurve_Twist(U);
}


void ff_lttp_lazy_montgomery_0(fp6_t *f, efp_jacobian_t *S, efp_t *P){
  fp6_sqr_lazy_montgomery(f,f); //update
  static fp_t tmp1_fp, tmp2_fp,tmp3_fp;
  static fp_t t1,t2,t3;
  static fp_t nextX,nextY,nextZ;

  fp_sqrmod_montgomery(&t1,&S->y);              //t1 = Y^2
  fp_l1shift_nonmod_single(&tmp2_fp,&t1);      //tmp2 = 2*t1

  fp_mulmod_montgomery(&t2,&tmp2_fp,&S->x);     //t2 = 2*t1*X
  fp_l1shift_nonmod_single(&t2, &t2);          //t2 = 4*t1*X

  fp_sqrmod_montgomery(&t3,&S->x);              //t3 = X^2
  fp_l1shift_nonmod_single(&tmp1_fp, &t3);
  fp_add_nonmod_single(&t3,&t3,&tmp1_fp);

  fp_sqrmod_montgomery(&nextX,&t3);             //nextX = t3^2
  fp_l1shift_nonmod_single(&tmp1_fp, &t2);             //tmp1 = 2*t2
  fp_sub_nonmod_single(&nextX,&nextX,&tmp1_fp); //nextX = t3^2 - 2*t2

  fp_sub_nonmod_single(&nextY,&t2,&nextX);      //nextY = t2-nextX
  fp_mulmod_montgomery(&nextY,&nextY,&t3);      //nextY = (t2-nextX)t3

  fp_sqrmod_montgomery(&tmp1_fp,&tmp2_fp);      //tmp1 = tmp2^2 = 4t1^2
  fp_l1shift_nonmod_single(&tmp1_fp,&tmp1_fp); //tmp1 = 8t1^2

  fp_sub_nonmod_single(&nextY,&nextY,&tmp1_fp); //nextY = (t2-nextX)t3 - 8t1^2

  fp_l1shift_nonmod_single(&nextZ,&S->y);      //nextZ = 2Y
  fp_mulmod_montgomery(&nextZ,&nextZ,&S->z);    //nextZ = 2YZ

  fp_sqrmod_montgomery(&tmp1_fp,&S->z);         //tmp1 = Z^2
  fp_mulmod_montgomery(&f->x0.x1,&nextZ,&tmp1_fp);           // = nextZ*Z^2
  fp_mul_base_inv_single(&f->x0.x1,&f->x0.x1);  // = nextZ*Z^2*(2^-1)
  fp_mulmod_montgomery(&f->x0.x1,&f->x0.x1,&P->y);     // = nextZ*Z^2*(2^-1)*Py

  fp_mulmod_montgomery(&tmp3_fp,&t3,&S->x);                        //tmp3 = t3*X
  fp_sub_nonmod_single(&f->x0.x0,&tmp3_fp,&tmp2_fp);         // = t3*X - 2*t1

  fp_mulmod_montgomery(&f->x1.x1,&t3,&P->x);                 // = t3*Px
  fp_mulmod_montgomery(&f->x1.x1,&f->x1.x1,&tmp1_fp);  // = t3*Px*Z^2
  fp_set_neg_montgomery(&f->x1.x1,&f->x1.x1);       // = -t3*Px*Z^2
  fp_mul_base_inv_single(&f->x1.x1,&f->x1.x1);  // = -t3*Px*Z^2*(2^-1)

 
  fp_set(&S->x,&nextX);
  fp_set(&S->y,&nextY);
  fp_set(&S->z,&nextZ);
}


void ff_lttp_lazy_montgomery(fp6_t *f, efp_jacobian_t *S, efp_t *P){
  fp6_sqr_lazy_montgomery(f,f); //update
  static fp_t tmp1_fp, tmp2_fp,tmp3_fp;
  static fp_t t1,t2,t3;
  static fp_t nextX,nextY,nextZ;

  static fp6_t tmp1_fp6;

  fp_sqrmod_montgomery(&t1,&S->y);              //t1 = Y^2
  fp_l1shift_nonmod_single(&tmp2_fp,&t1);      //tmp2 = 2*t1

  fp_mulmod_montgomery(&t2,&tmp2_fp,&S->x);     //t2 = 2*t1*X
  fp_l1shift_nonmod_single(&t2, &t2);          //t2 = 4*t1*X

  fp_sqrmod_montgomery(&t3,&S->x);              //t3 = X^2
  fp_l1shift_nonmod_single(&tmp1_fp, &t3);
  fp_add_nonmod_single(&t3,&t3,&tmp1_fp);

  fp_sqrmod_montgomery(&nextX,&t3);             //nextX = t3^2
  fp_l1shift_nonmod_single(&tmp1_fp, &t2);             //tmp1 = 2*t2
  fp_sub_nonmod_single(&nextX,&nextX,&tmp1_fp); //nextX = t3^2 - 2*t2

  fp_sub_nonmod_single(&nextY,&t2,&nextX);      //nextY = t2-nextX
  fp_mulmod_montgomery(&nextY,&nextY,&t3);      //nextY = (t2-nextX)t3

  fp_sqrmod_montgomery(&tmp1_fp,&tmp2_fp);      //tmp1 = tmp2^2 = 4t1^2
  fp_l1shift_nonmod_single(&tmp1_fp,&tmp1_fp); //tmp1 = 8t1^2

  fp_sub_nonmod_single(&nextY,&nextY,&tmp1_fp); //nextY = (t2-nextX)t3 - 8t1^2

  fp_l1shift_nonmod_single(&nextZ,&S->y);      //nextZ = 2Y
  fp_mulmod_montgomery(&nextZ,&nextZ,&S->z);    //nextZ = 2YZ

  fp_sqrmod_montgomery(&tmp1_fp,&S->z);         //tmp1 = Z^2
  fp_mulmod_montgomery(&tmp1_fp6.x0.x1,&nextZ,&tmp1_fp);           // = nextZ*Z^2
  fp_mul_base_inv_single(&tmp1_fp6.x0.x1,&tmp1_fp6.x0.x1);  // = nextZ*Z^2*(2^-1)
  fp_mulmod_montgomery(&tmp1_fp6.x0.x1,&tmp1_fp6.x0.x1,&P->y);     // = nextZ*Z^2*(2^-1)*Py

  fp_mulmod_montgomery(&tmp3_fp,&t3,&S->x);                        //tmp3 = t3*X
  fp_sub_nonmod_single(&tmp1_fp6.x0.x0,&tmp3_fp,&tmp2_fp);         // = t3*X - 2*t1

  fp_mulmod_montgomery(&tmp1_fp6.x1.x1,&t3,&P->x);                 // = t3*Px
  fp_mulmod_montgomery(&tmp1_fp6.x1.x1,&tmp1_fp6.x1.x1,&tmp1_fp);  // = t3*Px*Z^2
  fp_set_neg_montgomery(&tmp1_fp6.x1.x1,&tmp1_fp6.x1.x1);       // = -t3*Px*Z^2
  fp_mul_base_inv_single(&tmp1_fp6.x1.x1,&tmp1_fp6.x1.x1);  // = -t3*Px*Z^2*(2^-1)

  fp6_mul_sparse_dbl_lazy_montgomery(f,&tmp1_fp6,f);        //Capable for further Karatsuba //update
 
  fp_set(&S->x,&nextX);
  fp_set(&S->y,&nextY);
  fp_set(&S->z,&nextZ);
}


//double line //
void ff_lttp_costello_lazy_montgomery(fp6_t *f, efp_jacobian_t *U, efp_t *S){//U = S, S = P
  fp6_sqr_lazy_montgomery(f,f); //update should put into line update

  static fp_t tmpA_fp, tmpB_fp,tmpC_fp,tmpD_fp,tmpE_fp,tmpF_fp,tmpG_fp;
  static fp_t nextX,nextY,nextZ;
  static fp_t tmp1_fp,tmp2_fp;

  static fp6_t tmp1_fp6;//DBLLine result

  fp_sqrmod_montgomery(&tmpA_fp,&U->x); //A=X1^2
  fp_sqrmod_montgomery(&tmpB_fp,&U->y); //B=Y1^2
  fp_sqrmod_montgomery(&tmpC_fp,&U->z); //C=Z1^2

  fp_l1shift(&tmpD_fp, &tmpC_fp);          //D = 2C
  fp_add(&tmpD_fp,&tmpD_fp, &tmpC_fp);     //D = 3C 
  fp_set_neg_montgomery(&tmpD_fp,&tmpD_fp);           //D = 3bC
  fp_mulmod_montgomery(&tmpD_fp,&tmpD_fp, &base_c_invMR);  //D = 3bC (b=-1, twisted b= -base_c_inv)

  fp_add(&tmpE_fp,&U->x,&U->y);//X1+Y1
  fp_sqrmod_montgomery(&tmpE_fp,&tmpE_fp);   //(X1+Y1)^2
  fp_sub(&tmpE_fp,&tmpE_fp,&tmpA_fp); //E=(X1+Y1)^2-A
  fp_sub(&tmpE_fp,&tmpE_fp,&tmpB_fp); //E=(X1+Y1)^2-B-A

  fp_add(&tmpF_fp,&U->z,&U->y);//F=Z1+Y1
  fp_sqrmod_montgomery(&tmpF_fp,&tmpF_fp);   //F=(Z1+Y1)^2
  fp_sub(&tmpF_fp,&tmpF_fp,&tmpC_fp); //F=(Z1+Y1)^2-B 
  fp_sub(&tmpF_fp,&tmpF_fp,&tmpB_fp); //F=(Z1+Y1)^2-B-C

  fp_l1shift(&tmpG_fp, &tmpD_fp);
  fp_add(&tmpG_fp,&tmpG_fp,&tmpD_fp); //G= 3D

  fp_sub(&nextX,&tmpB_fp,&tmpG_fp);
  fp_mulmod_montgomery(&nextX,&nextX,&tmpE_fp);   //X3 = E*(B-G)

  fp_add(&nextY,&tmpB_fp,&tmpG_fp); //Y3 = (B+G)
  fp_sqrmod_montgomery(&nextY,&nextY);            //Y3 = (B+G)^2
  fp_sqrmod_montgomery(&tmp1_fp,&tmpD_fp);        //D^2
  fp_l1shift(&tmp1_fp,&tmp1_fp);    //2D^2
  fp_l1shift(&tmp2_fp,&tmp1_fp);    //4D^2
  fp_l1shift(&tmp1_fp,&tmp2_fp);    //8D^2
  fp_add(&tmp1_fp,&tmp1_fp,&tmp2_fp);//12D^2  
  fp_sub(&nextY,&nextY,&tmp1_fp);   //Y3 = (B+G)^2 - 12D^2

  fp_mulmod_montgomery(&nextZ,&tmpB_fp,&tmpF_fp); //B*F
  fp_l1shift(&nextZ,&nextZ);        //2B*F
  fp_l1shift(&nextZ,&nextZ);        //Z3=4B*F
//-----------------------------------------------
  fp_sub(&tmp1_fp6.x0.x0,&tmpD_fp,&tmpB_fp);        //D-B
  fp_mul_base(&tmp1_fp6.x0.x0,&tmp1_fp6.x0.x0);     //(D-B)*c
//-----------------------------------------------
  fp_set_neg_montgomery(&tmp1_fp6.x0.x1,&tmpF_fp);             //-F
  fp_mulmod_montgomery(&tmp1_fp6.x0.x1,&tmp1_fp6.x0.x1,&S->y);    //-FSy
//-----------------------------------------------
  fp_l1shift(&tmp1_fp6.x1.x1, &tmpA_fp);
  fp_add(&tmp1_fp6.x1.x1,&tmp1_fp6.x1.x1, &tmpA_fp); //3A
  fp_mulmod_montgomery(&tmp1_fp6.x1.x1,&tmp1_fp6.x1.x1,&S->x);     //3ASx
//-----------------------------------------------
  fp6_mul_sparse_dbl_lazy_montgomery(f,&tmp1_fp6,f);        //Capable for further Karatsuba //update

  fp_set(&U->x,&nextX);
  fp_set(&U->y,&nextY);
  fp_set(&U->z,&nextZ);
}


//double line //
void ff_lttp_costello_lazy_montgomery_0(fp6_t *f, efp_jacobian_t *U, efp_t *S){//U = S, S = P

  static fp_t tmpA_fp, tmpB_fp,tmpC_fp,tmpD_fp,tmpE_fp,tmpF_fp,tmpG_fp;
  static fp_t nextX,nextY,nextZ;
  static fp_t tmp1_fp,tmp2_fp;

  fp_sqrmod_montgomery(&tmpA_fp,&U->x); //A=X1^2
  fp_sqrmod_montgomery(&tmpB_fp,&U->y); //B=Y1^2
  fp_sqrmod_montgomery(&tmpC_fp,&U->z); //C=Z1^2

  fp_l1shift(&tmpD_fp, &tmpC_fp);          //D = 2C
  fp_add(&tmpD_fp,&tmpD_fp, &tmpC_fp);     //D = 3C 
  fp_set_neg_montgomery(&tmpD_fp,&tmpD_fp);           //D = 3bC
  fp_mulmod_montgomery(&tmpD_fp,&tmpD_fp, &base_c_invMR);  //D = 3bC (b=-1, twisted b= -base_c_inv)

  fp_add(&tmpE_fp,&U->x,&U->y);//X1+Y1
  fp_sqrmod_montgomery(&tmpE_fp,&tmpE_fp);   //(X1+Y1)^2
  fp_sub(&tmpE_fp,&tmpE_fp,&tmpA_fp); //E=(X1+Y1)^2-A
  fp_sub(&tmpE_fp,&tmpE_fp,&tmpB_fp); //E=(X1+Y1)^2-B-A

  fp_add(&tmpF_fp,&U->z,&U->y);//F=Z1+Y1
  fp_sqrmod_montgomery(&tmpF_fp,&tmpF_fp);   //F=(Z1+Y1)^2
  fp_sub(&tmpF_fp,&tmpF_fp,&tmpC_fp); //F=(Z1+Y1)^2-B 
  fp_sub(&tmpF_fp,&tmpF_fp,&tmpB_fp); //F=(Z1+Y1)^2-B-C

  fp_l1shift(&tmpG_fp, &tmpD_fp);
  fp_add(&tmpG_fp,&tmpG_fp,&tmpD_fp); //G= 3D

  fp_sub(&nextX,&tmpB_fp,&tmpG_fp);
  fp_mulmod_montgomery(&nextX,&nextX,&tmpE_fp);   //X3 = E*(B-G)

  fp_add(&nextY,&tmpB_fp,&tmpG_fp); //Y3 = (B+G)
  fp_sqrmod_montgomery(&nextY,&nextY);            //Y3 = (B+G)^2
  fp_sqrmod_montgomery(&tmp1_fp,&tmpD_fp);        //D^2
  fp_l1shift(&tmp1_fp,&tmp1_fp);    //2D^2
  fp_l1shift(&tmp2_fp,&tmp1_fp);    //4D^2
  fp_l1shift(&tmp1_fp,&tmp2_fp);    //8D^2
  fp_add(&tmp1_fp,&tmp1_fp,&tmp2_fp);//12D^2  
  fp_sub(&nextY,&nextY,&tmp1_fp);   //Y3 = (B+G)^2 - 12D^2

  fp_mulmod_montgomery(&nextZ,&tmpB_fp,&tmpF_fp); //B*F
  fp_l1shift(&nextZ,&nextZ);        //2B*F
  fp_l1shift(&nextZ,&nextZ);        //Z3=4B*F
//-----------------------------------------------
  fp_sub(&f->x0.x0,&tmpD_fp,&tmpB_fp);        //D-B
  fp_mul_base(&f->x0.x0,&f->x0.x0);     //(D-B)*c
//-----------------------------------------------
  fp_set_neg_montgomery(&f->x0.x1,&tmpF_fp);             //-F
  fp_mulmod_montgomery(&f->x0.x1,&f->x0.x1,&S->y);    //-FSy
//-----------------------------------------------
  fp_l1shift(&f->x1.x1, &tmpA_fp);
  fp_add(&f->x1.x1,&f->x1.x1, &tmpA_fp); //3A
  fp_mulmod_montgomery(&f->x1.x1,&f->x1.x1,&S->x);     //3ASx
//-----------------------------------------------

  fp_set(&U->x,&nextX);
  fp_set(&U->y,&nextY);
  fp_set(&U->z,&nextZ);
}

//add line 
void ff_ltqp_lazy_montgomery(fp6_t *f, efp_jacobian_t *S, efp_t *Q,efp_t *P){
  static fp_t tmp1_fp, tmp2_fp,tmp3_fp;
  static fp_t t1,t2,t3,t4,t5;
  static fp_t nextX,nextY,nextZ;

  static fp6_t tmp1_fp6;

  fp_sqrmod_montgomery(&tmp1_fp,&S->z);
  fp_mulmod_montgomery(&t1,&Q->x,&tmp1_fp);
  fp_sub_nonmod_single(&t1,&t1,&S->x);
  //t1 = (Z^2)*Qx - X
  // fp_println_montgomery("t1", &tq)
  fp_mulmod_montgomery(&tmp1_fp,&tmp1_fp,&S->z);
  fp_mulmod_montgomery(&t2,&tmp1_fp,&Q->y);
  fp_sub_nonmod_single(&t2,&t2,&S->y);
  //t2 = Z^3 * Qy - Y

  fp_sqrmod_montgomery(&t3,&t1);
  //t3 = t1^2 = ((Z^2)*Qx - X)^2

  fp_mulmod_montgomery(&t4,&t1,&t3);
  //t4 = ((Z^2)*Qx - X)^3

  fp_mulmod_montgomery(&t5,&S->x,&t3);
  //t5 = X((Z^2)*Qx - X)^2

  fp_sqrmod_montgomery(&tmp1_fp,&t2);
  // fp_mul_ui(&tmp2_fp,&t5,2);
  fp_l1shift_nonmod_single(&tmp2_fp, &t5);
  fp_add_nonmod_single(&tmp2_fp,&tmp2_fp,&t4);
  fp_sub_nonmod_single(&nextX,&tmp1_fp,&tmp2_fp);
  //X = t2^2 -(2t5+t4)

  fp_sub_nonmod_single(&nextY,&t5,&nextX);
  fp_mulmod_montgomery(&nextY,&nextY,&t2);
  fp_mulmod_montgomery(&tmp1_fp,&t4,&S->y);
  fp_sub_nonmod_single(&nextY,&nextY,&tmp1_fp);
  //Y = (t5 - X)t2 - t4Y

  fp_mulmod_montgomery(&nextZ,&S->z,&t1);

  fp_mul_base_inv_single(&tmp1_fp6.x2.x1,&nextZ);
  fp_mulmod_montgomery(&tmp1_fp6.x2.x1,&tmp1_fp6.x2.x1,&P->y);

  fp_mulmod_montgomery(&tmp1_fp6.x0.x0,&t2,&P->x);
  fp_set_neg_montgomery(&tmp1_fp6.x0.x0,&tmp1_fp6.x0.x0);

  fp_mulmod_montgomery(&tmp1_fp,&t2,&Q->x);
  fp_mulmod_montgomery(&tmp2_fp,&nextZ,&Q->y);
  fp_sub_nonmod_single(&tmp1_fp6.x2.x0,&tmp1_fp,&tmp2_fp);

  fp6_mul_sparse_add_lazy_montgomery(f,&tmp1_fp6,f); //Capable for further Karatsuba //update

  fp_set(&S->x,&nextX);
  fp_set(&S->y,&nextY);
  fp_set(&S->z,&nextZ);
}


//add line 
void ff_ltqp_costello_mixed_lazy_montgomery(fp6_t *f, efp_jacobian_t *U, efp_t *R,efp_t *S){
  static fp_t tmpD_fp,tmpE_fp,tmpF_fp,tmpG_fp,tmpH_fp,tmpI_fp,tmpJ_fp;
  static fp_t nextX,nextY,nextZ;
  static fp_t tmp1_fp,tmp2_fp;

  static fp6_t tmp1_fp6;//ADDLine result

  //A=X1Z2 = X1
  //B=Y1Z2 = Y1
  //C=Z1Z2 = Z1
  fp_mulmod_montgomery(&tmpD_fp,&U->z,&R->x);   //D=Z1X2-A = Z1X2 - X1Z2 = Z1X2 - X1
  fp_sub_nonmod_single(&tmpD_fp,&tmpD_fp,&U->x);//D = X2Z1 - X1 = -(X1-X2Z1)
  //E=B-Z1Y2
  fp_mulmod_montgomery(&tmpE_fp,&U->z,&R->y);   //Y2Z1
  fp_sub_nonmod_single(&tmpE_fp,&U->y,&tmpE_fp);//B-Z1Y2 = Y1-Y2Z1
  //F=D^2
  fp_sqrmod_montgomery(&tmpF_fp,&tmpD_fp);
  //G=E^2
  fp_sqrmod_montgomery(&tmpG_fp,&tmpE_fp);
  //H= -D*F
  fp_mulmod_montgomery(&tmpH_fp,&tmpD_fp,&tmpF_fp);
  fp_set_neg_montgomery(&tmpH_fp,&tmpH_fp);
  //I=FA
  fp_mulmod_montgomery(&tmpI_fp,&tmpF_fp,&U->x);
  //J=H+C*G-2I
  fp_mulmod_montgomery(&tmpJ_fp,&U->z,&tmpG_fp);  //C*G
  fp_add_nonmod_single(&tmpJ_fp,&tmpH_fp,&tmpJ_fp);//tmp2 = H+C*G
  fp_l1shift_nonmod_single(&tmp1_fp, &tmpI_fp);
  fp_sub_nonmod_single(&tmpJ_fp,&tmpJ_fp,&tmp1_fp);//H + C*G - 2I

  //X3=-DJ
  fp_mulmod_montgomery(&nextX,&tmpJ_fp,&tmpD_fp);
  fp_set_neg_montgomery(&nextX,&nextX);

  //Y3=E(I-J)-HB
  fp_mulmod_montgomery(&tmp1_fp,&tmpH_fp,&U->y);//HB
  fp_sub_nonmod_single(&nextY,&tmpI_fp,&tmpJ_fp);//I-J
  fp_mulmod_montgomery(&nextY,&nextY,&tmpE_fp);//E(I-J)
  fp_sub_nonmod_single(&nextY,&nextY,&tmp1_fp);//E(I-J)-HB

  //Z3=CH=Z1*H
  fp_mulmod_montgomery(&nextZ,&U->z,&tmpH_fp);

//-----------------------------------------------
  fp_set_neg_montgomery(&tmp1_fp6.x0.x1,&tmpE_fp);         //-(Y1-Y2Z1)
  fp_mulmod_montgomery(&tmp1_fp6.x0.x1,&tmp1_fp6.x0.x1,&S->x);//-(Y1-Y2Z1)xS
//-----------------------------------------------
  fp_mulmod_montgomery(&tmp1_fp6.x2.x0,&tmpD_fp,&S->y);       //(X1-X2Z1)yS
  fp_set_neg_montgomery(&tmp1_fp6.x2.x0,&tmp1_fp6.x2.x0);  //(X1-X2Z1)
//-----------------------------------------------
  fp_mulmod_montgomery(&tmp1_fp,&tmpD_fp,&R->y);            //Y2(X1-X2Z1)
  fp_mulmod_montgomery(&tmp2_fp,&tmpE_fp,&R->x);            //X2(Y1-Y2Z1)
  fp_add_nonmod_single(&tmp1_fp6.x2.x1,&tmp1_fp,&tmp2_fp);  //Y2(X1-X2Z1) - X2(Y1-Y2Z1)
//-----------------------------------------------
  
  fp6_mul_sparse_add_costello_lazy_montgomery(f,&tmp1_fp6,f); //Capable for further Karatsuba //update
  
  fp_set(&U->x,&nextX);
  fp_set(&U->y,&nextY);
  fp_set(&U->z,&nextZ);
}

void miller_opt_ate_jac(fp6_t *f,efp6_t *P,efp6_t *Q){
    static efp_t mapped_P,mapped_Q;
    static efp_jacobian_t S;

    fp6_set_ui_ui(f,0);
    fp_set_ui(&f->x0.x0,1);

    fp_set(&mapped_P.x,&P->x.x0.x0);
    fp_set(&mapped_P.y,&P->y.x0.x0);
    mapped_P.infinity = 0;

    efp6_to_efp(&mapped_Q,Q);//twist
    efp6_to_Jacefp(&S,Q);
    ff_lttp_0(f,&S,&mapped_P);

    mp_bitcnt_t i;
    for(i=(mpz_sizeinbase(miller_loop_s,2)-3);i!=-1;i--){
      ff_lttp(f,&S,&mapped_P);
      if(mpz_tstbit(miller_loop_s,i)==1){
        ff_ltqp(f,&S,&mapped_Q,&mapped_P);
      }
    }
}

void miller_opt_ate_jac_2NAF(fp6_t *f,efp6_t *P,efp6_t *Q){
    static efp_t mapped_P,mapped_Q,mapped_Q_neg;
    static efp_jacobian_t S;

    fp6_set_ui_ui(f,0);
    fp_set_ui(&f->x0.x0,1);

    fp_set(&mapped_P.x,&P->x.x0.x0);
    fp_set(&mapped_P.y,&P->y.x0.x0);
    mapped_P.infinity = 0;

    efp6_to_efp(&mapped_Q,Q);//twist
    efp6_to_Jacefp(&S,Q);
    efp_set_neg(&mapped_Q_neg,&mapped_Q);
    ff_lttp_0(f,&S,&mapped_P);
    mp_bitcnt_t i;
    for(i=(miller_loop_v.size() -3);i!=-1;i--){
      switch(miller_loop_v[i]){
        case 0:
          ff_lttp(f,&S,&mapped_P);
          break;
        case 1:
          ff_lttp(f,&S,&mapped_P);
          ff_ltqp(f,&S,&mapped_Q,&mapped_P);
          // fp6_println("&f1", f);
          break;
        case -1:
          ff_lttp(f,&S,&mapped_P);
          ff_ltqp(f,&S,&mapped_Q_neg,&mapped_P);

          break;
        default:
            break;
      }
    }
}

void miller_opt_ate_proj_2NAF(fp6_t *f,efp6_t *P,efp6_t *Q){
    static efp_t mapped_P,mapped_Q,mapped_Q_neg;
    static efp_jacobian_t S;

    fp6_set_ui_ui(f,0);
    fp_set_ui(&f->x0.x0,1);

    fp_set(&mapped_P.x,&P->x.x0.x0);
    fp_set(&mapped_P.y,&P->y.x0.x0);
    mapped_P.infinity = 0;

    efp6_to_efp(&mapped_Q,Q);//twist
    efp6_to_Jacefp(&S,Q);
    efp_set_neg(&mapped_Q_neg,&mapped_Q);
    ff_lttp_costello_0(f,&S,&mapped_P);
    mp_bitcnt_t i;
    for(i=(miller_loop_v.size() -3);i!=-1;i--){
      switch(miller_loop_v[i]){
        case 0:
          ff_lttp_costello(f,&S,&mapped_P);
          break;
        case 1:
          ff_lttp_costello(f,&S,&mapped_P);
          ff_ltqp_costello_mixed(f,&S,&mapped_Q,&mapped_P);
          break;
        case -1:
          ff_lttp_costello(f,&S,&mapped_P);
          ff_ltqp_costello_mixed(f,&S,&mapped_Q_neg,&mapped_P);
          break;
        default:
          break;
      }
    }
}

void miller_opt_ate_jac_2NAF_lazy_montgomery(fp6_t *f,efp6_t *P,efp6_t *Q){
    static efp_t mapped_P,mapped_Q,mapped_Q_neg;
    static efp_jacobian_t S;

    fp6_set_ui_ui(f,0);
    fp_set_ui(&f->x0.x0,1);
    fp_to_montgomery(&f->x0.x0, &f->x0.x0);

    fp_to_montgomery(&mapped_P.x,&P->x.x0.x0);
    fp_to_montgomery(&mapped_P.y,&P->y.x0.x0);
    mapped_P.infinity = 0;

    efp6_to_efp(&mapped_Q,Q);//twist
    efp6_to_Jacefp_montgomery(&S,Q);
    efp_set_neg_montgomery(&mapped_Q_neg,&mapped_Q);//here
    ff_lttp_lazy_montgomery_0(f,&S,&mapped_P);
    mp_bitcnt_t i;
    for(i=(miller_loop_v.size() -3);i!=-1;i--){//-1
      switch(miller_loop_v[i]){
        case 0:
          ff_lttp_lazy_montgomery(f,&S,&mapped_P);
          break;
        case 1:
          ff_lttp_lazy_montgomery(f,&S,&mapped_P);
          ff_ltqp_lazy_montgomery(f,&S,&mapped_Q,&mapped_P);
          // fp6_println_montgomery("&f1", f);
          break;
        case -1:
          ff_lttp_lazy_montgomery(f,&S,&mapped_P);
          ff_ltqp_lazy_montgomery(f,&S,&mapped_Q_neg,&mapped_P);

          break;
        default:
            break;
      }
    }
}

void miller_opt_ate_proj_2NAF_lazy_montgomery(fp6_t *f,efp6_t *P,efp6_t *Q){
    static efp_t mapped_P,mapped_Q,mapped_Q_neg;
    static efp_jacobian_t S;

    fp6_set_ui_ui(f,0);
    fp_set_ui(&f->x0.x0,1);
    fp_to_montgomery(&f->x0.x0, &f->x0.x0);

    fp_to_montgomery(&mapped_P.x,&P->x.x0.x0);
    fp_to_montgomery(&mapped_P.y,&P->y.x0.x0);
    mapped_P.infinity = 0;

    efp6_to_efp(&mapped_Q,Q);//twist
    efp6_to_Jacefp_montgomery(&S,Q);
    efp_set_neg_montgomery(&mapped_Q_neg,&mapped_Q);//here
    ff_lttp_costello_lazy_montgomery_0(f,&S,&mapped_P);
    mp_bitcnt_t i;
    for(i=(miller_loop_v.size() -3);i!=-1;i--){//-1
      switch(miller_loop_v[i]){
        case 0:
          ff_lttp_costello_lazy_montgomery(f,&S,&mapped_P);
          break;
        case 1:
          ff_lttp_costello_lazy_montgomery(f,&S,&mapped_P);
          ff_ltqp_costello_mixed_lazy_montgomery(f,&S,&mapped_Q,&mapped_P);
          break;
        case -1:
          ff_lttp_costello_lazy_montgomery(f,&S,&mapped_P);
          ff_ltqp_costello_mixed_lazy_montgomery(f,&S,&mapped_Q_neg,&mapped_P);
          break;
        default:
          break;
      }
    }
}

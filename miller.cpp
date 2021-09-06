#include "miller.h"
#include "define.h"
#include "efp6.h"
#include "fp.h"
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
  // fp_println("&P->y", &P->y);
  fp_mul(&tmp1_fp6.x2.x1,&tmp1_fp6.x2.x1,&P->y);
  // fp_println("&tmp1_fp6.x2.x1", &tmp1_fp6.x2.x1);

  fp_mul(&tmp1_fp6.x0.x0,&t2,&P->x);
  fp_set_neg(&tmp1_fp6.x0.x0,&tmp1_fp6.x0.x0);

  fp_mul(&tmp1_fp,&t2,&Q->x);
  fp_mul(&tmp2_fp,&nextZ,&Q->y);
  fp_sub(&tmp1_fp6.x2.x0,&tmp1_fp,&tmp2_fp);
  
  // fp6_println("tmp1_fp6", &tmp1_fp6);
  fp6_mul_sparse_add(f,&tmp1_fp6,f); //Capable for further Karatsuba //update
  // fp6_mul(f,f,&tmp1_fp6);
  // fp6_println("f", f);

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

// void ff_lttp_lazy_montgomery2(fp6_t *f, efp_jacobian_t *S, efp_t *P){
//   fp6_sqr_lazy_montgomery(f,f); //update
//   static fp_t tmp1_fp, tmp2_fp,tmp3_fp;
//   static fp_t A1_fp,A2_fp,A3_fp,B1_fp,B2_fp,C1_fp,D1_fp,D2_fp,E1_fp,E2_fp,F_fp,G_fp;
//   static fp_t nextX,nextY,nextZ;

//   static fp6_t tmp1_fp6;

//   //
//   fp_sqrmod_montgomery(&A1_fp, &S->x);
//   fp_mulmod_montgomery(&A2_fp,&A1_fp, &S->x);
//   fp_mulmod_montgomery(&A3_fp,&A2_fp, &S->x);
  
//   fp_sqrmod_montgomery(&B1_fp, &S->y);
//   fp_sqrmod_montgomery(&B2_fp, &B1_fp);

//   fp_sqrmod_montgomery(&C1_fp,&S->z);

//   fp_add(&D1_fp,&S->x,&S->y);
//   fp_sqrmod_montgomery(&D1_fp, &D1_fp);
//   fp_sub_nonmod_single(&D1_fp,&D1_fp,&A1_fp);
//   fp_sub_nonmod_single(&D1_fp,&D1_fp,&B1_fp);

//   fp_mulmod_montgomery(&D2_fp, &D1_fp, &S->y);

//   fp_add(&E1_fp,&S->z,&S->y);
//   fp_sqrmod_montgomery(&E1_fp, &E1_fp);
//   fp_sub_nonmod_single(&E1_fp,&E1_fp,&A1_fp);
//   fp_sub_nonmod_single(&nextZ,&E1_fp,&C1_fp);
//   //nextZ
//   fp_mulmod_montgomery(&E2_fp, &E1_fp, &C1_fp);

//   //nextX
//   fp_add_nonmod_single(&nextX, &A3_fp, &A3_fp);
//   fp_sub_nonmod_single(&nextX,&nextX,&D2_fp);    //2x^4-2xy^2
//   fp_l1shift_nonmod_single(&nextX, &nextX);
//   fp_l1shift_nonmod_single(&nextX, &nextX);      //8x^4 - 8xy^2
//   fp_add_nonmod_single(&nextX, &nextX, &A3_fp);  //9x^4 - 8xy^2

//   //nextY
//   fp_add_nonmod_single(&nextY,&D2_fp,&D2_fp); //4xy^2
//   fp_sub_nonmod_single(&nextY,&nextY,&nextX); //4xy^2 - (9x^4 - 8xy^2)
//   fp_add_nonmod_single(&tmp1_fp,&A2_fp,&A2_fp);
//   fp_add_nonmod_single(&tmp1_fp,&tmp1_fp,&A2_fp);
//   fp_mulmod_montgomery(&nextY, &nextY, &tmp1_fp);
//   fp_l1shift_nonmod_single(&tmp2_fp, &B2_fp);
//   fp_l1shift_nonmod_single(&tmp2_fp, &B2_fp);
//   fp_l1shift_nonmod_single(&tmp2_fp, &B2_fp);
//   fp_sub_nonmod_single(&nextY, &nextY, &tmp2_fp);

//   //rambraD
//   fp_mulmod_montgomery(&tmp3_fp, &nextZ, &C1_fp);


//   //0.0
//   fp_sub_nonmod_single(&tmp1_fp6.x0.x0, &A2_fp, &B1_fp);
//   fp_l1shift_nonmod_single(&tmp1_fp6.x0.x0, &tmp1_fp6.x0.x0);
//   fp_add_nonmod_single(&tmp1_fp6.x0.x0, &tmp1_fp6.x0.x0, &A2_fp);

//   //0.1
//   fp_mulmod_montgomery(&tmp1_fp6.x0.x1,&tmp3_fp,&P->y);     // = nextZ*Z^2*(2^-1)*Py
//   fp_mul_base_inv_single(&tmp1_fp6.x0.x1,&tmp1_fp6.x0.x1);  // = nextZ*Z^2*(2^-1)



//   fp6_mul_sparse_dbl_lazy_montgomery(f,&tmp1_fp6,f);        //Capable for further Karatsuba //update

//   fp_set(&S->x,&nextX);
//   fp_set(&S->y,&nextY);
//   fp_set(&S->z,&nextZ);
// }

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
  // fp_println_montgomery("&P->y", &P->y);
  fp_mulmod_montgomery(&tmp1_fp6.x2.x1,&tmp1_fp6.x2.x1,&P->y);
  // fp_println_montgomery("&tmp1_fp6.x2.x1", &tmp1_fp6.x2.x1);

  fp_mulmod_montgomery(&tmp1_fp6.x0.x0,&t2,&P->x);
  fp_set_neg_montgomery(&tmp1_fp6.x0.x0,&tmp1_fp6.x0.x0);

  fp_mulmod_montgomery(&tmp1_fp,&t2,&Q->x);
  fp_mulmod_montgomery(&tmp2_fp,&nextZ,&Q->y);
  fp_sub_nonmod_single(&tmp1_fp6.x2.x0,&tmp1_fp,&tmp2_fp);

  // fp6_println_montgomery("tmp1_fp6", &tmp1_fp6);
  fp6_mul_sparse_add_lazy_montgomery(f,&tmp1_fp6,f); //Capable for further Karatsuba //update
  // fp6_mul(f,f,&tmp1_fp6);
  // fp6_println_montgomery("f", f);

  fp_set(&S->x,&nextX);
  fp_set(&S->y,&nextY);
  fp_set(&S->z,&nextZ);
}

void miller_opt_ate_proj(fp6_t *f,efp6_t *P,efp6_t *Q){
    static efp_t mapped_P,mapped_Q;
    static efp_jacobian_t S;

    fp6_set_ui_ui(f,0);
    fp_set_ui(&f->x0.x0,1);

    fp_set(&mapped_P.x,&P->x.x0.x0);
    fp_set(&mapped_P.y,&P->y.x0.x0);
    mapped_P.infinity = 0;

    efp6_to_efp(&mapped_Q,Q);//twist
    efp6_to_Jacefp(&S,Q);

    mp_bitcnt_t i;
    for(i=(mpz_sizeinbase(miller_loop_s,2)-2);i!=-1;i--){
      ff_lttp(f,&S,&mapped_P);
      if(mpz_tstbit(miller_loop_s,i)==1){
        ff_ltqp(f,&S,&mapped_Q,&mapped_P);
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

    mp_bitcnt_t i;
    for(i=(miller_loop_v.size() -2);i!=-1;i--){
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

    mp_bitcnt_t i;
    for(i=(miller_loop_v.size() -2);i!=-1;i--){//-1
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

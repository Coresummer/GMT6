#include "miller.h"
#include "efp6.h"
#include "fp.h"

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

//double line 
void ff_lttp(fp6_t *f, efp_jacobian_t *S, efp_t *P){
  fp6_sqr(f,f);

  static fp_t tmp1_fp, tmp2_fp,tmp3_fp;
  static fp_t t1,t2,t3;
  static fp_t nextX,nextY,nextZ;

  static fp6_t tmp1_fp6;

  fp_sqr(&t1,&S->y);

  fp_mul(&t2,&S->x,&t1);
  fp_mul_ui(&t2,&t2,4);

  fp_sqr(&t3,&S->x);
  fp_mul_ui(&t3,&t3,3);

  fp_sqr(&nextX,&t3);
  fp_mul_ui(&tmp1_fp,&t2,2);
  fp_sub(&nextX,&nextX,&tmp1_fp);

  fp_sub(&nextY,&t2,&nextX);
  fp_mul(&nextY,&nextY,&t3);
  fp_sqr(&tmp1_fp,&t1);
  fp_mul_ui(&tmp1_fp,&tmp1_fp,8);
  fp_sub(&nextY,&nextY,&tmp1_fp);

  fp_mul_ui(&nextZ,&S->y,2);
  fp_mul(&nextZ,&nextZ,&S->z);

  fp_sqr(&tmp1_fp,&S->z);
  fp_mul(&tmp1_fp6.x0.x1,&nextZ,&tmp1_fp); //tmp1_fp = rambda_d
  fp_mul_base_inv(&tmp1_fp6.x0.x1,&tmp1_fp6.x0.x1);
  fp_mul(&tmp1_fp6.x0.x1,&tmp1_fp6.x0.x1,&P->y);

  fp_lshift_1(&tmp2_fp,&t1);//lshift
  fp_mul(&tmp3_fp,&t3,&S->x);
  fp_sub(&tmp1_fp6.x0.x0,&tmp3_fp,&tmp2_fp);

  fp_mul(&tmp1_fp6.x1.x1,&t3,&P->x);
  fp_mul(&tmp1_fp6.x1.x1,&tmp1_fp6.x1.x1,&tmp1_fp);
  fp_set_neg(&tmp1_fp6.x1.x1,&tmp1_fp6.x1.x1);
  fp_mul_base_inv(&tmp1_fp6.x1.x1,&tmp1_fp6.x1.x1);

  fp6_mul_sparse_dbl(f,&tmp1_fp6,f); //Capable for further Karatsuba
  // fp6_mul(f,f,&tmp1_fp6);

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
  fp_mul_ui(&tmp2_fp,&t5,2);
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

  fp6_mul_sparse_add(f,&tmp1_fp6,f); //Capable for further Karatsuba
  // fp6_mul(f,f,&tmp1_fp6);

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
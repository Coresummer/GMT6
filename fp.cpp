#include "define.h"

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <gmp.h>
#include <string>
#define TTT_INSTANCE_HERE

#include "fp.h"
#include "mpn.h"

void fp_init(fp_t *A){
  *(fp_t*)A = 0;
}

void fpd_init(fpd_t *A) { 
   *(fpd_t*)A= 0;
}

void fp_printf(std::string str ,fp_t *A){
    std::cout << str ;
    const uint8_t *p = (const uint8_t*)A;
    bool zeroflag = true;
    for (int i = sizeof(A)*FPLIMB -1 ; i >= 0 ; i--) {
        if (p[i] != 0 && zeroflag == 1) zeroflag = !zeroflag;  
        if(!zeroflag || i == 0) printf("%02x", p[i]);
    }
}

void fpd_printf(std::string str ,fpd_t *A){
    std::cout << str ;
    const uint8_t *p = (const uint8_t*)A;
    bool zeroflag = true;
    for (int i = sizeof(A)*FPLIMB2 -1 ; i >= 0 ; i--) {
        if (p[i] != 0 && zeroflag == 1) zeroflag = !zeroflag;  
        if(!zeroflag || i == 0) printf("%02x", p[i]);    
    }
}

void fp_println(std::string str ,fp_t *A){
    std::cout << str ;
    const uint8_t *p = (const uint8_t*)A;
    bool zeroflag = true;
    for (int i = sizeof(A)*FPLIMB -1 ; i >= 0 ; i--) {
        if (p[i] != 0 && zeroflag == 1) zeroflag = !zeroflag;  
        if(!zeroflag || i == 0) printf("%02x", p[i]);
    }
    printf("\n");

}
void fpd_println(std::string str ,fpd_t *A){
    std::cout << str ;
    const uint8_t *p = (const uint8_t*)A;
    bool zeroflag = true;
    for (int i = sizeof(A)*FPLIMB2 -1 ; i >= 0 ; i--) {
      if (p[i] != 0 && zeroflag == 1) zeroflag = !zeroflag;  
      if(!zeroflag || i == 0) printf("%02x", p[i]);    
    }
    printf("\n");
}

// void fp_printf_montgomery(std::string str ,fp_t *A){
//   static fp_t out;
//   fp_mod_montgomery(&out,A);
//   gmp_printf("%s%Nu",str.c_str(),out.x0,FPLIMB);
// }

// void fp_println_montgomery(std::string str , fp_t *A) {
//   static fp_t out;
//   fp_mod_montgomery(&out, A);
//   gmp_printf("%s%Nu\n", str.c_str(), out.x0, FPLIMB);
// }

void fp_set(fp_t *ANS,fp_t *A){
 const fp_t a = *(const fp_t*)A;
  *(fp_t*)ANS = a;
}

void fp_set_ui(fp_t *ANS,unsigned long int UI){
 *(fp_t*)ANS= UI;
}

void fpd_set(fpd_t *ANS,fpd_t *A){
 const fpd_t a = *(const fpd_t*)A;
  *(fpd_t*)ANS = a;
}

void fpd_set_ui(fpd_t *ANS,unsigned long int UI){
 *(fpd_t*)ANS= UI;
}

void mpn_set_fp(mp_limb_t *ANS, fp_t *A){
  unsigned long *p = (unsigned long*)(A);
  mpn_zero(ANS,FPLIMB);
  for(int i=0;i<FPLIMB;i++){
    ANS[i] = p[i]; 
  }
}

void mpn_set_fpd(mp_limb_t *ANS, fpd_t *A){
  unsigned long *p = (unsigned long*)(A);
  mpn_zero(ANS,FPLIMB2);
  for(int i=0;i<FPLIMB2;i++){
    ANS[i] = p[i]; 
  }
}

void fp_set_mpn(fp_t *ANS, mp_limb_t *A){
  unsigned long *p = (unsigned long*)(ANS);
  for(int i=0;i<FPLIMB;i++){
    p[i] = A[i]; 
  }
}

void fp_set_str(fp_t *A, std::string& str){//here
  //when str is odd number, padding 0 to the head
  uint8_t *p = (uint8_t*)A;
  *(fp_t*)p = 0;
  if(str.length() < FPLIMB*ARCBIT) {
    if(str.length() %2 ==1)str.insert(0, "0");
    int strMaxIndex = str.length()/2;
    for (int i = 0; i < strMaxIndex ; i++) {
      if(i>=FPLIMB*ARCBIT) break;
      p[i] = (uint8_t)std::strtol(str.substr(2*(strMaxIndex-i-1),2).c_str(), NULL, 16);
    }
  }else{
    printf("fp_set_str error: input string too big.\n");
  }
}

void fpd_set_str(fpd_t *A, std::string& str){//here
  //when str is odd number, padding 0 to the head
  uint8_t *p = (uint8_t*)A;
  *(fp_t*)p = 0;
  if(str.length() < FPLIMB2*ARCBIT) {
    if(str.length() %2 ==1)str.insert(0, "0");
    int strMaxIndex = str.length()/2;
    for (int i = 0; i < strMaxIndex ; i++) {
      if(i>=FPLIMB2*ARCBIT) break;
      p[i] = (uint8_t)std::strtol(str.substr(2*(strMaxIndex-i-1),2).c_str(), NULL, 16);
    }
  }else{
    printf("fp_set_str error: input string too big.\n");
  }

}

void fp_set_neg(fp_t *ANS,fp_t *A){

  if (fp_cmp_zero(A) == 0) fp_set(ANS, A);
  else fp_sub(ANS, &prime, A);
}

void fp_set_neg_montgomery(fp_t *ANS,fp_t *A){

  if (fp_cmp_zero(A) == 0) fp_set(ANS, A);
  else fp_sub(ANS, &prime, A);
}

void fpd_set_neg_montgomery(fpd_t *ANS,fpd_t *A){
  if (fpd_cmp_zero(A) == 0) fpd_set(ANS, A);
  else fp_sub_nonmod_double(ANS, &prime705, A);
}

void fp_lshift(fp_t *ANS, fp_t *A, unsigned long int UI) {
  if(UI>=1){
    fp_t tmp_UI;
    fp_init(&tmp_UI);
    fp_set_ui(&tmp_UI,UI);
    *(fp_t *)ANS = *(fp_t *)A << *(fp_t *)&tmp_UI;
  }
}

void fp_l1shift(fp_t *ANS, fp_t *A) {
#ifdef DEBUG_COST_A
  cost_add++;
#endif
    *(fp_t *)ANS = *(fp_t *)A << *(fp_t *)&fp_t_one;
}

void fp_l1shift_nonmod_single(fp_t *ANS, fp_t *A) {
#ifdef DEBUG_COST_A
  cost_add++;
#endif
    *(fp_t *)ANS = *(fp_t *)A << *(fp_t *)&fp_t_one;
}

// void fp_l1shift_nonmod_double(fpd_t *ANS, fpd_t *A) {
// #ifdef DEBUG_COST_A
//   cost_add++;
// #endif
//   mpn_lshift(ANS->x0, A->x0, FPLIMB2, 1);
// }

// void fp_l1shift_double(fpd_t *ANS, fpd_t *A) {
// #ifdef DEBUG_COST_A
//   cost_add++;
// #endif
//   mpn_lshift(ANS->x0, A->x0, FPLIMB2, 1);
//   if (mpn_cmp(ANS->x0, prime, FPLIMB2) >= 0)mpn_sub_n(ANS->x0, ANS->x0, prime, FPLIMB2);
// }

void fp_r1shift(fp_t *ANS, fp_t *A) {
#ifdef DEBUG_COST_A
  cost_add++;
#endif
    *(fp_t *)ANS = *(fp_t *)A >> *(fp_t *)&fp_t_one;
}

void fp_r1shift_nonmod_single(fp_t *ANS, fp_t *A) {
#ifdef DEBUG_COST_A
  cost_add++;
#endif
    *(fp_t *)ANS = *(fp_t *)A >> *(fp_t *)&fp_t_one;
}

void fp_set_random(fp_t *ANS,gmp_randstate_t state){
  mp_limb_t mpn_ANS[FPLIMB];
  mpn_zero(mpn_ANS,FPLIMB);
  mpz_t tmp;
  mpz_init(tmp);
  mpz_urandomm(tmp,state,prime_z);
  mpn_set_mpz(mpn_ANS,tmp);
  fp_set_mpn(ANS, mpn_ANS);
  mpz_clear(tmp);
}

// void fp_set_random_montgomery(fp_t *ANS, gmp_randstate_t state) {
//   mpz_t tmp;
//   mpz_init(tmp);
//   mpz_urandomm(tmp, state, prime_z);
//   mpn_set_mpz(ANS->x0, tmp);
//   mpz_clear(tmp);
//   fp_to_montgomery(ANS, ANS);
// }

void pre_montgomery() {
  mp_limb_t tmp1[FPLIMB + 1], tmp2[FPLIMB2 + 2];
  mpz_t tmp_z;
  mpz_t R;
  mpz_t R3_z;

  mpz_init(tmp_z);
  mpz_init(R);
  mpz_init(R3_z);

  for (int i = 0; i < FPLIMB; i++)
    N[i] = prime_mpn[i];
  mpz_ui_pow_ui(R, 2, FPLIMB_BITS);
  mpz_invert(tmp_z, prime_z, R);
  mpz_sub(tmp_z, R, tmp_z);
  mpn_set_mpz(tmp1, tmp_z);
  Ni_neg = tmp1[0];

  mpn_set_mpz(tmp1, R);
  mpn_mod(tmp1, tmp1, FPLIMB + 1);
  mpn_copyd(RmodP, tmp1, FPLIMB);
  mpz_pow_ui(R3_z, R, 3);
  mpz_mod(R3_z, R3_z, prime_z);
  mpn_set_mpz(R3, R3_z);

  mpz_clear(tmp_z);
  mpz_clear(R);
  mpz_clear(R3_z);
}

// void fp_mulmod_montgomery(fp_t *ANS, fp_t *A, fp_t *B) {
// #ifdef DEBUG_COST_A
//   cost_mul++;
//   cost_mod++;
// #endif
//   static mp_limb_t T[FPLIMB2];
//   mpn_zero(T, FPLIMB2);

//   mpn_mul_n(T, A->x0, B->x0, FPLIMB);
//   for (int i = 0; i < FPLIMB; i++)
//     T[i] = mpn_addmul_1(&T[i], prime, FPLIMB, T[i] * Ni_neg);

//   mpn_add_n(ANS->x0, T + FPLIMB, T, FPLIMB);
//   if (mpn_cmp(ANS->x0, prime, FPLIMB) != -1)
//     mpn_sub_n(ANS->x0, ANS->x0, prime, FPLIMB);
// }

// void fp_sqrmod_montgomery(fp_t *ANS, fp_t *A) {
// #ifdef DEBUG_COST_A
//   cost_sqr++;
//   cost_mod++;
// #endif
//   static mp_limb_t T[FPLIMB2];
//   mpn_zero(T, FPLIMB2);

//   mpn_sqr(T, A->x0, FPLIMB);
//   for (int i = 0; i < FPLIMB; i++)
//     T[i] = mpn_addmul_1(&T[i], prime, FPLIMB, T[i] * Ni_neg);

//   mpn_add_n(ANS->x0, T + FPLIMB, T, FPLIMB);
//   if (mpn_cmp(ANS->x0, prime, FPLIMB) != -1)
//     mpn_sub_n(ANS->x0, ANS->x0, prime, FPLIMB);
// }

// void fp_mod_montgomery(fp_t *ANS, fp_t *A) {
// #ifdef DEBUG_COST_A
//   cost_mod++;
// #endif
//   static fpd_t T;
//   fpd_init(&T);

//   mpn_copyd(T, A->x0, FPLIMB);
//   for (int i = 0; i < FPLIMB; i++)
//     T[i] = mpn_addmul_1(&T[i], prime, FPLIMB, T[i] * Ni_neg);

//   mpn_add_n(ANS->x0, T + FPLIMB, T, FPLIMB);
//   if (mpn_cmp(ANS->x0, prime, FPLIMB) != -1)
//     mpn_sub_n(ANS->x0, ANS->x0, prime, FPLIMB);
// }

void fp_to_montgomery(fp_t *ANS, fp_t *A) {
#ifdef DEBUG_COST_A
  // cost_mod++;
  cost_mod_nomal++;
#endif
  static int i;
  static fpd_t tmp;
  fpd_init(&tmp);

  uint64_t *p = (uint64_t*)A;
  uint64_t *q = (uint64_t*)&tmp;

  for (i = FPLIMB; i < FPLIMB2; i++)q[i] = p[i - FPLIMB];// 
  fp_mod(ANS, &tmp);
}

void fp_mod(fp_t *ans, fpd_t *a) {//mod fpd to fp
#ifdef DEBUG_COST_A
  cost_mod_nomal++;
#endif
  mp_limb_t mp_a[FPLIMB2], mp_ans[FPLIMB];
  mp_limb_t dumy[FPLIMB2];
  mpn_set_fpd(mp_a, a);
  mpn_tdiv_qr(dumy, mp_ans, 0, mp_a, FPLIMB2, prime_mpn, FPLIMB);
  fp_set_mpn(ans, mp_ans);
  // *(fp_t*)ans = *(fp_t*)a % *(fp_t*)&prime;
}

void fp_mul_1(fpd_t *ANS, fp_t *A, uint64_t *B,int Bindex){ //

}

void fp_mul(fp_t *ANS, fp_t *A, fp_t *B) {
#ifdef DEBUG_COST_A
  cost_mul++;
#endif
  fpd_t tmp_ans;
  fpd_init(&tmp_ans);
  tmp_ans = fpd_t(*A) * fpd_t(*B);
  fp_mod(ANS, &tmp_ans);
}

void fp_sqr(fp_t *ANS, fp_t *A) {
#ifdef DEBUG_COST_A
  cost_mul++;
#endif
  fpd_t tmp_ans;
  fpd_init(&tmp_ans);
  *(fpd_t*)ANS = *(fp_t*)A *  *(fp_t*)A;
  fp_mod(ANS, &tmp_ans);
}

void fp_mul_nonmod(fpd_t *ANS, fp_t *A, fp_t *B) {
#ifdef DEBUG_COST_A
  cost_mul++;
#endif
  *ANS = fpd_t(*A) * fpd_t(*B);
  }

void fp_sqr_nonmod(fpd_t *ANS, fp_t *A) {
#ifdef DEBUG_COST_A
  cost_mul++;
#endif
  *(fpd_t*)ANS = *(fp_t*)A *  *(fp_t*)A;
}

void fp_add(fp_t *ANS, fp_t *A, fp_t *B) {
#ifdef DEBUG_COST_A
  cost_add++;
#endif
  *(fp_t*)ANS = *(fp_t*)A - *(fp_t*)B;
}

void fp_add_nonmod_single(fp_t *ANS, fp_t *A, fp_t *B) {
#ifdef DEBUG_COST_A
  cost_add_nonmod++;
#endif
  *(fp_t*)ANS = *(fp_t*)A - *(fp_t*)B;
}

void fp_add_nonmod_double(fpd_t *ANS, fpd_t *A, fpd_t *B) {
#ifdef DEBUG_COST_A
  cost_add_nonmod_double++;
#endif
  *(fpd_t*)ANS = *(fpd_t*)A - *(fpd_t*)B;
}

void fp_sub(fp_t *ANS, fp_t *A, fp_t *B) {
  #ifdef DEBUG_COST_A
  cost_sub++;
  #endif
  *(fp_t*)ANS = *(fp_t*)A - *(fp_t*)B;
}

void fp_sub_nonmod_single(fp_t *ANS, fp_t *A, fp_t *B) {
#ifdef DEBUG_COST_A
  cost_sub_nonmod++;
#endif

  *(fp_t*)ANS = *(fp_t*)A - *(fp_t*)B;

}

void fp_sub_nonmod_double(fpd_t *ANS, fpd_t *A, fpd_t *B) {
#ifdef DEBUG_COST_A
  cost_sub_nonmod_double++;
#endif
  *(fpd_t*)ANS = *(fpd_t*)A - *(fpd_t*)B;

}

void fp_inv(fp_t *ANS, fp_t *A) {
#ifdef DEBUG_COST_A
  cost_inv++;
#endif
  static mp_limb_t mpn_A[FPLIMB], mpn_ANS[FPLIMB];
  static mp_limb_t prime_tmp[FPLIMB], gp[FPLIMB], sp[FPLIMB], buf[FPLIMB];
  static mp_size_t buf_size;

  mpn_set_fp(mpn_A,A);
  mpn_set_fp(prime_tmp,&prime);
  
  mpn_zero(sp,FPLIMB);

  mpn_add_n(buf, mpn_A, prime_mpn, FPLIMB);
  mpn_gcdext(gp, sp, &buf_size, buf, FPLIMB, prime_tmp, FPLIMB);

  if (buf_size < 0) {
    mpn_sub_n(mpn_ANS, prime_mpn, sp, FPLIMB);
  } else {
    mpn_copyd(mpn_ANS, sp, FPLIMB);
  }

  fp_set_mpn(ANS, mpn_ANS);
}

// void fp_inv_montgomery(fp_t *ANS, fp_t *A) {
// #ifdef DEBUG_COST_A
//   cost_mul--;
//   cost_mod--;
// #endif
//   fp_inv(ANS, A);
//   mpn_mulmod_montgomery(ANS->x0, FPLIMB, ANS->x0, FPLIMB, R3, FPLIMB);
// }

int fp_legendre(fp_t *A) {
  int i;
  mpz_t tmp1, tmp2;
  fp_t tmp1_fp;
  mpz_init(tmp1);
  mpz_init(tmp2);
  fp_init(&tmp1_fp);

  mpz_sub_ui(tmp1, prime_z, 1);
  mpz_tdiv_q_ui(tmp2, tmp1, 2);
  fp_pow(&tmp1_fp, A, tmp2);

  if (fp_cmp_one(&tmp1_fp) == 0)
    i = 1;
  else if (fp_cmp_zero(&tmp1_fp) == 0)
    i = 0;
  else
    i = -1;

  mpz_clear(tmp1);
  mpz_clear(tmp2);

  return i;
}

// int fp_isCNR(fp_t *A) {
//   fp_t tmp;
//   fp_init(&tmp);
//   mpz_t exp;
//   mpz_init(exp);

//   mpz_sub_ui(exp, prime_z, 1);
//   mpz_tdiv_q_ui(exp, exp, 3);
//   fp_pow(&tmp, A, exp);

//   if (fp_cmp_one(&tmp) == 0) {
//     mpz_clear(exp);
//     return 1;
//   } else {
//     mpz_clear(exp);
//     return -1;
//   }
// }

void fp_sqrt(fp_t *ANS, fp_t *A) {
  fp_t x, y, t, k, n, tmp;
  fp_init(&x);
  fp_init(&y);
  fp_init(&t);
  fp_init(&k);
  fp_init(&n);
  fp_init(&tmp);
  unsigned long int e, m;
  mpz_t exp, q, z, result;
  mpz_init(exp);
  mpz_init(q);
  mpz_init(z);
  mpz_init(result);
  gmp_randstate_t state1;
  gmp_randinit_default(state1);
  gmp_randseed_ui(state1, (unsigned long)time(NULL));
  fp_set_random(&n, state1);

  while (fp_legendre(&n) != -1) {
    fp_set_random(&n, state1);
  }
  mpz_sub_ui(q, prime_z, 1);
  mpz_mod_ui(result, q, 2);
  e = 0;
  while (mpz_cmp_ui(result, 0) == 0) {
    mpz_tdiv_q_ui(q, q, 2);
    mpz_mod_ui(result, q, 2);
    e++;
  }
  fp_pow(&y, &n, q);
  mpz_set_ui(z, e);
  mpz_sub_ui(exp, q, 1);
  mpz_tdiv_q_ui(exp, exp, 2);
  fp_pow(&x, A, exp);
  fp_mul(&tmp, &x, &x);
  fp_mul(&k, &tmp, A);
  fp_mul(&x, &x, A);
  while (fp_cmp_one(&k) != 0) {
    m = 1;
    mpz_ui_pow_ui(exp, 2, m);
    fp_pow(&tmp, &k, exp);
    while (fp_cmp_one(&tmp) != 0) {
      m++;
      mpz_ui_pow_ui(exp, 2, m);
      fp_pow(&tmp, &k, exp);
    }
    mpz_sub_ui(exp, z, m);
    mpz_sub_ui(exp, exp, 1);
    mpz_ui_pow_ui(result, 2, mpz_get_ui(exp));
    fp_pow(&t, &y, result);
    fp_mul(&y, &t, &t);
    mpz_set_ui(z, m);
    fp_mul(&x, &x, &t);
    fp_mul(&k, &k, &y);
  }
  fp_set(ANS, &x);

  mpz_clear(exp);
  mpz_clear(q);
  mpz_clear(z);
  mpz_clear(result);
}

void fp_pow(fp_t *ANS, fp_t *A, mpz_t scalar) {
  int i, length;
  length = (int)mpz_sizeinbase(scalar, 2);
  char binary[length + 1];
  mpz_get_str(binary, 2, scalar);
  fp_t tmp;
  fp_init(&tmp); // not need?
  fp_set(&tmp, A);

  for (i = 1; i < length; i++) {
    fp_mul(&tmp, &tmp, &tmp);
    if (binary[i] == '1') {
      fp_mul(&tmp, A, &tmp);
    }
  }
  fp_set(ANS, &tmp);
}

// void fp_pow_montgomery(fp_t *ANS, fp_t *A, mpz_t scalar) {
//   int length = (int)mpz_sizeinbase(scalar, 2);
//   char binary[length + 1];
//   mpz_get_str(binary, 2, scalar);
//   fp_t tmp;
//   fp_init(&tmp); // not need?

//   fp_set(&tmp, A);

//   for (int i = 1; i < length; i++) {
//     fp_sqrmod_montgomery(&tmp, &tmp);
//     if (binary[i] == '1') {
//       fp_mulmod_montgomery(&tmp, A, &tmp);
//     }
//   }
//   fp_set(ANS, &tmp);
// }

// // TODO: consider modification "return mpn_cmp()"
int fp_cmp(fp_t *A, fp_t *B) {
  if (*(fp_t *)A == *(fp_t *)B)
    return 0;
  else
    return 1;
}

int fp_cmp_zero(fp_t *A) {
  if (*(fp_t *)A == fp_t_zero )
    return 0;
  else
    return 1;
}

int fp_cmp_one(fp_t *A) {
  if (*(fp_t *)A == fp_t_one )
    return 0;
  else
    return 1;
}

int fpd_cmp_zero(fpd_t *A) {
  if (*(fpd_t *)A == fpd_t_zero )
    return 0;
  else
    return 1;
}

int fpd_cmp_one(fp_t *A) {
  if (*(fpd_t *)A == fpd_t_one )
    return 0;
  else
    return 1;
}

// int fp_montgomery_trick_montgomery(fp_t *A_inv, fp_t *A, int n) {
//   int i;
//   fp_t ANS[n], ALL_inv;

//   fp_set(ANS, A);

//   for (i = 1; i < n; i++) {
//     fp_mulmod_montgomery(&ANS[i], &ANS[i - 1], &A[i]);
//   }
//   fp_inv_montgomery(&ALL_inv, &ANS[n - 1]);
//   for (i = n - 1; i > 0; i--) {
//     fp_mulmod_montgomery(&A_inv[i], &ALL_inv, &ANS[i - 1]);
//     fp_mulmod_montgomery(&ALL_inv, &ALL_inv, &A[i]);
//   }

//   fp_set(A_inv, &ALL_inv);
//   return 0;
// }

// void fp_lshift_ui_nonmod_single(fp_t *ANS, fp_t *A, int s) {
// #ifdef DEBUG_COST_A
//   cost_add_ui++;
// #endif
//   mpn_lshift(ANS->x0, A->x0, FPLIMB, s);
// }

// void fp_lshift_ui_nonmod_double(fpd_t *ANS, fpd_t *A, int s) {
// #ifdef DEBUG_COST_A
//   cost_sqr++;
// #endif
//   mpn_lshift(ANS->x0, A->x0, FPLIMB2, s);
// }

// int fp_legendre_sqrt(fp_t *ANS, fp_t *A) {
//   // need to 4|(p+1)
//   fp_t C, D, A_tmp;
//   int i;

//   // legendre
//   fp_pow(&C, A, sqrt_power_z);
//   fp_mul(&D, &C, &C);
//   fp_mul(&D, &D, A);

//   if (mpn_cmp_ui(D.x0, FPLIMB, 1) == 0)
//     i = 1;
//   else if (mpn_cmp_ui(D.x0, FPLIMB, 0) == 0)
//     return 0;
//   else
//     return -1;

//   // sqrt
//   fp_mul(ANS, &C, A);
//   return 1;
// }

// int fp_legendre_sqrt_montgomery(fp_t *ANS, fp_t *A) {
//   // need to 4|(p+1)

//   if (fp_cmp_zero(A) == 0) {
//     fp_set(ANS, A);
//     return 0;
//   }

//   fp_t C, D, A_tmp;

//   // legendre
//   fp_pow_montgomery(&C, A, sqrt_power_z);
//   fp_mulmod_montgomery(&D, &C, &C);
//   fp_mulmod_montgomery(&D, &D, A);
//   if (fp_cmp_mpn(&D, RmodP) != 0) {
//     return -1;
//   }

//   // sqrt
//   fp_mulmod_montgomery(ANS, &C, A);
//   return 1;
// }

// void fp_mul_base(fp_t *ANS,fp_t *A){
//   #ifdef DEBUG_COST_A
//   cost_add++;
//   // cost_mul_base++;
//   // cost_mul--;
//   #endif
//   // fp_mul(ANS,A,&base_c);
//   fp_l1shift(ANS,A);
// }

// void fp_mul_base_nonmod_sigle(fp_t *ANS,fp_t *A){
//   #ifdef DEBUG_COST_A
//   cost_add++;
//   // cost_mul_base++;
//   // cost_mul--;
//   #endif
//   fp_l1shift_nonmod_single(ANS,A);
// }

// void fp_mul_base_nonmod_double(fpd_t *ANS,fpd_t *A){
//   #ifdef DEBUG_COST_A
//   cost_add++;
//   // cost_mul_base++;
//   // cost_mul--;
//   #endif
//   // fp_mul(ANS,A,&base_c);
//   fp_l1shift_double(ANS,A);
// }

// void fp_mul_base_inv(fp_t *ANS,fp_t *A){

//   if( __builtin_ctzl(A->x0[0]) >= 1){
//   #ifdef DEBUG_COST_A
//   cost_add++;
//   #endif
//     fp_r1shift(ANS,A);
//   }else{
//     fp_mul(ANS,A,&base_c_inv);
//   }
// }

// void fp_mul_base_inv_single(fp_t *ANS,fp_t *A){
//   // #ifdef DEBUG_COST_A
//   // cost_add++;
//   // #endif
//   fp_r1shift(ANS,A);

//   // if( __builtin_ctzl(A->x0[0]) >= 1){

//   // }else{
//   //   fp_mulmod_montgomery(ANS,&tmp_A,&base_c_inv);
//   // }
//   // // fp_mulmod_montgomery(ANS,&tmp_A,&base_c_inv);
// }
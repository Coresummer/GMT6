#define TTT_INSTANCE_HERE

#include "fp.h"

typedef unsigned _ExtInt(BITS)  fp_t;
typedef unsigned _ExtInt(DBITS) fpd_t;

char* toCharPtr(std::string str){
    int len = sizeof(char)*(str.length() + 1);
    char* res = (char*)malloc(len);
    memcpy(res, str.c_str(), len);
    return res;
}

void fp_field_setup(){
    *(fp_t*)cp_prime.v0 = 9007199254740997;
}

void fp_init(fp *A){
  *(fp_t*)A->v0 = 0;
}
void fpd_init(fpd *A){
  *(fpd_t*)A->v0 = 0;
}

void fp_init_set_ui(fp *A,const uint64_t UI){
  fp_t ui = UI;
  *(fp_t*)A->v0 = ui % *(fp_t*)cp_prime.v0;
}

char* fp_get_str(const fp *A){
  char* res = (char*)malloc(sizeof(char)*BWORDS*2+2);
  bool zeroflag = false;
  if (A == NULL){
    res[0] = '\0';
  }else{
    uint8_t buf[BWORDS];
    memcpy(buf, A->v0, sizeof(buf));
    for(int i=BWORDS-1;i>=0; i--){
      sprintf(&res[(BWORDS-1)*2 - 2*i],"%02x",buf[i]);
    }
    res[2*BWORDS] = '\n';
    res[2*BWORDS+1] = '\0';
  }
  return res;
}

char* fpd_get_str(const fpd *A){
  char* res = (char*)malloc(sizeof(char)*DBWORDS*2+2);
  bool zeroflag = false;
  if (A == NULL){
    res[0] = '\0';
  }else{
    uint8_t buf[DBWORDS];
    memcpy(buf, A->v0, sizeof(buf));
    for(int i=DBWORDS-1;i>=0; i--){
      sprintf(&res[(DBWORDS-1)*2 - 2*i],"%02x",buf[i]);
    }
    res[2*DBWORDS] = '\n';
    res[2*DBWORDS+1] = '\0';
  }
  return res;
}

void fp_t_print(fp_t *op, std::string str){
    std::cout << str ;
    // printf("%s",str);

    uint8_t buf[BWORDS];
    memcpy(buf, op, sizeof(buf));
    printf("0x");
    if(buf[0]==0){
        printf("0\n");
    }else{
        for(int i=BWORDS-1;i>=0;i--){
        if(buf[i] != 0) printf("%x",buf[i]);
        }
        printf("\n");
    }
}

void fpd_t_print(fp_t *op, std::string str){
    std::cout << str ;
    // printf("%s",str);

    uint8_t buf[DBWORDS];
    memcpy(buf, op, sizeof(buf));
    printf("0x");
    if(buf[0]==0){
        printf("0\n");
    }else{
        for(int i=DBWORDS-1;i>=0;i--){
        if(buf[i] != 0) printf("%x",buf[i]);
        }
        printf("\n");
    }
}

void fp_print(const std::string str,const fp *A){
  printf("%s",toCharPtr(str));
  char* fp_str = fp_get_str(A);
  printf("Fp:0x%s",fp_str);
  free(fp_str);
}

void fp_println(const std::string str,const fp *A){
  printf("%s",toCharPtr(str));
  char* fp_str = fp_get_str(A);
  printf("Fp:0x%s",fp_str);
  free(fp_str);
  printf("\n");
}

void fpd_print(const std::string str,const fpd *A){
  printf("%s",toCharPtr(str));
  char* fp_str = fpd_get_str(A);
  printf("Fp:0x%s",fp_str);
  free(fp_str);
}

void fpd_println(const std::string str,const fpd *A){
  printf("%s",toCharPtr(str));
  char* fp_str = fpd_get_str(A);
  printf("Fp:0x%s",fp_str);
  free(fp_str);
  printf("\n");
}

// void fp_printf_montgomery(std::string str,fp *A){
//   static fp out;
//   fp_mod_montgomery(&out,A);
//   gmp_printf("%s%Nu",str,out.x0,FPLIMB);
// }

void fp_set(fp *ANS,const fp *A){
  const fp_t a = *(const fp_t*)A;
  *(fp_t*)ANS->v0 = a;
}

void mpz_set_fp( mpz_t* ANS, const fp *A){
  mpz_import(*ANS, WORDS64 ,-1, sizeof(A->v0[0]) ,0 ,0 ,A->v0);
}

void fp_set_mpz(fp *ANS,const mpz_t A){
  // mpz_export();
}

void fpd_set(fpd *ANS,const fpd *A){
  const fp_t a = *(const fp_t*)A;
  *(fpd_t*)ANS->v0 = a;
}

void fp_set_ui(fp *ANS,const uint64_t UI){
   *(fp_t*)ANS->v0 = UI;
}

void fp_set_neg(fp *ANS,const fp *A){
    const fp_t a = *(const fp_t*)A->v0;
   *(fp_t*)ANS->v0 = *(fp_t*)cp_prime.v0 - a ;
}

// void fp_set_neg_montgomery(fp *ANS,fp *A){
//   #ifdef DEBUG_ASSERT
//   assert(mpn_cmp(A->x0,prime,FPLIMB)>0)
//   #endif
//   mpn_sub_n(ANS->x0,prime,A->x0,FPLIMB);
//   //fp_mod(ANS,ANS->x0,FPLIMB);
// }

void fp_lshift_1(fp *ANS,const fp *A){
    const fp_t& a = *(fp_t*)A;
   *(fp_t*)ANS->v0 =  1<<a;
}

void fp_rshift_1(fp *ANS,const fp *A){
    const fp_t& a = *(fp_t*)A->v0;
   *(fp_t*)ANS->v0 = a>>1;
}

// void fp_hlv(fp *ANS,fp *A){
//   static mp_limb_t buf[FPLIMB];
//   if(A->x0[0] & 1) mpn_add_n(buf,A->x0,prime,FPLIMB);
//   else mpn_copyd(buf,A->x0,FPLIMB);
//   mpn_rshift(ANS->x0,buf,FPLIMB,1);
// }

// void fp_set_random(fp *ANS,gmp_randstate_t state){
//   mpz_t tmp;
//   mpz_init(tmp);
//   mpz_urandomm(tmp,state,cp_prime_z);
//   fp_set_mpz(ANS,tmp);
//   mpz_clear(tmp);
// }

// void pre_montgomery(){
//   mp_limb_t tmp1[FPLIMB+1],tmp2[FPLIMB2+2];
//   mpz_t N2;
//   mpz_t NN;
//   mpz_init(N2);
//   mpz_init(NN);
//   mpz_ui_pow_ui(NN,2,FPLIMB_BITS);
//   mpz_invert(N2,prime_z,NN);
//   mpz_sub(N2,NN,N2);
//   mpn_set_mpz(u,N2);
//   mpn_zero(N,FPLIMB2);
//   for(int i=0;i<FPLIMB;i++){
//     N[i]=prime[i];
//   }
//   mpn_set_mpz(tmp1,NN);
//   mpn_mod(RmodP,tmp1,FPLIMB+1);
//   mpn_mul_n(tmp2,tmp1,tmp1,FPLIMB+1);
//   mpn_mod(R2,tmp2,FPLIMB2+2);
//   mpn_mul(tmp2,R2,FPLIMB,tmp1,FPLIMB+1);
//   mpn_mod(R3,tmp2,FPLIMB2+2);
//   mpz_clear(N2);
//   mpz_clear(NN);
// }

// void fp_mulmod_montgomery(fp *ANS,fp *A,fp *B){
//   #ifdef DEBUG_COST_A
//   cost_mul++;
//   cost_mod++;
//   #endif
//   unsigned long int carry;
//   mp_limb_t r;
//   static mp_limb_t T[FPLIMB2];
//   static unsigned int index=0;
//   static unsigned long int c;
//   static int i,j;
//   mpn_zero(T,FPLIMB2);

//   mpn_mul_n(T,A->x0,B->x0,FPLIMB);
//   index=0;
//   for (i = 0; i < FPLIMB; i++,index++) {
//     r = (mp_limb_t)(T[index] * u[0]);
//     T[index] = mpn_addmul_1(T+index,prime,FPLIMB,r);
//   }
//   carry = mpn_add_n(ANS->x0, T+FPLIMB, T, FPLIMB);
//   if (carry || (mpn_cmp(ANS->x0, prime, FPLIMB) != -1)) {
//     carry = mpn_sub_n(ANS->x0,ANS->x0,prime,FPLIMB);
//   }
// }

// void mpn_mulmod_montgomery(mp_limb_t *ANS,mp_size_t ANS_size,mp_limb_t *A,mp_size_t A_size,mp_limb_t *B,mp_size_t B_size){
//   #ifdef DEBUG_COST_A
//   cost_mul++;
//   cost_mod++;
//   #endif

//   unsigned long int carry;
//   mp_limb_t r;
//   static mp_limb_t T[FPLIMB2];
//   static unsigned int index=0;
//   static unsigned long int c;
//   static int i,j;
//   mpn_zero(T,FPLIMB2);

//   mpn_mul(T,A,A_size,B,B_size);
//   index=0;
//   for (i = 0; i < FPLIMB; i++,index++) {
//     r = (mp_limb_t)(T[index] * u[0]);
//     T[index] = mpn_addmul_1(T+index,prime,FPLIMB,r);
//   }
//   carry = mpn_add_n(ANS, T+FPLIMB, T, FPLIMB);
//   if (carry || (mpn_cmp(ANS, prime, FPLIMB) != -1)) {
//     carry = mpn_sub_n(ANS,ANS,prime,FPLIMB);
//   }
// }

// void fp_sqrmod_montgomery(fp *ANS,fp *A){
//   #ifdef DEBUG_COST_A
//   cost_sqr++;
//   cost_mod++;
//   #endif
//   unsigned long int carry;
//   mp_limb_t r;
//   static mp_limb_t T[FPLIMB2];
//   static unsigned int index=0;
//   static unsigned long int c;
//   static int i,j;
//   mpn_zero(T,FPLIMB2);

//   mpn_sqr(T,A->x0,FPLIMB);
//   index=0;
//   for (i = 0; i < FPLIMB; i++,index++) {
//     r = (mp_limb_t)(T[index] * u[0]);
//     T[index] = mpn_addmul_1(T+index,prime,FPLIMB,r);
//   }
//   carry = mpn_add_n(ANS->x0, T+FPLIMB, T, FPLIMB);
//   if (carry || (mpn_cmp(ANS->x0, prime, FPLIMB) != -1)) {
//     carry = mpn_sub_n(ANS->x0,ANS->x0,prime,FPLIMB);
//   }
// }

// void mpn_sqrmod_montgomery(mp_limb_t *ANS,mp_size_t ANS_size,mp_limb_t *A,mp_size_t A_size){
//   #ifdef DEBUG_COST_A
//   cost_sqr++;
//   cost_mod++;
//   #endif

//   unsigned long int carry;
//   mp_limb_t r;
//   static mp_limb_t T[FPLIMB2];
//   static unsigned int index=0;
//   static unsigned long int c;
//   static int i,j;
//   mpn_zero(T,FPLIMB2);

//   mpn_sqr(T,A,A_size);
//   index=0;
//   for (i = 0; i < FPLIMB; i++,index++) {
//     r = (mp_limb_t)(T[index] * u[0]);
//     T[index] = mpn_addmul_1(T+index,prime,FPLIMB,r);
//   }
//   carry = mpn_add_n(ANS, T+FPLIMB, T, FPLIMB);
//   if (carry || (mpn_cmp(ANS, prime, FPLIMB) != -1)) {
//     carry = mpn_sub_n(ANS,ANS,prime,FPLIMB);
//   }
// }

// void fp_mod_montgomery(fp *ANS,fp *A){
//   #ifdef DEBUG_COST_A
//   cost_mod++;
//   #endif
//   unsigned long int carry;
//   mp_limb_t r;
//   static mp_limb_t T[FPLIMB2];
//   static unsigned int index=0;
//   static unsigned long int c;
//   static int i,j;
//   mpn_zero(T,FPLIMB2);

//   mpn_copyd(T,A->x0,FPLIMB);
//   index=0;
//   for (i = 0; i < FPLIMB; i++,index++) {
//     r = (mp_limb_t)(T[index] * u[0]);
//     T[index] = mpn_addmul_1(T+index,prime,FPLIMB,r);
//   }
//   carry = mpn_add_n(ANS->x0, T+FPLIMB, T, FPLIMB);
//   if (carry || (mpn_cmp(ANS->x0, prime, FPLIMB) != -1)) {
//     carry = mpn_sub_n(ANS->x0,ANS->x0,prime,FPLIMB);
//   }
// }

// void mpn_mod_montgomery(mp_limb_t *ANS,mp_size_t ANS_size,mp_limb_t *A,mp_size_t A_size){
//   #ifdef DEBUG_COST_A
//   cost_mod++;
//   #endif
//   unsigned long int carry;
//   mp_limb_t r;
//   static mp_limb_t T[FPLIMB2];
//   static unsigned int index=0;
//   static unsigned long int c;
//   static int i,j;
//   mpn_zero(T,FPLIMB2);

//   mpn_copyd(T,A,A_size);
//   index=0;
//   for (i = 0; i < FPLIMB; i++,index++) {
//     r = (mp_limb_t)(T[index] * u[0]);
//     T[index] = mpn_addmul_1(T+index,prime,FPLIMB,r);
//   }
//   carry = mpn_add_n(ANS, T+FPLIMB, T, FPLIMB);
//   //if (carry || (mpn_cmp(ANS,prime, FPLIMB) != -1)) {
//   if (carry || (mpn_cmp(ANS,prime, FPLIMB) >0)) {
//     carry = mpn_sub_n(ANS,ANS,prime,FPLIMB);
//   }
//   if (carry || (mpn_cmp(ANS,prime, FPLIMB) >0)) {
//     carry = mpn_sub_n(ANS,ANS,prime,FPLIMB);
//   }
// }

// void fpo_montgomery(fp *ANS, fp *A){
//   #ifdef DEBUG_COST_A
//   cost_mod++;
//   #endif
//   static int i;
//   static mp_limb_t tmp[FPLIMB2];
//   mpn_zero(tmp,FPLIMB2);
//   for(i=FPLIMB;i<FPLIMB2;i++) tmp[i]=A->x0[i-FPLIMB];
//   mpn_mod(ANS->x0,tmp,FPLIMB2);
// }

// void mpn_to_montgomery(mp_limb_t *ANS, mp_limb_t *A){
//   #ifdef DEBUG_COST_A
//   cost_mod++;
//   #endif
//   static int i;
//   static mp_limb_t tmp[FPLIMB2];
//   mpn_zero(tmp,FPLIMB2);
//   for(i=FPLIMB;i<FPLIMB2;i++) tmp[i]=A[i-FPLIMB];
//   mpn_mod(ANS,tmp,FPLIMB2);
// }

void fp_mod(fp *ANS,const fp *A){
  #ifdef DEBUG_COST_A
  cost_mod++;
  #endif

  const fp_t a = *(const fp_t*)A->v0;
  *(fp_t*)ANS->v0 = a % *(fp_t*)cp_prime.v0;
}

void fp_mul(fp *Ans,const fp *A,const fp *B){
  #ifdef DEBUG_COST_A
  cost_mul++;
  #endif
  fpd_t a = *(const fp_t*)A->v0;
  fpd_t b = *(const fp_t*)B->v0;
  fp_t c = *(fp_t*)(a * b);

  // *(fp_t*)Ans->v0 = c % *(fp_t*)cp_prime.v0;
}

// void fp_mul_nonmod(fpd *Ans,const fp *A,const fp *B){
//   #ifdef DEBUG_COST_A
//   cost_mul++;
//   #endif
//   const fpd_t& a = *(fpd_t*)A->v0;
//   const fpd_t& b = *(fpd_t*)B->v0;
//   *(fpd_t*)Ans->v0 = a * b;
// }

// void fp_mul_ui(fp *Ans,const fp *A,const uint64_t UI){
//   #ifdef DEBUG_COST_A
//   cost_mul_ui++;
//   #endif
//   const fp_t& a = *(fp_t*)A->v0;
//   const fp_t& b = UI;

//   *(fp_t*)Ans->v0 = *(fpd_t*)(a * b) % *(fpd_t*)cp_prime.v0;

// }

// void fp_mul_fp_t(fp *Ans,const fp *A,const fp_t *B){
//   //   #ifdef DEBUG_COST_A
//   //   cost_mul++;
//   //   #endif
//   const fp_t& a = *(fp_t*)A->v0;
//   const fp_t b = *B;
//   fp z;
//   *(fp_t*)z.v0 = a * b;
//   fp_mod(Ans, &z);
// }

// void fp_sqr(fp *Ans,const fp *A){
//   //   #ifdef DEBUG_COST_A
//   //   cost_sqr++;
//   //   #endif
//   const fp_t& a = *(fp_t*)A->v0;
//   fp z;
//   *(fp_t*)z.v0 = a * a;
//   fp_mod(Ans, &z);
// }

// void fp_sqr_nonmod(fpd *Ans,const fp *A){
//   //   #ifdef DEBUG_COST_A
//   //   cost_sqr++;
//   //   #endif
//   const fp_t& a = *(fp_t*)A->v0;
//   fpd z;
//   *(fpd_t*)Ans->v0 = a * a;
// }

// void fp_add(fp *Ans,const fp *A,const fp *B){
//   #ifdef DEBUG_COST_A
//   cost_add++;
//   #endif
//   const fp_t& a = *(fp_t*)A->v0;
//   const fp_t& b = *(fp_t*)B->v0;
//   fp z;
//   *(fp_t*)z.v0 = a + b;
//   if (*(fp_t*)z.v0 >= *(fp_t*)cp_prime.v0) {
//     *(fp_t*)z.v0 -= *(fp_t*)cp_prime.v0;
//   }
//   *(fp_t*)Ans->v0 = *(fp_t*)z.v0;
// }

// void fp_add_nonmod_single(fp *ANS,fp *A,fp *B){
//   #ifdef DEBUG_COST_A
//   cost_add++;
//   #endif
//   mpn_add_n(ANS->x0,A->x0,B->x0,FPLIMB);
// }

// void fp_add_nonmod_double(fpd_t *ANS,fpd_t *A,fpd_t *B){
//   #ifdef DEBUG_COST_A
//   cost_add++;
//   #endif
//   mpn_add_n(ANS->x0,A->x0,B->x0,FPLIMB2);
// }

// void fp_add_ui(fp *Ans,const fp *A,const uint64_t UI){
//   #ifdef DEBUG_COST_A
//   cost_add_ui++;
//   #endif
//   const fp_t& a = *(fp_t*)A->v0;
//   const fp_t& b = UI;
//   fp z;
//   *(fp_t*)z.v0 = a + b;
//   if (*(fp_t*)z.v0 >= *(fp_t*)cp_prime.v0) {
//     *(fp_t*)z.v0 -= *(fp_t*)cp_prime.v0;
//   }
//   *(fp_t*)Ans->v0 = *(fp_t*)z.v0;
// }

// void fp_add_fp_t(fp *Ans,const fp *A,const fp_t *B){
//   #ifdef DEBUG_COST_A
//   cost_add++;
//   #endif

//   const fp_t& a = *(fp_t*)A->v0;
//   const fp_t& b = *B;
//   fp z;
//   *(fp_t*)z.v0 = a + b;
//   if (*(fp_t*)z.v0 >= *(fp_t*)cp_prime.v0) {
//     *(fp_t*)z.v0 -= *(fp_t*)cp_prime.v0;
//   }
//   *(fp_t*)Ans->v0 = *(fp_t*)z.v0;
// }

// void fp_sub(fp *Ans,const fp *A,const fp *B){
//   #ifdef DEBUG_COST_A
//   cost_sub++;
//   #endif
//   const fp_t& a = *(fp_t*)A->v0;
//   const fp_t& b = *(fp_t*)B->v0;
//   fp z;
//   *(fp_t*)z.v0 = a -b;
//   if (*(fp_t*)z.v0 < *(fp_t*)cp_zero.v0) {
//     *(fp_t*)z.v0 += *(fp_t*)cp_prime.v0;
//   }
//   *(fp_t*)Ans->v0 = *(fp_t*)z.v0;
// }

// void fp_sub_nonmod_single(fp *ANS,fp *A,fp *B){
//   #ifdef DEBUG_COST_A
//   cost_sub++;
//   #endif
//   static mp_limb_t buf[FPLIMB];

//   if(mpn_cmp(A->x0,B->x0,FPLIMB)<0){
//     mpn_sub_n(ANS->x0,B->x0,A->x0,FPLIMB);
//     while(mpn_cmp(ANS->x0,prime,FPLIMB)>=0){
//       mpn_sub_n(ANS->x0,ANS->x0,prime,FPLIMB);
//     }
//     mpn_sub_n(ANS->x0,prime,ANS->x0,FPLIMB);
//   }else{
//     mpn_sub_n(ANS->x0,A->x0,B->x0,FPLIMB);
//   }
// }

// void fp_sub_nonmod_double(fpd_t *ANS,fpd_t *A,fpd_t *B){
//   #ifdef DEBUG_COST_A
//   cost_sub++;
//   #endif
//   static mp_limb_t buf[FPLIMB2];

//   if(mpn_cmp(A->x0,B->x0,FPLIMB2)<0){
//     mpn_sub_n(ANS->x0,A->x0,B->x0,FPLIMB2);
//     mpn_add_n(ANS->x0 + FPLIMB, ANS->x0 + FPLIMB,prime, FPLIMB);
//   }else{
//     mpn_sub_n(ANS->x0,A->x0,B->x0,FPLIMB2);
//   }
// }

// void fp_sub_ui(fp *Ans,const fp *A,const uint64_t UI){
//   #ifdef DEBUG_COST_A
//   cost_sub_ui++;
//   #endif
//   const fp_t& a = *(fp_t*)A->v0;
//   const fp_t& b = UI;
//   fp z;
//   *(fp_t*)z.v0 = a - b;
//   if (*(fp_t*)z.v0 >= *(fp_t*)cp_zero.v0) {
//     *(fp_t*)z.v0 += *(fp_t*)cp_prime.v0;
//   }
//   *(fp_t*)Ans->v0 = *(fp_t*)z.v0;
// }

// void fp_sub_fp_t(fp *Ans,const fp *A,const fp_t *B){
//   #ifdef DEBUG_COST_A
//   cost_sub++;
//   #endif

//   const fp_t& a = *(fp_t*)A->v0;
//   const fp_t& b = *B;
//   fp z;
//   *(fp_t*)z.v0 = a - b;
//   if (*(fp_t*)z.v0 < *(fp_t*)cp_zero.v0) {
//     *(fp_t*)z.v0 += *(fp_t*)cp_prime.v0;
//   }
//   *(fp_t*)Ans->v0 = *(fp_t*)z.v0;
// }

//extgcd
// void fp_inv(fp *ANS,fp *A){
//   #ifdef DEBUG_COST_A
//   cost_inv++;
//   #endif
//   static mp_limb_t prime_tmp[FPLIMB],gp[FPLIMB],sp[FPLIMB],tmp[FPLIMB],buf[FPLIMB];
//   static mp_size_t buf_size;

//   //mpn_init(gp,FPLIMB);
//   mpn_init(sp,FPLIMB);
//   //mpn_init(tmp,FPLIMB);
//   //mpn_init(prime_tmp,FPLIMB);

//   mpn_copyd(prime_tmp,prime,FPLIMB);

//   mpn_add_n(buf,A->x0,prime,FPLIMB);
//   mpn_gcdext(gp,sp,&buf_size,buf,FPLIMB,prime_tmp,FPLIMB);

//   if(buf_size<0)  mpn_sub_n(tmp, prime,sp,FPLIMB);
//   else  mpn_copyd(tmp,sp,FPLIMB);

//   fp_mod(ANS,tmp,FPLIMB);
// }

// void fp_inv_montgomery(fp *ANS,fp *A){
//   #ifdef DEBUG_COST_A
//   cost_mul++;
//   #endif
//   //TODO:inv_montgomery
//   fp_inv(ANS,A);
//   mpn_mulmod_montgomery(ANS->x0,FPLIMB,ANS->x0,FPLIMB,R3,FPLIMB);
//   //gmp_printf("R2=%Nu\n",R2,FPLIMB);
// }

// int fp_legendre(fp *A){
//   int i;
//   mpz_t tmp1,tmp2;
//   fp tmp1_fp;
//   mpz_init(tmp1);
//   mpz_init(tmp2);
//   fp_init(&tmp1_fp);

//   mpz_sub_ui(tmp1,prime_z,1);
//   mpz_tdiv_q_ui(tmp2,tmp1,2);
//   fp_pow(&tmp1_fp,A,tmp2);

//   if(mpn_cmp_ui(tmp1_fp.x0,FPLIMB,1)==0)		i=1;
//   else if(mpn_cmp_ui(tmp1_fp.x0,FPLIMB,0)==0)	i=0;
//   else  i=-1;

//   mpz_clear(tmp1);
//   mpz_clear(tmp2);

//   return i;
// }

// void fp_sqrt(fp *ANS,fp *A){
//   fp x,y,t,k,n,tmp;
//   fp_init(&x);
//   fp_init(&y);
//   fp_init(&t);
//   fp_init(&k);
//   fp_init(&n);
//   fp_init(&tmp);
//   unsigned long int e,m;
//   mpz_t exp,q,z,result;
//   mpz_init(exp);
//   mpz_init(q);
//   mpz_init(z);
//   mpz_init(result);
//   gmp_randstate_t state1;
//   gmp_randinit_default (state1);
//   gmp_randseed_ui(state1,(unsigned long)time(NULL));
//   fp_set_random(&n,state1);

//   while(fp_legendre(&n)!=-1){
//     fp_set_random(&n,state1);
//   }
//   mpz_sub_ui(q,prime_z,1);
//   mpz_mod_ui(result,q,2);
//   e=0;
//   while(mpz_cmp_ui(result,0)==0){
//     mpz_tdiv_q_ui(q,q,2);
//     mpz_mod_ui(result,q,2);
//     e++;
//   }
//   fp_pow(&y,&n,q);
//   mpz_set_ui(z,e);
//   mpz_sub_ui(exp,q,1);
//   mpz_tdiv_q_ui(exp,exp,2);
//   fp_pow(&x,A,exp);
//   fp_mul(&tmp,&x,&x);
//   fp_mul(&k,&tmp,A);
//   fp_mul(&x,&x,A);
//   while(mpn_cmp_ui(k.x0,FPLIMB,1)!=0){
//     m=1;
//     mpz_ui_pow_ui(exp,2,m);
//     fp_pow(&tmp,&k,exp);
//     while(mpn_cmp_ui(tmp.x0,FPLIMB,1)!=0){
//       m++;
//       mpz_ui_pow_ui(exp,2,m);
//       fp_pow(&tmp,&k,exp);
//     }
//     mpz_sub_ui(exp,z,m);
//     mpz_sub_ui(exp,exp,1);
//     mpz_ui_pow_ui(result,2,mpz_get_ui(exp));
//     fp_pow(&t,&y,result);
//     fp_mul(&y,&t,&t);
//     mpz_set_ui(z,m);
//     fp_mul(&x,&x,&t);
//     fp_mul(&k,&k,&y);
//   }
//   fp_set(ANS,&x);

//   mpz_clear(exp);
//   mpz_clear(q);
//   mpz_clear(z);
//   mpz_clear(result);
// }

// void fp_pow(fp *ANS,fp *A,mpz_t scalar){
//   int i,length;
//   length=(int)mpz_sizeinbase(scalar,2);
//   char binary[length+1];
//   mpz_get_str(binary,2,scalar);
//   fp tmp;
//   fp_init(&tmp);

//   fp_set(&tmp,A);

//   for(i=1;i<length;i++){
//     fp_sqr(&tmp,&tmp);
//     if(binary[i]=='1')  fp_mul(&tmp,A,&tmp);
//   }
//   fp_set(ANS,&tmp);
// }

// void fp_pow_mpn(fp *ans,fp *a,mp_limb_t *r,mp_size_t n){
//   fp Temp,tmp;
//   mp_limb_t bit[FPLIMB],bit_copy[FPLIMB];
//   size_t bit_size;
//   mp_size_t size;
//   int i,cnt;
//   size=FPLIMB;

//   fp_init(&Temp);
//   fp_init(&tmp);
//   mpn_init(bit,size);
//   mpn_init(bit_copy,size);

//   if(mpn_zero_p(r,size)==1){
//     fp_set_ui(ans,1);
//     return;
//   }
//   bit_size=mpn_sizeinbase(r,n,2);
//   bit_size--;

//   mpn_set_ui(bit,1,size);
//   mpn_lshift_ext(bit,bit,size,bit_size);

//   //scm
//   mpn_copyd(Temp.x0,a->x0,size);
//   while(bit_size>0){
//     mpn_copyd(tmp.x0,Temp.x0,size);
//     fp_mul(&Temp,&tmp,&tmp);
//     //bit
//     mpn_rshift(bit,bit,size,1);
//     mpn_and_n(bit_copy,r,bit,size);
//     //bit=1 ->
//     if(mpn_zero_p(bit_copy,size)==0){
//       mpn_copyd(tmp.x0,Temp.x0,size);
//       fp_mul(&Temp,&tmp,a);
//     }
//     mpn_init(bit_copy,size);
//     bit_size--;
//   }
//   mpn_copyd(ans->x0,Temp.x0,size);
// }

// int  fp_cmp(fp *A,fp *B){
//   if(mpn_cmp(A->x0,B->x0,FPLIMB)==0)  return 0;
//   return 1;
// }

// int  fp_cmp_ui(fp *A,unsigned long int UI){
//   if(mpn_cmp_ui(A->x0,FPLIMB,UI)==0)  return 0;
//   return 1;
// }

// int  fp_cmp_mpn(fp *A,mp_limb_t *B){
//   if(mpn_cmp(A->x0,B,FPLIMB)==0)  return 0;
//   return 1;
// }

// int  fp_cmp_zero(fp *A){
//   if(mpn_cmp_ui(A->x0,FPLIMB,0)==0) return 0;
//   return 1;
// }

// int  fp_cmp_one(fp *A){
//   if(mpn_cmp_ui(A->x0,FPLIMB,1)==0) return 0;
//   return 1;
// }

// int fp_montgomery_trick(fp *A_inv,fp *A,int n){
//   int i;
//   fp ANS[n],ALL_inv;
//   fp_set(&ANS[0],&A[0]);
//   fp check;

//   for(i=1;i<n;i++){
//     fp_mul(&ANS[i],&ANS[i-1],&A[i]);
//   }
//   fp_inv(&ALL_inv,&ANS[n-1]);
//   for(i=n-1;i>0;i--){
//     fp_mul(&A_inv[i],&ALL_inv,&ANS[i-1]);
//     fp_mul(&ALL_inv,&ALL_inv,&A[i]);
//   }

//   fp_set(&A_inv[0],&ALL_inv);
//   return 0;
// }

// int fp_montgomery_trick_montgomery(fp *A_inv,fp *A,int n){
//   int i;
//   fp ANS[n],ALL_inv;
//   fp_set(&ANS[0],&A[0]);
//   fp check;

//   for(i=1;i<n;i++){
//     fp_mulmod_montgomery(&ANS[i],&ANS[i-1],&A[i]);
//   }
//   fp_inv_montgomery(&ALL_inv,&ANS[n-1]);
//   for(i=n-1;i>0;i--){
//     fp_mulmod_montgomery(&A_inv[i],&ALL_inv,&ANS[i-1]);
//     fp_mulmod_montgomery(&ALL_inv,&ALL_inv,&A[i]);
//   }

//   fp_set(&A_inv[0],&ALL_inv);
//   return 0;
// }

// void fp_mul_base(fp *ANS,fp *A){
//   #ifdef DEBUG_COST_A
//   cost_add++;
//   // cost_mul_base++;
//   // cost_mul--;
//   #endif
//   // fp_mul(ANS,A,&base_c);
//   fp_lshift_1(ANS,A);
// }

// void fp_mul_base_inv(fp *ANS,fp *A){

//   if( __builtin_ctzl(A->x0[0]) >= 1){
//   #ifdef DEBUG_COST_A
//   cost_add++;
//   #endif
//     fp_rshift_1(ANS,A);
//   }else{
//   #ifdef DEBUG_COST_A
//   cost_mul_base++;
//   cost_mul--;
//   #endif
//     fp_mul(ANS,A,&base_c_inv);
//   }
// }

// void mpn_print(fp *op, std::string str){
//     std::cout << str ;

//     uint8_t buf[BWORDS];
//     memcpy(buf, op->v0, sizeof(buf));
//     printf("0x");
//     if(buf[0]==0){
//         printf("0\n");
//     }else{
//         for(int i=BWORDS-1;i>=0;i--){
//         if(buf[i] != 0) printf("%x",buf[i]);
//         }
//         printf("\n");
//     }
// }
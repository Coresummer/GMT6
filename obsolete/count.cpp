#include "count.h"

void cost_zero(){
  cost_add=0;
  cost_add_ui=0;
  cost_sub=0;
  cost_sub_ui=0;
  cost_mul=0;
  cost_mul_ui=0;
  cost_mul_base=0;
  cost_sqr=0;
  cost_inv=0;
  cost_mod=0;
}

void count_printf(){
  #if 1
  printf("cost_add      = %d\n",cost_add);
  printf("cost_add_ui   = %d\n",cost_add_ui);
  printf("cost_sub      = %d\n",cost_sub);
  printf("cost_sub_ui   = %d\n",cost_sub_ui);
  printf("cost_mul      = %d\n",cost_mul);
  printf("cost_mul_ui   = %d\n",cost_mul_ui);
  printf("cost_mul_base = %d\n",cost_mul_base);
  printf("cost_sqr      = %d\n",cost_sqr);
  printf("cost_inv      = %d\n",cost_inv);
  printf("cost_mod      = %d\n",cost_mod);
  #else
  int cost_sum_add=cost_add+cost_add_ui+cost_sub+cost_sub_ui;
  int cost_sum_mul=cost_mul+cost_mul_ui+cost_sqr+cost_mul_base;
  printf("cost_add      = %d\n",cost_sum_add);
  printf("cost_mul      = %d\n",cost_sum_mul);
  printf("cost_inv      = %d\n",cost_inv);
  printf("cost_mod      = %d\n",cost_mod);
  #endif
}

float timedifference_msec(struct timeval tv_start, struct timeval tv_end){
  return ((tv_end.tv_sec - tv_start.tv_sec)*1000.0f + (tv_end.tv_usec - tv_start.tv_usec)/1000.0f);
}

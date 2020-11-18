#include "test_efp.h"

void check_efp(){
  printf("check_efp() 開始\n");
  efp_t P,ANS;
  efp_init(&P);
  efp_init(&ANS);

  efp_rational_point(&P);
  efp_println("P = ",&P);
  printf("---------------------------------\n");

  printf("weil定理の確認\n");
  efp_scm(&ANS,&P,efp_total);
  efp_println("[p +1 -t]P = ",&ANS);
  printf("---------------------------------\n");

  efp_println("P = ",&P);//Aが変わっていないことの確認

  printf("*********************************************************************************************\n\n");
}

void check_efp7(){
  printf("check_efp7() 開始\n");
  efp7_t P,ANS;
  efp7_init(&P);
  efp7_init(&ANS);

  efp7_rational_point(&P);
  efp7_println("P = ",&P);
  printf("---------------------------------\n");

  printf("weil定理の確認\n");
  efp7_scm(&ANS,&P,efp7_total);
  efp7_println("[p^7 +1 -t7]P = ",&ANS);
  printf("---------------------------------\n");

  efp7_println("P = ",&P);//Aが変わっていないことの確認

  printf("*********************************************************************************************\n\n");
}

void check_efp14(){
  printf("check_efp14() 開始\n");
  efp14_t P,ANS;
  efp14_init(&P);
  efp14_init(&ANS);
  efp14_rational_point(&P);
  efp14_println("P = ",&P);
  printf("---------------------------------\n");

  printf("weil定理の確認\n");
  efp14_scm(&ANS,&P,efp14_total);
  efp14_println("[p^14 +1 -t14]P = ",&ANS);
  printf("---------------------------------\n");

  efp14_println("P = ",&P);//Aが変わっていないことの確認

  printf("*********************************************************************************************\n\n");
}

void check_g1_g2(){
  printf("check_g1_g2() 開始\n");
  efp14_t P,Q;
  efp14_init(&P);
  efp14_init(&Q);

  generate_g1(&P);
  efp14_println("P in G1 = ",&P);
  efp14_scm(&P,&P,order_z);
  efp14_println("[r]P = ",&P);
  printf("---------------------------------\n");
  generate_g2(&Q);
  efp14_println("Q in G2 = ",&Q);
  efp14_scm(&Q,&Q,order_z);
  efp14_println("[r]Q = ",&Q);

  printf("*********************************************************************************************\n\n");
}

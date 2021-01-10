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

void check_efp3(){
  printf("check_efp3() 開始\n");
  efp3_t P,ANS;
  efp3_init(&P);
  efp3_init(&ANS);

  efp3_rational_point(&P);
  efp3_println("P = ",&P);
  printf("---------------------------------\n");

  printf("weil定理の確認\n");
  efp3_scm(&ANS,&P,efp3_total);
  efp3_println("[p^2 +1 -t2]P = ",&ANS);
  printf("---------------------------------\n");

  efp3_println("P = ",&P);//Aが変わっていないことの確認

  printf("*********************************************************************************************\n\n");
}

void check_efp6(){
  printf("check_efp6() 開始\n");
  efp6_t P,ANS;
  efp6_init(&P);
  efp6_init(&ANS);
  efp6_rational_point(&P);
  efp6_println("P = ",&P);
  printf("---------------------------------\n");

  printf("weil定理の確認\n");
  efp6_scm(&ANS,&P,efp6_total);
  efp6_println("[p^6 +1 -t6]P = ",&ANS);
  printf("---------------------------------\n");

  efp6_println("P = ",&P);//Aが変わっていないことの確認

  printf("*********************************************************************************************\n\n");
}

void check_g1_g2(){
  printf("check_g1_g2() 開始\n");
  efp6_t P,Q;
  efp6_init(&P);
  efp6_init(&Q);

  generate_g1(&P);
  efp6_println("P in G1 = ",&P);
  efp6_scm(&P,&P,order_z);
  efp6_println("[r]P = ",&P);
  printf("---------------------------------\n");
  generate_g2(&Q);
  efp6_println("Q in G2 = ",&Q);
  efp6_scm(&Q,&Q,order_z);
  efp6_println("[r]Q = ",&Q);

  printf("*********************************************************************************************\n\n");
}

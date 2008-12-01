#include <stdio.h>

const int SIZE = 1001;


int main(void) {
  int n[SIZE];
  int i;
  for (i=0; i < SIZE; i++) {
    n[i] = 0;
  }
  n[1] = 3;
  n[2] = 3;
  n[3] = 5;
  n[4] = 4;
  n[5] = 4;
  n[6] = 3;
  n[7] = 5;
  n[8] = 5;
  n[9] = 4;
  n[10] = 3;
  n[11] = 6;
  n[12] = 6;
  n[13] = 8;
  n[14] = 8;
  n[15] = 7;
  n[16] = 7;
  n[17] = 9;
  n[18] = 8;
  n[19] = 8;
  n[20] = 6;
  n[30] = 6;
  n[40] = 5;
  n[50] = 5;
  n[60] = 5;
  n[70] = 7;
  n[80] = 6;
  n[90] = 6;
  n[1000] = 11;
  
  for (i=1; i<SIZE; i++) {
    if (n[i] != 0) {
      printf("%d: skipping, = %d\n", i,n[i]);
      continue;
    }
    else if (i < 100) {
      printf("%d: %d(%d) + %d(%d)\n",i,n[10*(i/10)],10*(i/10),n[i%10],i%10);
      n[i] = n[10*(i/10)] + n[i%10];
    }
    else if ( (i%100) == 0) {
      printf("%d: 7 + %d(%d)\n",i,n[i/100],i/100);
      n[i] = 7 + n[i/100];
    }
    else {
      printf("%d: 10 + %d(%d) + %d(%d)\n",i,n[i/100],i/100,n[i%100],i%100);
      n[i] = 10 + n[i/100] + n[i%100];
    }
  }
  
  int sum = 0;
  for (i=1; i<SIZE; i++) {
    sum += n[i];
  }
  printf("%d\n",sum);
  return 0; 
}
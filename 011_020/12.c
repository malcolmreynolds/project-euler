#include <stdio.h>

unsigned int numDivisors(unsigned long long n);

const unsigned int LIM = 500;

int main(void) {
  unsigned long long i=1;
  unsigned long long inc = 2;
  for(;;) {
    //printf("%lld has %d\n",i,numDivisors(i));
    if (numDivisors(i) > LIM) {
      printf("%lld\n",i);
      return 0;
    }
    i += inc;
    inc++;
  }
}

unsigned int numDivisors(unsigned long long n) {
  int c = 0;
  unsigned long long div = 1;
  unsigned long long limit = n >> 1;
  while (div <= limit) {
    //printf("n=%lld div=%lld limit=%lld c=%d\n",n,div,limit,c);
    if ((n % div) == 0) {
      c++;
    }
    div++;
  }
  return (c+1);
}
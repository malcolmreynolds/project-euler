#include <stdio.h>

// Project Euler problem 10.
// Using Sieve of Erastothenes

const unsigned long LIM = 2000000; 
const unsigned char NOTPRIME = 0;
const unsigned char POSPRIME = 1;

int main(void) {

  unsigned char sieve[LIM];
  unsigned long long accum = 2;
  for (unsigned int j=0; j < LIM; j++) {
    sieve[j] = POSPRIME;
  }
  
  for(unsigned int i=2; i < LIM; i++) {
    if (sieve[i-2] == NOTPRIME) {
      continue;
    }
    accum += i;
    for (unsigned int j=i-2; j < LIM; j += i) {
      sieve[j] = NOTPRIME;
    }
  }
  printf("%lld\n",accum);
}
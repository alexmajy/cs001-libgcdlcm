#include "gcdlcm.h"

int gcd(int a, int b)
{
    int i, rst, min;
    min = a ? b : a < b;
    rst = 1;
    for(i = 2; i <= min; i++) {
        if( a % i == 0 && b % i == 0) {
            rst = i;
        }
    }

    return rst;
}


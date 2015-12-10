#include <iostream>
#include "../src/gcdlcm.h"

int main()
{
    int a, b;

    while (std::cin >> a >> b) {
        std::cout << gcd(a, b) << ' '
                  << lcm(a, b) << std::endl;
    }
    return 0;
}


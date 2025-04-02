#include <stdio.h>

int func(int a, int b) {
    return a + b;
}

int main() {
    int a = 2;
    int b = 3;
    b = func(a, b) + a;
    printf("b = %d\n", b);  // 7
}

#include <stdio.h>
extern matmult_arm(int a);

int main(int argc, char const *argv[])
{
    printf("%d\n", matmult_arm(0));
    return 0;
}

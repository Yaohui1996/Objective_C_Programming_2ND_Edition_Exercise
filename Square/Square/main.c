#include <stdio.h>
#include <math.h>

void mySqr(int x){
    printf("\"%d\" squared is \"%d\"\n",x,x*x);
}

int main(int argc, const char * argv[]) {
    printf("Hello, World!\n");
    mySqr(5);
    return 0;
}

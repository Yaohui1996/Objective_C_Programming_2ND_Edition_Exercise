#include <stdio.h>

int main(int argc, const char * argv[]) {
    float a = 3.14;
    float b = 2.0;
    double c = a + b;
    printf("%f + %f = %f\n",a,b,c);
    printf("Hello, World!\n");

    int i = 20;
    int j = 25;
    int k = (i > j) ? 10 : 5;
    if (5 < j - k) {
        printf("The first expression is true.");
    }else if(j > 1){
        printf("The second expression is true.");
    }else{
        printf("Neither expression is true.");
    }
    return 0;
}

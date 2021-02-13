#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, double* ftPtr,double *inPtr){
    
    double rawFeet = meters * 3.281;
    *inPtr = modf(rawFeet, ftPtr) * 12.0;
}


int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    
    int i =17;
    int *hhh = &i;
    printf("i 的地址: %p\n",&i);
    printf("%p 地址所存储的整数为 %d\n",hhh,*hhh);
    
    printf("一个整数占 %zu 字节\n",sizeof(int));
    printf("一个指向整数的指针占 %zu 字节\n",sizeof(int*));
    
    printf("一个float占 %zu 字节\n",sizeof(float));
    
    double meters = 1;
    double feet;
    double inches;
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%.1f meters is equal to %.0f feet and %.1f inches.",meters,feet,inches);
    
    return 0;
}

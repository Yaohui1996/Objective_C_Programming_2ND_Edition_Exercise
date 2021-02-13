//
//  main.c
//  bitwize
//
//  Created by YaohuiLi on 2021/1/18.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int spaceCount(const char*);

int main(int argc, const char * argv[]) {
    unsigned char a = 0x3c;
    unsigned char b = 0xa9;
    
    unsigned char c = a | b;
    printf("Hex: %x | %x = %x\n",a,b,c);
    printf("Decimal: %d | %d = %d\n",a,b,c);
    
    unsigned char d = a & b;
    printf("Hex: %x & %x = %x\n",a,b,d);
    printf("Decimal: %d & %d = %d\n",a,b,d);
    
    unsigned char e = a ^ b;
    printf("Hex: %x ^ %x = %x\n",a,b,e);
    printf("Decimal: %d ^ %d = %d\n",a,b,e);
    
    unsigned char f = ~ b;
    printf("Hex: The complement of %x is %x\n",b,f);
    printf("Decimal: The complement of %d is %d\n",b,f);
    
    
    //练习题
    uint64_t uit64 = 0;
    uint64_t uit64_1 = 1;
    for (int i = 0; i != 32; ++i) {
        uit64 = (uit64 << 2) | uit64_1;
    }
    
    printf("%llu\n",uit64);
    
    //第39章练习题
    
    const char * sentence = "He was not in the cab at the time.";
    printf("\"%s\" has %d spaces\n",sentence,spaceCount(sentence));
    
    
    
    return 0;
}


int spaceCount(const char* str){
    int counter = 0;
    
    for (int i = 0; i != strlen(str); ++i) {
        if (*(str + i) == ' ') {
            ++counter;
        }
    }
    
    return counter;
}

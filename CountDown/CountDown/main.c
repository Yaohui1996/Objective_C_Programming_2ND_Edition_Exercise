#include <stdio.h>
#include <stdlib.h>
#include <readline/readline.h>

int main(int argc, const char * argv[]) {
    const char * inputStr = readline("请输入起始整数:\n");
    int startInt = atoi(inputStr);
    for (int i = startInt; i >= 0; i -= 3) {
        printf("%d\n",i);
        if (i % 5 == 0) {
            printf("Found one!\n");
        }
    }
    return 0;
}

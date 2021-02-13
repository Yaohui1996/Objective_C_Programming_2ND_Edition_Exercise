#include <stdio.h>
#include <time.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    time_t now = time(NULL);
    now += 4000000;
    struct tm date;
    localtime_r(&now, &date);
    printf("%d-%d-%d\n",date.tm_mon+1,date.tm_mday,date.tm_year+1900);
    float * startOfBuffer;
    startOfBuffer = malloc(1000 * sizeof(float));
    free(startOfBuffer);
    startOfBuffer = NULL;
    return 0;
}

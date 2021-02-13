//
//  main.m
//  Date Monger
//
//  Created by Yaohui Li on 2021/1/29.
//

#import <Foundation/Foundation.h>
#import "NSDate+VowelCounting.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate* ceshi = [NSDate lyh_NSDateYears:1996 Month:4 Day:16];
        NSLog(@"%@",ceshi);
    }
    return 0;
}

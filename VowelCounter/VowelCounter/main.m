//
//  main.m
//  VowelCounter
//
//  Created by Yaohui Li on 2021/1/29.
//

#import <Foundation/Foundation.h>
#import "NSString+BNRVowelCounting.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* string = @"Hello,World!";
        NSLog(@"%@ has %d vowels",string,[string bnr_vowelCount]);
    }
    return 0;
}

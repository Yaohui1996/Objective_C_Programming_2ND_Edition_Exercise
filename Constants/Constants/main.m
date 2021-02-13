//
//  main.m
//  Constants
//
//  Created by YaohuiLi on 2021/1/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLocale* here = [NSLocale currentLocale];
        NSString* currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@",currency);
        
    }
    return 0;
}

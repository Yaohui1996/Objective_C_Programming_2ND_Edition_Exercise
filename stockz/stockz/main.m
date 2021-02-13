//
//  main.m
//  stockz
//
//  Created by Yaohui Li on 2021/1/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray* stocks = [[NSMutableArray alloc] init];
        
        NSMutableDictionary* stock;
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200]
                  forKey:@"shares"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOD"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160]
                  forKey:@"shares"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/stocks.plist"
                 atomically:YES];
        //注视
        NSArray* stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        
        for (NSDictionary* d in stockList) {
            NSLog(@"I have %@ shares of %@",[d objectForKey:@"shares"],[d objectForKey:@"symbol"]);
        }
        
        
    }
    return 0;
}

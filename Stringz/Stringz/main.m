//
//  main.m
//  Stringz
//
//  Created by YaohuiLi on 2021/1/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString* str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Aaron is cool!\n"];
        }
        
        NSError* error;
        BOOL success =  [str writeToFile:@"/Users/yaohui/Desktop/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
        if (success) {
            NSLog(@"done writing \"cool.txt\"");
        }else{
            NSLog(@"writing \"cool.txt\" failed: %@",[error localizedDescription]);
        }
        
        
    }
    return 0;
}

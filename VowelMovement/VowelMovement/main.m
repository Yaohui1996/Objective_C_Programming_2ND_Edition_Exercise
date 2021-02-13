//
//  main.m
//  VowelMovement
//
//  Created by Yaohui Li on 2021/1/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray* originalStrings = @[@"SauerKraut",@"Raygun",@"Big Nerd Ranch",@"Mississippi"];
        NSLog(@"original strings: %@",originalStrings);
        NSMutableArray* devowelizedStrings = [NSMutableArray array];
        NSArray* vowels = @[@"a",@"e",@"i",@"o",@"u"];
        
        //声明block变量
        void (^devowelizer) (id, NSUInteger, BOOL*);
        
        //将block对象赋值给变量devowelizer
        devowelizer = ^(id string, NSUInteger i, BOOL* stop){
            NSRange yRange = [string rangeOfString:@"y"
                                           options:NSCaseInsensitiveSearch];
            if (yRange.location != NSNotFound) {
                *stop = YES;
                return;
            }
            
            NSMutableString* newString = [NSMutableString stringWithString:string];
            
            for (NSString* s  in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            [devowelizedStrings addObject:newString];
        };
        
        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"new string: %@",devowelizedStrings);
        
    }
    return 0;
}

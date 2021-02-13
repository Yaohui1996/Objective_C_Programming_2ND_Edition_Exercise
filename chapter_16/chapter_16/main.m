//
//  main.m
//  chapter_16
//
//  Created by YaohuiLi on 2021/1/19.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* inputStr = [NSString stringWithUTF8String:readline("请输入起始整数:\n")];
        int startInt = inputStr.intValue;
        for (int i = startInt; i >= 0; i -= 3) {
            NSLog(@"%d",i);
            if (i % 5 == 0) {
                NSLog(@"Found one!");
            }
        }
        
    }
    return 0;
}

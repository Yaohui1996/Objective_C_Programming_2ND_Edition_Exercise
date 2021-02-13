//
//  main.m
//  Groceries
//
//  Created by YaohuiLi on 2021/1/19.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray * buyMuList = [[NSMutableArray alloc] init];
        
        [buyMuList addObject:@"Loaf of bread"];
        [buyMuList addObject:@"Container of milk"];
        [buyMuList addObject:@"Stick of butter"];
        
        for (NSString *item in buyMuList) {
            NSLog(@"%@",item);
        }
        
        //读取/usr/share/dict/propernames
        NSString * propernamesStr = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                              encoding:NSUTF8StringEncoding
                                                                 error:NULL];
        NSArray * propernamesArray = [propernamesStr componentsSeparatedByString:@"\n"];
        //读取/usr/share/dict/words
        NSString * wordsStr = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                        encoding:NSUTF8StringEncoding
                                                           error:NULL];
        NSArray * wordsArray = [wordsStr componentsSeparatedByString:@"\n"];
        
        
        for (NSString * proitem in propernamesArray) {
            for (NSString * woritem in wordsArray) {
                if ([proitem compare:woritem options:NSCaseInsensitiveSearch] == NSOrderedSame) {
                    if (![proitem isEqualToString:woritem]) {
                        NSLog(@"%@ and %@",proitem,woritem);
                        break;
                    }
                }
            }
        }
        
    }
    return 0;
}

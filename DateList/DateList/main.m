//
//  main.m
//  DateList
//
//  Created by YaohuiLi on 2021/1/19.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [[NSDate alloc] init];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60 * 60];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60 * 60];
        
        
        NSArray *dateList = @[now,tomorrow,yesterday];
        
        //传统for循环
        for (NSUInteger i = 0; i != [dateList count]; ++i) {
            NSLog(@"The %luth date is %@",i,dateList[i]);
        }
        
        //快速枚举
        for (NSDate *d in dateList) {
            NSLog(@"%@",d);
        }
        
        NSMutableArray *dateMuList = [[NSMutableArray alloc] init];
        [dateMuList addObject:now];
        [dateMuList addObject:tomorrow];
        [dateMuList insertObject:yesterday atIndex:0];
        
        //遍历数组
        for (NSDate *d in dateMuList) {
            NSLog(@"Here is a date: %@",d);
        }
        [dateMuList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@",dateMuList[0]);
        
        
        
        
        
    }
    return 0;
}

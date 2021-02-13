//
//  main.m
//  secondsSinceBirthDay
//
//  Created by YaohuiLi on 2021/1/19.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double secondsSinceBirthDay = 0.0;
        
        //当前时刻
        NSDate *now = [[NSDate alloc] init];
        
        
        //出生时刻
        NSDateComponents *birthDay = [[NSDateComponents alloc] init];
        [birthDay setYear:1996];
        [birthDay setMonth:5];
        [birthDay setDay:12];
        [birthDay setHour:19];
        [birthDay setMinute:1];
        [birthDay setSecond:1];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        
        NSDate *dateOfBirth = [g dateFromComponents:birthDay];
        secondsSinceBirthDay = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"%f",secondsSinceBirthDay);
        
        
    }
    return 0;
}

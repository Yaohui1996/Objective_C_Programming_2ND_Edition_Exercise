//
//  main.m
//  TimeAfterTime
//
//  Created by YaohuiLi on 2021/1/18.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSDate * now = [NSDate date];
        NSDate* now = [[NSDate alloc] init];
        NSLog(@"This NSDate object lives at %p",now);
        NSLog(@"The date is %@",now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.",seconds);
        
        NSHost * pcInfo = [NSHost currentHost];
        NSString* information = [pcInfo localizedName];
        NSLog(@"%@",information);
        
        NSDate * later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@",later);
        
        NSCalendar * cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@",[cal calendarIdentifier]);
        
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                           inUnit:NSCalendarUnitMonth
                                          forDate:now];
        NSLog(@"This is day %lu of the month",day);
        

        
        
    }
    return 0;
}

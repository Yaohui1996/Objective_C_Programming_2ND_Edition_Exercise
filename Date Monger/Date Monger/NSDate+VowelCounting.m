//
//  NSDate+VowelCounting.m
//  Date Monger
//
//  Created by Yaohui Li on 2021/1/29.
//

#import "NSDate+VowelCounting.h"

@implementation NSDate (VowelCounting)

+ (NSDate*) lyh_NSDateYears:(int)y Month:(int)m Day:(int)d{
    NSNumberFormatter* formatter = [[NSNumberFormatter alloc] init];
    
    NSString* year = [[NSString alloc] init];
    year = [formatter stringFromNumber:[[NSNumber alloc] initWithInt:y]];
    
    NSString* month = [[NSString alloc] init];
    month = [formatter stringFromNumber:[[NSNumber alloc] initWithInt:m]];
    
    NSString* day = [[NSString alloc] init];
    day = [formatter stringFromNumber:[[NSNumber alloc] initWithInt:d]];
    
    NSString* string = [[NSString alloc] initWithFormat:@"%@-%@-%@00:00:00",year,month,day];
    
    NSDateFormatter* RFC3339DateFormatter = [[NSDateFormatter alloc] init];
    RFC3339DateFormatter.locale = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
    RFC3339DateFormatter.dateFormat = @"yyyy-M-ddHH:mm:ss";
    RFC3339DateFormatter.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    
    NSDate* ret = [RFC3339DateFormatter dateFromString:string];
    //NSString *string = @"1996-12-19T16:39:57-08:00";
    
    return ret;
    
}

@end

//
//  BNRAppliance.m
//  Appliances
//
//  Created by Yaohui Li on 2021/1/29.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

- (instancetype) init{
    [NSException raise:@"初始化的打开方式不对哦！"
                format:@"要用以下方法初始化：1.initWithDefaultVoltage:(int)value 或 2.initWithDefaultProductName:(NSString*)name 或 3.initWithValue:(int)v Name:(NSString*)n"];
    return self;
}
    
- (instancetype) initWithDefaultVoltage:(int)value{
    self = [super init];
    if (self) {
        self.voltage = value;
    }
    return self;
}

- (instancetype) initWithDefaultProductName:(NSString*)name{
    self = [super init];
    if (self) {
        self.productName = name;
    }
    return self;
}


- (instancetype) initWithValue:(int)v
                          Name:(NSString*)n{
    self = [super init];
    if (self) {
        self.voltage = v;
        self.productName = n;
    }
    return self;
}


@end

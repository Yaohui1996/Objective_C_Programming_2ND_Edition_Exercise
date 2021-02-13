//
//  BNRAppliance.h
//  Appliances
//
//  Created by Yaohui Li on 2021/1/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRAppliance : NSObject

@property (nonatomic) int voltage;
@property (nonatomic, copy) NSString* productName;

- (instancetype) initWithDefaultVoltage:(int)value;
- (instancetype) initWithDefaultProductName:(NSString*)name;
- (instancetype) initWithValue:(int)v
                          Name:(NSString*)n;

@end

NS_ASSUME_NONNULL_END

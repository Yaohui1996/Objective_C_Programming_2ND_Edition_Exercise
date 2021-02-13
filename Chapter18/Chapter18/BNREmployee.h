//
//  BNREmployee.h
//  Chapter18
//
//  Created by YaohuiLi on 2021/1/21.
//

#import "BNRPerson.h"

NS_ASSUME_NONNULL_BEGIN

@class BNRAsset;

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic,copy) NSArray *assets;


- (double) yearsOfEmployment;
- (void) addAssets:(BNRAsset *)a;
- (void) removeAssets:(BNRAsset *)r;
- (unsigned int) valueOfAssets;

@end

NS_ASSUME_NONNULL_END

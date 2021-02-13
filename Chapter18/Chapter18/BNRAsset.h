//
//  BNRAsset.h
//  Chapter18
//
//  Created by YaohuiLi on 2021/1/21.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRAsset : NSObject

@property (nonatomic,copy) NSString *label;
@property (nonatomic) unsigned int resaleValue;
@property (nonatomic,weak) BNREmployee *holder;

@end

NS_ASSUME_NONNULL_END

//
//  BNRStockHolding.h
//  BNRStockHolding
//
//  Created by YaohuiLi on 2021/1/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRStockHolding : NSObject

@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;

@property (nonatomic) NSString *symbol;


- (float) costInDollars;
- (float) valueInDollars;


@end

NS_ASSUME_NONNULL_END

//
//  BNRStockHolding.m
//  BNRStockHolding
//
//  Created by YaohuiLi on 2021/1/21.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float) costInDollars{
    return [self purchaseSharePrice] * [self numberOfShares];
}
- (float) valueInDollars{
    return [self currentSharePrice] * [self numberOfShares];
}

@end

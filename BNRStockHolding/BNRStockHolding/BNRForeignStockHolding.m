//
//  BNRForeignStockHolding.m
//  BNRStockHolding
//
//  Created by YaohuiLi on 2021/1/21.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

-(float) costInDollars{
    return [self purchaseSharePrice] * [self numberOfShares] * self.conversionRate;
}

-(float) valueInDollars{
    return [self currentSharePrice] * [self numberOfShares] * self.conversionRate;
}

@end

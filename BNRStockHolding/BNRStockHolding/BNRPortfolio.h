//
//  BNRPortfolio.h
//  BNRStockHolding
//
//  Created by YaohuiLi on 2021/1/22.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRPortfolio : NSObject

- (float) totalValue;

- (void) addHoldings:(BNRStockHolding*) a;
- (void) removeHoldings:(BNRStockHolding*)r;

- (NSArray*) topThreeHoldersByNumber;
- (NSArray*) allHoldersBySymbol;
@end

NS_ASSUME_NONNULL_END

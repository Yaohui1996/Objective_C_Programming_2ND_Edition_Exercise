//
//  BNRPortfolio.m
//  BNRStockHolding
//
//  Created by YaohuiLi on 2021/1/22.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@interface BNRPortfolio ()

@property (nonatomic) NSMutableArray* holdings;

@end

@implementation BNRPortfolio
- (float) totalValue{
    float totalValueSum = 0.0;
    for (NSUInteger i = 0; i < [_holdings count]; i++) {
        BNRStockHolding* item = _holdings[i];
        totalValueSum += item.currentSharePrice * item.numberOfShares;
    }
    return totalValueSum;
}

- (void) addHoldings:(BNRStockHolding*)a{
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:a];
    
}

- (void) removeHoldings:(BNRStockHolding*)r{
    [_holdings removeObject:r];
}

-(NSString*)description{
    return [NSString stringWithFormat:@"totalValue is %.2f",self.totalValue];
}

- (NSArray*) topThreeHoldersByNumber{
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"numberOfShares" ascending:NO];
    [_holdings sortUsingDescriptors:@[descriptor]];
    return @[_holdings[0],_holdings[1],_holdings[2]];
    
}

- (NSArray*) allHoldersBySymbol{
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"symbol" ascending:YES];
    [_holdings sortUsingDescriptors:@[descriptor]];
    return _holdings;
}


@end

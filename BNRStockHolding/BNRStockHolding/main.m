//
//  main.m
//  BNRStockHolding
//
//  Created by YaohuiLi on 2021/1/21.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRStockHolding * s1 = [[BNRStockHolding alloc] init];
        BNRStockHolding * s2 = [[BNRStockHolding alloc] init];
        BNRStockHolding * s3 = [[BNRStockHolding alloc] init];
        BNRForeignStockHolding *s4 = [[BNRForeignStockHolding alloc] init];
        
        [s1 setPurchaseSharePrice:2.30];
        [s1 setCurrentSharePrice:4.50];
        s1.numberOfShares = 40;
        s1.symbol = @"XYZ";
        
        [s2 setPurchaseSharePrice:12.19];
        [s2 setCurrentSharePrice:10.56];
        s2.numberOfShares = 90;
        s2.symbol = @"ABC";
        
        [s3 setPurchaseSharePrice:45.10];
        [s3 setCurrentSharePrice:49.51];
        s3.numberOfShares = 210;
        s3.symbol = @"LMN";
        
        [s4 setPurchaseSharePrice:2.30];
        [s4 setCurrentSharePrice:4.50];
        s4.numberOfShares = 40;
        s4.conversionRate = 0.94;
        
        NSMutableArray * myArray = [[NSMutableArray alloc] init];
        [myArray addObject:s1];
        [myArray addObject:s2];
        [myArray addObject:s3];
        [myArray addObject:s4];
        
        
        
        for (NSUInteger i = 0; i < [myArray count]; ++i) {
            NSLog(@"id: %@",myArray[i]);
            NSLog(@"PurchaseSharePrice: %.2f",[myArray[i] purchaseSharePrice]);
            NSLog(@"CurrentSharePrice: %.2f",[myArray[i] currentSharePrice]);
            NSLog(@"NumberOfShares: %d",[myArray[i] numberOfShares]);
            NSLog(@"Cost in Dollars: %.2f",[myArray[i] costInDollars]);
            NSLog(@"Value in Dollars: %.2f",[myArray[i] valueInDollars]);
        }
        
        BNRPortfolio * myPortfolio = [[BNRPortfolio alloc] init];
        
        [myPortfolio addHoldings:s1];
        [myPortfolio addHoldings:s2];
        [myPortfolio addHoldings:s3];
        [myPortfolio addHoldings:s4];
        
        NSLog(@"%@",myPortfolio);
        
        NSArray *topThree = [myPortfolio topThreeHoldersByNumber];
        for (NSUInteger i = 0; i < [topThree count]; i++) {
            NSLog(@"%d",[topThree[i] numberOfShares]);
        }
        
        
        NSArray *allHolder = [myPortfolio allHoldersBySymbol];
        for (NSUInteger i = 0; i < [allHolder count]; i++) {
            NSLog(@"%@",[allHolder[i] symbol]);
        }
        
        
        
    }
    return 0;
}

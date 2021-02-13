//
//  BNRAsset.m
//  Chapter18
//
//  Created by YaohuiLi on 2021/1/21.
//

#import "BNRAsset.h"

@implementation BNRAsset

-(NSString*)description{
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: %d, assigned to %@>",self.label,self.resaleValue,self.holder];
    }else{
        return [NSString stringWithFormat:@"<%@: %d unassigned>",self.label,self.resaleValue];
    }
    
}

-(void)dealloc{
    NSLog(@"deallocating %@",self);
}

@end

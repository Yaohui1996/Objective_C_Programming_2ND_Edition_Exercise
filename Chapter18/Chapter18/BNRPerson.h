//
//  BNRPerson.h
//  Chapter18
//
//  Created by YaohuiLi on 2021/1/21.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface BNRPerson : NSObject

@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

-(float) bodyMassIndex;

@end

NS_ASSUME_NONNULL_END

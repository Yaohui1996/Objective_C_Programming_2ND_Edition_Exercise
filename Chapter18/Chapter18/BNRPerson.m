//
//  BNRPerson.m
//  Chapter18
//
//  Created by YaohuiLi on 2021/1/21.
//

#import "BNRPerson.h"

@implementation BNRPerson

-(float)bodyMassIndex{
    return [self weightInKilos]/([self heightInMeters] * [self heightInMeters]);
}

@end

//
//  main.m
//  Appliances
//
//  Created by Yaohui Li on 2021/1/29.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRAppliance* a = [[BNRAppliance alloc] initWithDefaultVoltage:120];
        NSLog(@"%d",a.voltage);
        NSLog(@"%@",a.productName);
     
        BNRAppliance* b = [[BNRAppliance alloc] initWithDefaultProductName:@"测试字符串"];
        NSLog(@"%d",b.voltage);
        NSLog(@"%@",b.productName);
        
        BNRAppliance* c = [[BNRAppliance alloc] initWithValue:200 Name:@"都要"];
        NSLog(@"%d",c.voltage);
        NSLog(@"%@",c.productName);
        
        BNRAppliance* d = [[BNRAppliance alloc] initWithValue:300 Name:@"hh"];
        NSLog(@"%d",d.voltage);
        NSLog(@"%@",d.productName);
        
        [d setValue:[NSNumber numberWithInt:450] forKey:@"voltage"];
        [d setValue:[NSString stringWithFormat:@"xixi"] forKey:@"productName"];
        
        NSLog(@"%d",d.voltage);
        NSLog(@"%@",d.productName);
        
    }
    return 0;
}

//
//  main.m
//  Chapter18
//
//  Created by YaohuiLi on 2021/1/21.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        BNREmployee * mikey = [[BNREmployee alloc] init];
//        mikey.weightInKilos = 60;
//        mikey.heightInMeters = 1.69;
//        mikey.employeeID = 12;
//        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd,2010"];
//
//        NSLog(@"mikey is %.2f meters tall and wights %d kilograms",mikey.heightInMeters ,mikey.weightInKilos);
//        NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);
//
//        float bmi =[mikey bodyMassIndex];
//        double years = [mikey yearsOfEmployment];
//        NSLog(@"BMI of %.2f, has worked with us for %.2f years",bmi,years);
//
//        NSDate *date = mikey.hireDate;
//        NSLog(@"%@ hired on %@",mikey,date);
//
        
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNREmployee *mikey = [[BNREmployee alloc] init];
            
            [mikey setWeightInKilos:90 + i];
            [mikey setHeightInMeters:1.8 - i/10.0];
            [mikey setEmployeeID:i];
            
            [employees addObject:mikey];
            
            if (i == 0) {
                [executives setObject:mikey forKey:@"CEO"];
            }
            if (i == 1) {
                [executives setObject:mikey forKey:@"CTO"];
            }
            
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        
        for (int i = 0; i < 10; i++) {
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d",i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:350 + i * 17];

            NSUInteger randomIndex = random() % [employees count];
            
            BNREmployee * randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAssets:asset];
            //[randomEmployee removeAssets:asset];
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:@[voa,eid]];
        
        
        
        
        
        NSLog(@"Employees: %@",employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"allAssets: %@",allAssets);
        NSLog(@"executices: %@",executives);
        NSLog(@"CEO: %@",executives[@"CEO"]);
        executives = nil;
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@",toBeReclaimed);
        toBeReclaimed = nil;
        
        
        
        NSLog(@"Giving up ownership of arrays");
        allAssets = nil;
        employees = nil;
        
        
        
        
        
    }
    
    
    return 0;
}

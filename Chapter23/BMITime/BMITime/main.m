//
//  main.m
//  BMITime
//
//  Created by James Birchall on 09/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JABEmployee.h"   // Import class for person to use its methods
#import "JABAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSMutableArray *employees = [NSMutableArray array];
        
        for (int i = 0; i < 10; i++) {
            JABEmployee *jim = [[JABEmployee alloc] init];
            
            jim.weightInKilos = 60+i;
            jim.heightInMeters = 1.8 - i/10.0;
            jim.employeeID = i;
            
            [employees addObject:jim];
        }
        
        // Create 10 assets
        for (int i = 0; i < 10; i++) {
            JABAsset *asset = [[JABAsset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            NSUInteger randomIndex = random() % [employees count];
            
            JABEmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAssets:asset];
        }
        
        for(JABEmployee *employ in employees){
            for(JABAsset *asset in [employ assets]){
                NSLog(@"Assets: %@.\n", asset);
            }
        }
        
        NSLog(@"Employees: %@.\n", employees);
        
        //NSLog(@"Giving up ownership of one employee.\n");
    
        NSLog(@"Employees %lu", [employees count]);
        
        for (int i = 0; i < 10; i++) {
            [employees removeObjectAtIndex:0];
            sleep(2);
        }
    
    
        //NSLog(@"Giving up ownership of arrays.\n");
        
        //employees = nil;
    
        employees = nil;
        //sleep(30);
    
        //sleep(400);
    }
    return 0;
}

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
        
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            JABEmployee *jim = [[JABEmployee alloc] init];
            
            jim.weightInKilos = 60+i;
            jim.heightInMeters = 1.8 - i/10.0;
            jim.employeeID = i;
            
            [employees addObject:jim];
            
            if (i == 0) {
                [executives setObject:jim forKey:@"CEO"];
            }
            if (i == 1) {
                [executives setObject:jim forKey:@"CTO"];
            }
        }
        
        //__weak NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        // Create 10 assets
        for (int i = 0; i < 10; i++) {
            JABAsset *asset = [[JABAsset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            NSUInteger randomIndex = random() % [employees count];
            
            JABEmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAssets:asset];
            
            //[allAssets addObject:asset];
        }
        
        // Sort descriptors contain either a method or instance var/property value with which to sort on
        // Sort Descriptors allow sorted of objects in a Mutable array only
        //NSSortDescriptor *sortOnValueOfAssets = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        //NSSortDescriptor *sortOnEmployeeID = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        
        //[employees sortUsingDescriptors:@[sortOnValueOfAssets, sortOnEmployeeID]];
        
        
        for(JABEmployee *employ in employees){
            for(JABAsset *asset in [employ assets]){
                NSLog(@"Assets: %@.\n", asset);
            }
        }
        
        //NSLog(@"All Assets: %@.\n", allAssets);
        
        //[employees removeObjectAtIndex:1];
        
        NSLog(@"Employees: %@.\n", employees);
        
        
        // Predicates allow you to filter a collections object to a subset of objects
        //NSPredicate *predicate = [NSPredicate predicateWithFormat:@"valueOfAssets > 400"];
        
        //NSArray *filteredEmployees = [employees filteredArrayUsingPredicate:predicate];
        
        //NSLog(@"High value employees: %@.\n", filteredEmployees);
        
        //NSLog(@"Giving up ownership of one employee.\n");
    
        //NSLog(@"All Assets: %@.\n", allAssets);
        
        NSLog(@"Employees %lu", [employees count]);
        
        for (int i = 0; i < 10; i++) {
            [employees removeObjectAtIndex:0];
            sleep(2);
        }
    
        //NSLog(@"Giving up ownership of arrays.\n");
        
        //employees = nil;
        
        NSLog(@"Executives: %@.\n", executives);
        
        //NSLog(@"The CEO is: %@.\n", [executives objectForKey:@"CEO"]);
        NSLog(@"The CEO is: %@.\n", executives[@"CEO"]);
        
        //[executives setObject:[NSNull null] forKey:@"NULL"];
        
        NSLog(@"Null is %@.\n", executives[@"NULL"]);
    
        //allAssets = nil;
        employees = nil;
        //sleep(30);
    
        //sleep(400);
    }
    return 0;
}

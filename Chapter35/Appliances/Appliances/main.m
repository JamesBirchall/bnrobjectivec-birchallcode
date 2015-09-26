//
//  main.m
//  Appliances
//
//  Created by James Birchall on 26/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JABAppliance.h"
#import "OwnedAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        JABAppliance *applicance = [[JABAppliance alloc] init];
        NSLog(@"applicance is %@", applicance);
        
        //[applicance setProductName:@"Washing Machine"];
        // Key Value coding version - setting a value
        [applicance setValue:@"Washing Machine" forKey:@"productName"];
        
        //[applicance setVoltage:240];
        // Key Value coding version - setting a value for a non-object property
        [applicance setValue:[NSNumber numberWithInt:240] forKey:@"voltage"];
        NSLog(@"applicance is %@\n\n", applicance);
        
        // Key value coding version - getting a value
        NSLog(@"the product name is: %@.\n", [applicance valueForKey:@"productName"]);
     
        // Key paths for KVC allows you to traverse an object graph of nested classes to find a value
        // setValue:xx forKeyKeyPath@"xx.yy.zz" - to set a value in chain
        // valueForKeyPath:@"xx.yy.zz" - to get a value in chain
    }
    return 0;
}

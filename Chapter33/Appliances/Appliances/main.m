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
        
        [applicance setProductName:@"Washing Machine"];
        [applicance setVoltage:240];
        NSLog(@"applicance is %@\n\n", applicance);
        
        OwnedAppliance *applicanceOwned = [[OwnedAppliance alloc] init];
        NSLog(@"applicance is %@", applicanceOwned);
        
        [applicanceOwned setProductName:@"Washing Machine"];
        [applicanceOwned setVoltage:240];
        [applicanceOwned addOwnerName:@"James"];
        NSLog(@"applicance is %@", applicanceOwned);
        
    }
    return 0;
}

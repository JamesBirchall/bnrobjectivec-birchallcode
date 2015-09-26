//
//  JABAppliance.m
//  Appliances
//
//  Created by James Birchall on 26/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import "JABAppliance.h"

@implementation JABAppliance

-(instancetype)init{
    
    return [self initWithProductName:@"unknown product"];
}

-(instancetype)initWithProductName:(NSString *)productName{
    // Call the NSObjects init method
    //self = [super init];
    
    // Did it return something non-nil?
    if (self = [super init]) {
        // set product name to passed string
        [self setProductName:[productName copy]];
        
        [self setVoltage:120];
    }
    
    return self;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"< %@ : %d volts >\n", self.productName, self.voltage];
}

@end

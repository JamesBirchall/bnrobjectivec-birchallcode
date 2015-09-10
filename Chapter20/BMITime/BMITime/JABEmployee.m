//
//  JABEmployee.m
//  BMITime
//
//  Created by James Birchall on 10/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import "JABEmployee.h"

@implementation JABEmployee

-(double)yearsOfEmployment{
    if(self.hireDate){
        NSDate *now = [NSDate date];
        
        NSTimeInterval seconds = [now timeIntervalSinceDate:self.hireDate];
        
        return seconds / 31557600.0;
    } else{
        return 0;
    }
}

// Override method from super class
-(float)bodyMassIndex{
    
    // Use super to get super classes data first
    float bmi = [super bodyMassIndex];
    
    bmi = bmi *0.9;
    
    return bmi;
}

// Override the description - part of NSObject and all objects
-(NSString *)description{
    return [NSString stringWithFormat:@"<Employee %d>.\n", self.employeeID];
}

@end

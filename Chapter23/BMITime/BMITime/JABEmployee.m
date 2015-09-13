//
//  JABEmployee.m
//  BMITime
//
//  Created by James Birchall on 10/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import "JABEmployee.h"
#import "JABAsset.h"

@interface JABEmployee ()
{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation JABEmployee

-(void)setAssets:(NSArray *)assets{
    
    _assets = [assets mutableCopy];
}

-(NSArray *)assets{
    return [_assets copy];
}

-(void)addAssets:(JABAsset *)a{
    if(!_assets){
        _assets = [NSMutableArray array];
    }
    [a setHolder:self];
    [_assets addObject:a];
}

-(unsigned int)valueOfAssets{
    unsigned int sum = 0;
    
    for(JABAsset *a in _assets){
        sum += a.resaleValue;
    }
    
    return sum;
}

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
    return [NSString stringWithFormat:@"<Employee %d: $%u in assets.>.\n", self.employeeID, [self valueOfAssets]];
}

-(void)dealloc{
    NSLog(@"Employee %d signing off", self.employeeID);
}

@end

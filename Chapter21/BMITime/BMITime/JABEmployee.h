//
//  JABEmployee.h
//  BMITime
//
//  Created by James Birchall on 10/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JABPerson.h"
@class JABAsset;    // Tells us enough to use a class but not the finer detail

@interface JABEmployee : JABPerson
{
    NSMutableArray *_assets;
}


@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;

- (double)yearsOfEmployment;
- (void)addAssets:(JABAsset *)a;
- (unsigned int)valueOfAssets;

@end

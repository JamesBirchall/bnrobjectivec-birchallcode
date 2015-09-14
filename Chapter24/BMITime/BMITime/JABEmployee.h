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
//{ //Hidding to stop confusion over which public assets variable should be used
//    NSMutableArray *_assets;
//}
@property (nonatomic) unsigned int employeeID;
//@property (nonatomic) unsigned int officeAlarmCode; // should really be private to the class/instance
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSSet *assets;

- (double)yearsOfEmployment;
- (void)addAssets:(JABAsset *)a;
- (unsigned int)valueOfAssets;

@end

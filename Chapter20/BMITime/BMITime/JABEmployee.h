//
//  JABEmployee.h
//  BMITime
//
//  Created by James Birchall on 10/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JABPerson.h"

@interface JABEmployee : JABPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;

- (double)yearsOfEmployment;

@end

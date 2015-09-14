//
//  JABAsset.h
//  BMITime
//
//  Created by James Birchall on 10/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "JABEmployee.h"

@interface JABAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic, weak) JABEmployee *holder;    // making this strong causes problems deallocating memory and leaks occuring
@property (nonatomic) unsigned int resaleValue;

@end

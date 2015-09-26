//
//  JABAppliance.h
//  Appliances
//
//  Created by James Birchall on 26/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JABAppliance : NSObject

//@property (nonatomic) NSString *productName;
@property (nonatomic) int voltage;

// designated initializer
- (instancetype)initWithProductName:(NSString *)productName;

@end

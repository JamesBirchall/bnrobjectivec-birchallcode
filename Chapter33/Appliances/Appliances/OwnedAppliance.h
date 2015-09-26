//
//  OwnedAppliance.h
//  Appliances
//
//  Created by James Birchall on 26/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import "JABAppliance.h"

@interface OwnedAppliance : JABAppliance

@property (readonly) NSSet *ownerNames;

// designated initializer
- (instancetype)initWithProductName:(NSString *)productName firstOwnerName:(NSString *)firstOwnerName;

- (void)addOwnerName:(NSString *)name;
- (void)removeOwnerName:(NSString *)name;

@end

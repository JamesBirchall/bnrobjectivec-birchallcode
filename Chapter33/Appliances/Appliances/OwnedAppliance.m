//
//  OwnedAppliance.m
//  Appliances
//
//  Created by James Birchall on 26/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import "OwnedAppliance.h"

@interface OwnedAppliance ()
{
    NSMutableSet *_ownerNames;
}
@end

@implementation OwnedAppliance

-(instancetype)initWithProductName:(NSString *)productName firstOwnerName:(NSString *)firstOwnerName{
    if (self = [super initWithProductName:productName]) {
        _ownerNames = [[NSMutableSet alloc] init];
        
        // is this first owner?  if so set name
        if (firstOwnerName) {
            [_ownerNames addObject:firstOwnerName];
        }
    }
    
    return self;
}

// we override this method from the super class so that all inits use the designated init
-(instancetype)initWithProductName:(NSString *)productName{
    return [self initWithProductName:productName firstOwnerName:nil];
}

-(void)addOwnerName:(NSString *)name{
    [_ownerNames addObject:name];
}

-(void)removeOwnerName:(NSString *)name{
    [_ownerNames removeObject:name];
}

-(NSSet *)ownerNames{
    return [_ownerNames copy];
}

-(NSString *)description{
    return [NSString stringWithFormat:@"< %@ : %d volts, owned by %@ >\n", self.productName, self.voltage, self.ownerNames];
}

@end

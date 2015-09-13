//
//  JABAsset.m
//  BMITime
//
//  Created by James Birchall on 10/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import "JABAsset.h"

@implementation JABAsset

-(NSString *)description{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

-(void)dealloc{
    NSLog(@"deallocation %@\n", self);
}

@end

//
//  JABForeignStockHolding.m
//  Stocks
//
//  Created by James Birchall on 10/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import "JABForeignStockHolding.h"

@implementation JABForeignStockHolding

-(float)costInDollars{
    // use conversion rate on super returned value
    float cost = [super costInDollars];
    return cost * self.conversionRate;
}

-(float)valueInDollars{
    float value = [super valueInDollars];
    return value * self.conversionRate;
}

@end

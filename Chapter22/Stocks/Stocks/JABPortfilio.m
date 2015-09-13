//
//  JABPortfilio.m
//  Stocks
//
//  Created by James Birchall on 13/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import "JABPortfilio.h"
#import "JABForeignStockHolding.h"

@interface JABPortfilio ()
{
    NSMutableArray *_holdings;
}
@end

@implementation JABPortfilio

-(float)totalValue{
    float total;
    
    for(JABForeignStockHolding *stock in self.holdings){
        total += [stock valueInDollars];
    }
    
    return total;
}

// Using _holings private NSMutable array, set it to contain mutable copy of NSArray sent through
-(void)setHoldings:(NSArray *)stocks{
    if(!_holdings){
        _holdings = [[NSMutableArray alloc] init];
    }
    _holdings = [stocks mutableCopy];
}

-(NSArray *)holdings{
    return _holdings;
}

-(void)removeHolding:(JABStockHolding *)stock{
    [_holdings removeObjectIdenticalTo:stock];
}

@end

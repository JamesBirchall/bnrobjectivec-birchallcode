//
//  JABPortfilio.m
//  Stocks
//
//  Created by James Birchall on 13/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import "JABPortfilio.h"
#import "JABForeignStockHolding.h"

@implementation JABPortfilio

-(float)totalValue{
    float total;
    
    for(JABForeignStockHolding *stock in self.holdings){
        total += [stock valueInDollars];
    }
    
    return total;
}

@end

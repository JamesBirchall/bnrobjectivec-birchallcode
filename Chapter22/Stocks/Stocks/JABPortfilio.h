//
//  JABPortfilio.h
//  Stocks
//
//  Created by James Birchall on 13/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JABForeignStockHolding.h"

@interface JABPortfilio : NSObject

- (float)totalValue;
- (void)setHoldings:(NSArray *)stocks;
- (NSArray *)holdings;
- (void)removeHolding:(JABStockHolding *)stock;

@end

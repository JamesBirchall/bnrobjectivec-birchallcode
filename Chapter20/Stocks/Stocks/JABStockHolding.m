//
//  JABStockHolding.m
//  Stocks
//
//  Created by James Birchall on 09/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import "JABStockHolding.h"

@implementation JABStockHolding

#pragma mark - Setters/Getters
-(float)purchasePrice{
    return _purchasePrice;
}

-(void)setPurchasePrice:(float)purchasePrice{
    _purchasePrice = purchasePrice;
}

-(float)currentPrice{
    return _currentPrice;
}

-(void)setCurrentPrice:(float)currentPrice{
    _currentPrice = currentPrice;
}

-(int)numberOfShares{
    return _numberOfShares;
}

-(void)setNumberOfShares:(int)numberOfShares{
    _numberOfShares = numberOfShares;
}

#pragma mark - public methods
-(float)costInDollars{
    return [self purchasePrice] * [self numberOfShares];
}

-(float)valueInDollars{
    return [self currentPrice] * [self numberOfShares];
}

@end

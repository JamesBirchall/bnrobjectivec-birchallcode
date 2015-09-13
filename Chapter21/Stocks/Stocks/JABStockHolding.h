//
//  JABStockHolding.h
//  Stocks
//
//  Created by James Birchall on 09/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JABStockHolding : NSObject
{
    float _purchasePrice;
    float _currentPrice;
    int _numberOfShares;
}

@property (nonatomic, copy) NSString *symbol;

#pragma mark - Setters/Getters
- (float)purchasePrice;
- (void)setPurchasePrice:(float)purchasePrice;
- (float)currentPrice;
- (void)setCurrentPrice:(float)currentPrice;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)numberOfShares;


#pragma mark - Public Methods
- (float)costInDollars;
- (float)valueInDollars;

@end

//
//  main.m
//  Stocks
//
//  Created by James Birchall on 09/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JABForeignStockHolding.h"
#import "JABPortfilio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        JABStockHolding *oilShares = [[JABStockHolding alloc] init];
        [oilShares setNumberOfShares:10];
        [oilShares setPurchasePrice:100.0];
        [oilShares setCurrentPrice:110.0];
        [oilShares setSymbol:@"OIL"];
        
        JABStockHolding *farmShares = [[JABStockHolding alloc] init];
        [farmShares setNumberOfShares:100];
        [farmShares setPurchasePrice:100.0];
        [farmShares setCurrentPrice:110.0];
        [farmShares setSymbol:@"FRM"];
        
        JABStockHolding *droneShares = [[JABStockHolding alloc] init];
        [droneShares setNumberOfShares:50];
        [droneShares setPurchasePrice:100.0];
        [droneShares setCurrentPrice:95.0];
        [droneShares setSymbol:@"DRN"];
        
        JABForeignStockHolding *swedishShares = [[JABForeignStockHolding alloc] init];
        [swedishShares setNumberOfShares:50];
        [swedishShares setPurchasePrice:100.0];
        [swedishShares setCurrentPrice:110.0];
        [swedishShares setConversionRate:0.8];
        [swedishShares setSymbol:@"SWE"];
        
        JABForeignStockHolding *germanShares = [[JABForeignStockHolding alloc] init];
        [germanShares setNumberOfShares:50];
        [germanShares setPurchasePrice:100.0];
        [germanShares setCurrentPrice:95.0];
        [germanShares setConversionRate:1.2];
        [germanShares setSymbol:@"GER"];
        
        NSArray *sharesHeld = @[oilShares, farmShares, droneShares, swedishShares, germanShares];
        
        JABPortfilio *portfolio = [[JABPortfilio alloc] init];
        
        [portfolio setHoldings:sharesHeld];
        
        int i = 1;
        for(JABStockHolding *share in [portfolio holdings]){
            NSLog(@"Share %@ : %d current value = $%.2f.\n", [share symbol], i, [share valueInDollars]);
            NSLog(@"Value lost or made = $%.2f.\n", [share valueInDollars] - [share costInDollars]);
            i++;
        }
        
        NSLog(@"Total value is %.2f.\n", [portfolio totalValue]);
        
        NSLog(@"Removing %@ shares.\n", [germanShares symbol]);
        [portfolio removeHolding:germanShares];
        
        i = 1;
        for(JABStockHolding *share in [portfolio holdings]){
            NSLog(@"Share %@ : %d current value = $%.2f.\n", [share symbol], i, [share valueInDollars]);
            NSLog(@"Value lost or made = $%.2f.\n", [share valueInDollars] - [share costInDollars]);
            i++;
        }
        
        NSLog(@"Total value is %.2f.\n", [portfolio totalValue]);
    }
    return 0;
}

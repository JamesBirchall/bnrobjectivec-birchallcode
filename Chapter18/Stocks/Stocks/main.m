//
//  main.m
//  Stocks
//
//  Created by James Birchall on 09/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JABStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        JABStockHolding *oilShares = [[JABStockHolding alloc] init];
        [oilShares setNumberOfShares:10];
        [oilShares setPurchasePrice:100.0];
        [oilShares setCurrentPrice:110.0];
        
        JABStockHolding *farmShares = [[JABStockHolding alloc] init];
        [farmShares setNumberOfShares:100];
        [farmShares setPurchasePrice:100.0];
        [farmShares setCurrentPrice:110.0];
        
        JABStockHolding *droneShares = [[JABStockHolding alloc] init];
        [droneShares setNumberOfShares:50];
        [droneShares setPurchasePrice:100.0];
        [droneShares setCurrentPrice:95.0];
        
        NSArray *sharesHeld = @[oilShares, farmShares, droneShares];
        
        int i = 1;
        for(JABStockHolding *share in sharesHeld){
            NSLog(@"Share %d current value = $%.2f.\n", i, [share valueInDollars]);
            NSLog(@"Value lost or made = $%.2f.\n", [share valueInDollars] - [share costInDollars]);
            i++;
        }
        
    }
    return 0;
}

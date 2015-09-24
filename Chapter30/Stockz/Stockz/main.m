//
//  main.m
//  Stockz
//
//  Created by James Birchall on 24/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSMutableArray *stocks = [NSMutableArray array];
        
        NSMutableDictionary *stock;
        
        stock = [[NSMutableDictionary alloc] init];
        
        [stock setObject:@"AAPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];   //alternative to alloc/init
        [stock setObject:@"JIMM" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:999] forKey:@"shares"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
        
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        
        for(NSDictionary *stock in stockList){
            NSLog(@"You have %@ %@ shares.\n", stock[@"shares"], stock[@"symbol"]);
        }
    }
    return 0;
}

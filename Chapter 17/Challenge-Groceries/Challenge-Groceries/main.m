//
//  main.m
//  Challenge-Groceries
//
//  Created by James Birchall on 06/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSMutableArray *groceries = [NSMutableArray array];
        
        NSString *bread = @"Loaf of bread";
        NSString *milk = @"Pint of milk";
        NSString *butter = @"Stick of butter";
        
        [groceries addObjectsFromArray:@[bread, milk, butter]];
        
        NSLog(@"Your grocerys list is:\n");
        for(NSString *item in groceries){
            NSLog(@"%@\n", item);
        }
        
    }
    return 0;
}

//
//  main.m
//  unsigned64Challenge
//
//  Created by James Birchall on 26/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // create unsigned 64 bit number, but activate every other bit it turned on
        
        // 64 bit number means:
        // 0101 0101 0101 0101 0101 0101 0101 0101
        // 0101 0101 0101 0101 0101 0101 0101 0101
        
        UInt64 largeNumber = 1;
        
        for (int i = 1; i < 63; i += 2) {
            // take large number, add 1 and shift left 2 storing back in itself
            largeNumber = largeNumber << 2;
            largeNumber += 1;
            NSLog(@"%llu\n", largeNumber);
        }
        
        
        printf("Binary value: ");
        // show number in binary value:
        while (largeNumber) {
            if (largeNumber & 1)
                printf("1");
            else
                printf("0");
            
            largeNumber >>= 1;
        }
        
        printf("\n");
    }
    return 0;
}

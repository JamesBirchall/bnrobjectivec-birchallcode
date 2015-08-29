//
//  main.m
//  TimeAfterTime
//
//  Created by James Birchall on 29/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSDate *now = [NSDate date];
        
        NSLog(@"This NSLog exists at %p.\n", now);
        
        NSLog(@"The date is %@.\n", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since 1970.\n", seconds);
        
    }
    return 0;
}

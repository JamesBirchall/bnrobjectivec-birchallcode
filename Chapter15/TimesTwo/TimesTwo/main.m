//
//  main.m
//  TimesTwo
//
//  Created by James Birchall on 30/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p.\n", currentTime);
        
        NSDate *startTime = currentTime;
        
        sleep(2);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is now %p.\n", currentTime);
        NSLog(@"address of the original object is %p.\n", startTime);
        
        currentTime = nil;
        NSLog(@"currentTime's value is now %p.\n", currentTime);
        
    }
    return 0;
}

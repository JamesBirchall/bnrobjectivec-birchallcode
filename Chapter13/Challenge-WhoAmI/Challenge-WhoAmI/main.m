//
//  main.m
//  Challenge-WhoAmI
//
//  Created by James Birchall on 29/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSHost *thisHost = [NSHost currentHost];
        
        NSString *hostname = [thisHost localizedName];
        
        NSLog(@"Host: %@", hostname);
        
    }
    return 0;
}

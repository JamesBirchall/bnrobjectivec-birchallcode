//
//  main.m
//  DateMonger
//
//  Created by James Birchall on 26/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+JABDateConvenience.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int day = 23;
        int month = 3;
        int year = 1987;
        
        NSLog(@"Your custom date is: %@.\n", [NSDate dateFromDay:day month:month year:year]);
    }
    return 0;
}

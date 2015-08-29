//
//  main.m
//  Challenge-HowOldAmI
//
//  Created by James Birchall on 29/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // Need to have my age as date, the time since and the difference
        // Then print as seconds since born
        
        NSDateComponents *dateComp = [[NSDateComponents alloc] init];
        
        dateComp.day = 23;
        dateComp.month = 3;
        dateComp.year = 1987;
        
        NSCalendar *calender = [NSCalendar currentCalendar];
        
        NSDate *birthdate = [calender dateFromComponents:dateComp];
        
        NSLog(@"Your birthday is %@.\n", birthdate);
        
        double timeSinceBirth = [[[NSDate alloc] init] timeIntervalSinceDate:birthdate];
        
        NSLog(@"Time since birthday is %.0f", timeSinceBirth);
        
    }
    return 0;
}

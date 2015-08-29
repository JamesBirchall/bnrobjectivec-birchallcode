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

//        NSDate *now = [NSDate date];
        NSDate *now = [[NSDate alloc] init];
        
        NSLog(@"This NSLog exists at %p.\n", now);
        
        NSLog(@"The date is %@.\n", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since 1970.\n", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:1000000];
        
        NSLog(@"In 1 million seconds it will be: %@", later);
        
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        
        NSLog(@"My calender is %@.\n", [cal calendarIdentifier]);
        
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:now];
        
        NSLog(@"This is the %lu day of the month.\n", day);
        
    }
    return 0;
}

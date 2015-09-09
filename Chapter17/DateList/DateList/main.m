//
//  main.m
//  DateList
//
//  Created by James Birchall on 06/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSDate *now = [NSDate date];
        
        // Create tomorrow by adding 24 hours in seconds (60 sec * 60 mins * 24 hours)
        NSDate *tomorrow = [now dateByAddingTimeInterval:(60.0 * 60.0 * 24.0)];
        
        // Create yesterday by adding negative number of 24 hours
        NSDate *yesterday = [now dateByAddingTimeInterval:(-60.0 * 60.0 * 24.0)];
        
        // An array with all 3 dates
        // NSArray literal is created with @[]
        // This is an immuatable version, cannot be modified after creation
        NSArray *dateList = @[now, tomorrow, yesterday];
        
        NSLog(@"The first date is %@.\n", dateList[0]);
        NSLog(@"The third date is %@.\n", dateList[2]);
        
        NSLog(@"There are %lu dates in the list.\n", [dateList count]);
        
        // Throws NSRangeException error as the array is not this long
        //NSLog(@"The third date is %@.\n", dateList[50]);
        
        
        // Traditional for loop, good when you need to make an actual change in the object
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = dateList[i];
            NSLog(@"The date at index %d is: %@.\n", i, d);
        }
        
        // Fast enumeration loop, cannot modify the object referenced but is faster
        for(NSDate *d in dateList){
            NSLog(@"The date is: %@.\n", d);
        }
        
        NSMutableArray *dateListEditable = [NSMutableArray array];
        
        [dateListEditable addObject:now];
        [dateListEditable addObject:tomorrow];
        
        // Add yesterday at the beginning of the array
        [dateListEditable insertObject:yesterday atIndex:0];
    
        for(NSDate *d in dateListEditable){
            NSLog(@"The date is: %@.\n", d);
        }
        
        // Remove yesterday
        [dateListEditable removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", dateListEditable[0]);
    }
    return 0;
}

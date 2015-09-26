//
//  NSDate+JABDateConvenience.m
//  DateMonger
//
//  Created by James Birchall on 26/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import "NSDate+JABDateConvenience.h"

@implementation NSDate (JABDateConvenience)

+(NSDate *)dateFromDay:(int)day month:(int)month year:(int)year{
    NSDateComponents *dateComp = [[NSDateComponents alloc] init];
    
    dateComp.day = day;
    dateComp.month = month;
    dateComp.year = year;
    
    NSCalendar *calender = [NSCalendar currentCalendar];
    
    return [calender dateFromComponents:dateComp];
}

@end

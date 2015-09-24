//
//  main.m
//  PlistChallenge
//
//  Created by James Birchall on 24/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // Get for NSData object - web page
        NSURL *url = [NSURL URLWithString:@"http://forums.bignerdranch.com"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:nil
                                                         error:&error];
        if (data == nil) {
            NSLog(@"download failed: %@", [error localizedDescription]);
            return 1;
        }
        
        BOOL valueBool = YES;
        NSNumber *value = [[NSNumber alloc] initWithBool:valueBool];
        
        // PList array
        NSMutableArray *pList = [NSMutableArray array];
        
        NSArray *planets = @[@"Mercury", @"Venus", @"Earth", @"Mars", @"Jupiter", @"Saturn"];
        
        // Create date format for storage
        NSDateFormatter *dateFormatter= [[NSDateFormatter alloc]init];
        [dateFormatter setTimeStyle:NSDateFormatterLongStyle];
        [dateFormatter setDateStyle:NSDateFormatterLongStyle];
        
        NSDate *now = [NSDate date];
        
        // Setup dictionary from multiple key/value pairs inside
        NSDictionary *stock = [[NSDictionary alloc]
                               initWithObjects:
                               @[@"JIMM", [NSNumber numberWithInt:999], [NSNumber numberWithFloat:80.34],now]
                               forKeys:@[@"symbol", @"shares", @"price", @"date"]];
        

        // finally add to main array we will write as plist
        
        [pList addObject:stock];
        [pList addObject:planets];
        [pList addObject:[dateFormatter stringFromDate:now]];
        [pList addObject:now];
        [pList addObject:value];
        [pList addObject:data];
        
        
        [pList writeToFile:@"/tmp/challenge.plist" atomically:YES];
        
    }
    return 0;
}

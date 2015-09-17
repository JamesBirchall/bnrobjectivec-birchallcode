//
//  JABLogger.m
//  Callbackz
//
//  Created by James Birchall on 17/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import "JABLogger.h"

@implementation JABLogger
{
    NSMutableData *_incomingData;
}

-(void)zoneChange:(NSNotification *)n{
    NSLog(@"Time zone was changed.\n");
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    
    
    NSLog(@"Recieved %lu bytes.\n", [data length]);
    
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSLog(@"Got it all!\n");
    
    NSLog(@"Data size %lu.\n", [_incomingData length]);
    
    NSData *string = [[NSData alloc] init];
    
    string = _incomingData;
    
    _incomingData = nil;
    
    NSLog(@"String is %lu bytes.\n", [string length]);
    
    NSError *error;
    
    NSLog(@"Attempting to write to file...\n");
    
    BOOL success = [string writeToFile:@"/tmp/gamefaqs.txt" options:NSDataWritingAtomic error:&error];
    
    if (!success) {
        NSLog(@"Write failed: %@\n", [error localizedDescription]);
    } else {
        NSLog(@"Write successful!");
    }
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    _incomingData = nil;    //clear out data pool
    
    NSLog(@"Error during pull: %@", [error localizedDescription]);
}

-(NSString *)lastTimeString{
    static NSDateFormatter *dateFormatter = nil;
    
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatted");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

-(void)updateLastTimeString:(NSTimer *)t{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@.\n", self.lastTimeString);
}

@end

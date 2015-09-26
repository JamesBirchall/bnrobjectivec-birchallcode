//
//  JABLogger.h
//  Callbackz
//
//  Created by James Birchall on 17/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JABLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>

@property (nonatomic) NSDate *lastTime;

- (NSString *)lastTimeString;
- (void)updateLastTimeString:(NSTimer *)t;
- (void)zoneChange:(NSNotification *)n;

@end

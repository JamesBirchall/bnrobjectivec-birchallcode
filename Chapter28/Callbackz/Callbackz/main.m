//
//  main.m
//  Callbackz
//
//  Created by James Birchall on 17/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JABLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        JABLogger *logger = [[JABLogger alloc] init];
        
        
        
        //[[NSNotificationCenter defaultCenter] addObserver:logger selector:@selector(zoneChange:) name:NSSystemTimeZoneDidChangeNotification object:nil];
        
        // Blocks
        void (^zoneChange)(NSNotification *);
        zoneChange = ^(NSNotification *notification){
            NSLog(@"Time zone was changed.\n");
        };
        
        [[NSNotificationCenter defaultCenter] addObserverForName:NSSystemTimeZoneDidChangeNotification object:nil queue:nil usingBlock:zoneChange    ];
        
        NSURL *url = [NSURL URLWithString:@"http://db.gamefaqs.com/console/psx/file/final_fantasy_vii_k.txt"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConnection = [[NSURLConnection alloc] initWithRequest:request delegate:logger startImmediately:YES];
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTimeString:) userInfo:nil repeats:YES];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}

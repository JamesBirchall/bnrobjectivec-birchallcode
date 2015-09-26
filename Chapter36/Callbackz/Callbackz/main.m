//
//  main.m
//  Callbackz
//
//  Created by James Birchall on 17/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JABLogger.h"
#import "JABObserver.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        JABLogger *logger = [[JABLogger alloc] init];
        
        [[NSNotificationCenter defaultCenter] addObserver:logger selector:@selector(zoneChange:) name:NSSystemTimeZoneDidChangeNotification object:nil];
        
        NSURL *url = [NSURL URLWithString:@"http://db.gamefaqs.com/console/psx/file/final_fantasy_vii_k.txt"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConnection = [[NSURLConnection alloc] initWithRequest:request delegate:logger startImmediately:YES];
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTimeString:) userInfo:nil repeats:YES];
        
        __unused JABObserver *observer = [[JABObserver alloc] init];
        
        // I want to know old and new value when lastTime is changed        
        //[logger addObserver:observer forKeyPath:@"lastTime" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
        
        // checking for lastTimeString instead
        [logger addObserver:observer forKeyPath:@"lastTimeString" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}

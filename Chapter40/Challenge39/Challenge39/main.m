//
//  main.m
//  Challenge39
//
//  Created by James Birchall on 27/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSData+Speakable.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // leftmost 3 bits of each byte (8 bits) encoded as digit between 2-9
        // remaining 5 bits will represent brand name (32) options
        
        srandom((unsigned int) time(NULL));
        
        int64_t randomBytes = (random() << 32) | random();
        
        NSData *inData = [NSData dataWithBytes:&randomBytes length:sizeof(int64_t)];
        
        NSLog(@"In data = %@\n", inData);
        
        NSString *speakable = [inData encodeAsSpeakableString];
        
        NSLog(@"Got string \"%@\"", speakable);
        
        NSError *err;
        
        NSData *outData = [NSData dataWithSpeakableString:speakable error:&err];
        
        if (!outData) {
            NSLog(@"Unexpected error: %@", [err localizedDescription]);
            return -1;
        }
        
        NSLog(@"Out data: %@\n", outData);
        
        if (![outData isEqual:inData]) {
            NSLog(@"Data coming out not the same as what went in.\n");
            return -1;
        }
        
        // Test a misspelling
        
        speakable = @"2 Jeep 3 Halo 7 Teevo 2 Pepsi 2 Volvo";
        
        outData = [NSData dataWithSpeakableString:speakable error:&err];
        
        if (!outData) {
            NSLog(@"Missed bad string: %@", [err localizedDescription]);
            return -1;
        }
        
        
    }
    return 0;
}

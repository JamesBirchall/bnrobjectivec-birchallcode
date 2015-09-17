//
//  main.m
//  Stringz
//
//  Created by James Birchall on 17/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSMutableString *str = [[NSMutableString alloc] init];
        
        for (int i = 0; i < 10; i++) {
            [str appendString:@"James is coding!\n"];
        }
        
        NSError *error;
        
        BOOL successWrite = [str writeToFile:@"/tmp/coding.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
        
        if (successWrite) {
            NSLog(@"Done writing out.\n");
        } else {
            NSLog(@"Error writting...%@.\n", [error localizedDescription]);
        }
        
        
        NSString *readStr = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf" encoding:NSASCIIStringEncoding error:&error];
        
        if (!readStr) {
            NSLog(@"read failed: %@.\n", [error localizedDescription]);
        } else {
            NSLog(@"resolv.conf looks like this:\n %@.\n", readStr);
        }
    }
    return 0;
}

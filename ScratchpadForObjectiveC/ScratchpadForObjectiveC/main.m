//
//  main.m
//  ScratchpadForObjectiveC
//
//  Created by James Birchall on 06/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // @"" part is an NSString literls
        NSString *lament = @"Why me!?";
        
        // Below is an example of unicode character for heart symbol
        __unused NSString *slogan = @"I \u2661 New York!";
        
        NSDate *now = [NSDate date];
        
        //Following shows how to create a dynamic string
        __unused NSString *dateString = [NSString stringWithFormat:@"The date is %@.\n", now];
        
        NSUInteger lengthOfLament = [lament length];
        
        NSLog(@"Lament is %lu charcters long.\n", lengthOfLament);
        
        
        NSString *lament2 = @"Why me!?";
        
        if ([lament isEqualToString:lament2]) {
            NSLog(@"Equal.\n");
        }
        
        NSString *lament3 = @"WHY ME!?";
        
        NSString *lament4 = [lament lowercaseString];
        
        if ([lament4 isEqualToString:[lament3 lowercaseString]]) {
            NSLog(@"Equal when lower cased.\n");
        }
        
        // Create string
        NSString *longString = @"This string is awesome!\n";
        
        NSString *partString = @"awesome";
        
        NSRange foundRange = [longString rangeOfString:partString];
        
        NSString *foundWordWas = [longString substringWithRange:foundRange];
        
        NSLog(@"The found word was: %@\n", foundWordWas);
        
        
    }
    return 0;
}

//
//  main.m
//  VowelCounter
//
//  Created by James Birchall on 26/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+JABVowelCounting.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *string = @"Hello wOrldY!";
        NSLog(@"%@ has %D vowels.\n", string, [string jab_vowelCount]);
    }
    return 0;
}

//
//  main.m
//  VowelMovement
//
//  Created by James Birchall on 24/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumartionBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
        NSArray *originalString = @[@"Sauerkraut", @"Raygun", @"Bignerdranch", @"Mississippi"];
        
        NSLog(@"original strings: %@.\n", originalString);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
//        // declare block variable
//        void (^devowelizer)(id, NSUInteger, BOOL *);
//        
//        // the block code then:
//        devowelizer = ^(id string, NSUInteger i, BOOL *stop){
//            NSMutableString *newString = [NSMutableString stringWithString:string];
//            
//            // iterate over the array of vowels, replacing each match with nothing
//            for(NSString *s in  vowels){
//                NSRange fullRange = NSMakeRange(0, [newString length]);
//                
//                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
//            }
//            
//            [devowelizedStrings addObject:newString];
//        };

        // declare block variable and assign to code in same:
        //void (^devowelizer)(id, NSUInteger, BOOL *) = ^(id string, NSUInteger i, BOOL *stop){
          ArrayEnumartionBlock devowelizer = ^(id string, NSUInteger i, BOOL *stop){
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            
            if (yRange.location != NSNotFound) {
                *stop = YES;
                NSLog(@"y found in next string: %@.\n", string);
                return;
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // iterate over the array of vowels, replacing each match with nothing
            for(NSString *s in  vowels){
                NSRange fullRange = NSMakeRange(0, [newString length]);
                
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
        };
        
        [originalString enumerateObjectsUsingBlock:devowelizer];
        
        NSLog(@"devowelized string: %@.\n", devowelizedStrings);
    }
    return 0;
}

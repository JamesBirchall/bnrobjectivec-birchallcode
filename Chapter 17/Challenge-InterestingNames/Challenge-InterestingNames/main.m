//
//  main.m
//  Challenge-InterestingNames
//
//  Created by James Birchall on 09/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *properNames = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:nil];
        
        if (!properNames) {
            NSLog(@"Error: file not read in or found - properNames.\n");
            return 1;
        }
        
        NSString *wordsList = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:nil];
        
        if (!wordsList) {
            NSLog(@"Error: file not read in or found - wordsList.\n");
            return 1;
        }
        
        NSArray *names = [properNames componentsSeparatedByString:@"\n"];
        
        NSLog(@"Names contains %lu names.\n", [names count]);
        
        NSArray *words = [wordsList componentsSeparatedByString:@"\n"];
        
        NSLog(@"Words contains %lu words", [words count]);
        
        // Run through proper names, for each name, search words for a match, if found print out, if not continue to search.  End when at end of proper names list
        
//        for(NSString *word in words){
//            for(NSString *name in names){
//                if ([[word lowercaseString] isEqualToString:[name lowercaseString]]) {
//                    NSLog(@"%@ : %@ matched.\n", word, name);
//                    break;  // because we found a matc on that word, why continue... wastes time
//                }
//            }
//        }
        
        // Following allows us to check for the strings not to match due to capitalisation 
        int i = 0;
        for (NSString *w in words) {
            for (NSString *n in names) {
                if (![n isEqualToString:w]){
                    if ([n isEqualToString:[w capitalizedString]] &&
                        [w isEqualToString:[w lowercaseString]]) {
                        i++;
                        NSLog(@"%d: %@ : %@", i, w, n);
                    }
                }
            }
        }
        
    }
    return 0;
}

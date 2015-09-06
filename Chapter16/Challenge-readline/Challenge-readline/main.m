//
//  main.m
//  Challenge-readline
//
//  Created by James Birchall on 06/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //printf("Please enter a number to countdown from: ");
        NSLog(@"Please enter a number to countdown from: ");
        
        int countdown = 0;
        
        NSString *value = [NSString stringWithCString:readline(NULL) encoding:NSUTF8StringEncoding];
        //const char *value = readline(NULL);
        
        countdown = (int)[value integerValue];
        
        if (!countdown) {
            NSLog(@"Error, please try an integer value.\n");
            // printf("Error, please try an integer value.\n");
            return 1;
        }
        
        for (int i = countdown; i >=0 ; i -= 3) {
            // printf("%d\n", i);
            NSLog(@"%d", i);
            
            if (!(i % 5)) {
                NSLog(@"Found one!\n");
                //printf("Found one!\n");
            }
        }
    }
    return 0;
}

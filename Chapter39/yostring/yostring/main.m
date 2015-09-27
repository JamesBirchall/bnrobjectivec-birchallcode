//
//  main.m
//  yostring
//
//  Created by James Birchall on 27/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>
#import <stdlib.h>
#import <string.h>

int spaceCount(const char * sentence){
    
    unsigned long length = strlen(sentence);
    
    printf("Length is %lu.\n", length);
    
    int spaces = 0;
    
    for (int i = 0; i < length; i++) {
        
        int c = sentence[i];
        
        printf("Log: %c\n", c);
        
        int check = ' ';
        
        if (c == check) {
            spaces++;
        }
    }
    
    return spaces;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        char x = 0x21; // the character'!'
        // char x = '!';    //literal version
        
        while (x < 0x7e) {
            printf("%x is %c.\n", x, x);
            x++;
        }
    }
    
    char *start = malloc(5);    // 5 bytes
//    *start = 'L';
//    *(start + 1) = 'o';
//    *(start + 2) = 'v';
//    *(start + 3) = 'e';
//    *(start + 4) = '\0';    //end of string marker
    
    // alternative way to dereference the pointer and store a value in it
    start[0] = 'L';
    start[1] = 'o';
    start[2] = 'v';
    start[3] = 'e';
    start[4] = '\0';
    
    //char *anotherString = "Love";   // compiler takes care of allocating memory and terminating with \0 - cannot assign to this and change it though, use const to let compiler catch the warning of this
    
    
    printf("%s has %zu characters.\n", start, strlen(start));
    
    printf("Te 3rd character is %c.\n", *(start + 2));
    
    free(start);
    start = NULL;   //best practise to null
    
    
    // Space count
    
    const char *sentence = "He was not in the cab at the time.";
    printf("\"%s\" has %d spaces.\n", sentence, spaceCount(sentence));
    
    return 0;
}

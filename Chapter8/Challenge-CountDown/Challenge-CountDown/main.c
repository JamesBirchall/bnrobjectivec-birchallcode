//
//  main.c
//  Challenge-CountDown
//
//  Created by James Birchall on 23/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <readline/readline.h>

int main(int argc, const char * argv[]) {

    printf("Please enter a number to countdown from: ");
    
    int countdown = 0;
    
    const char *value = readline(NULL);
    
    countdown = atoi(value);
    
    if (!countdown) {
        printf("Error, please try an integer value.\n");
        return 1;
    }
    
    for (int i = countdown; i >=0 ; i -= 3) {
        printf("%d\n", i);
        
        if (!(i % 5)) {
            printf("Found one!\n");
        }
    }
    
    return 0;
}

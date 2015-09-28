//
//  main.c
//  Affirmation
//
//  Created by James Birchall on 28/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {

    if (argc != 3) {
        fprintf(stderr, "Usage: Affirmation <adjective> <number> \n");
    }
    
    int count = atoi(argv[2]);
    
//    for (int i = 0; i < argc; i++) {
//        printf("arg %d is %s.\n", i, argv[i]);
//    }


    for (int i = 0; i < count; i++) {
        printf("%s is cool!\n", argv[1]);
    }
    
    return 0;
}

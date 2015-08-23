//
//  main.c
//  Challenge-Squarer
//
//  Created by James Birchall on 23/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#include <stdio.h>

void square(int x){
    printf("\"%d\" squared is \"%d\"", x, x*x);
}

int main(int argc, const char * argv[]) {

    int number = 10;
    
    square(number);
    
    return 0;
}

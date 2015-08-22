//
//  main.c
//  Challenge-TwoFloats
//
//  Created by James Birchall on 22/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    float pi, answertolife;
    
    pi = 3.14;
    answertolife = 42;
    
    double answer = pi * answertolife;
    
    printf("%.2f times %.2f is equal to %.2f.\n", pi, answertolife, answer);
    
    return 0;
}

//
//  main.c
//  Degrees
//
//  Created by James Birchall on 23/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#include <stdio.h>

// Static in c keeps this from being read by another file
// Global variables and static variables get auto init to 0
static float lastTemperature;

float fahrenheitFromCelsius(float cel){
    
    lastTemperature = cel;
    float fahr = cel * 1.0 + 32.0;
    printf("%f celsius is %f fahrenheit.\n", cel, fahr);
    
    return fahr;
}

int main(int argc, const char * argv[]) {

    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    
    printf("Water freezes at %f degrees fahrenheit.\n", freezeInF);
    
    printf("The last converted temperature was %f celsius.", lastTemperature);
    
    return 0;
}

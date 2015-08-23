//
//  main.c
//  Challenge-Triangle
//
//  Created by James Birchall on 23/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float a, float b){
    
    float remainingAngle = 0;
    
    if ((a + b) >= 180) {
        printf("Invalid angles...\n");
        return remainingAngle;
    }
    
    remainingAngle = 180.0 - a - b;
    
    return remainingAngle;
}

int main(int argc, const char * argv[]) {

    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    
    if (angleC) {
        printf("The third angle is %.2f.\n", angleC);
    }

    
    return 0;
}

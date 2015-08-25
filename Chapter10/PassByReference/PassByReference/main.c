//
//  main.c
//  PassByReference
//
//  Created by James Birchall on 25/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *feetPtr, double *inchesPtr){
    double rawFeet = meters * 3.281;
    
    unsigned int feet = (unsigned int)floor(rawFeet);
    
    if (feetPtr) {
        printf("Storing %f to the address of %p.\n", rawFeet, feetPtr);
        
        *feetPtr = rawFeet;
    }

    // Calculate inches
    
    double fractionalPart = rawFeet - feet;
    double inches = fractionalPart * 12.0;
    
    if (inchesPtr) {
        printf("Storing %.2f to the address %p.\n", inches, inchesPtr);
        *inchesPtr = inches;
    }

}

void metersToFeetAndInchesModFVersion(double meters, unsigned int *feetPtr, double *inchesPtr){
    double rawFeet = meters * 3.281;
    
    double feet;
    double fractionalPart;
    
    fractionalPart = modf(rawFeet, &feet);
    
    if (feetPtr) {
        printf("Setting %d feet to point to %p.\n", (unsigned int) feet, feetPtr);
        *feetPtr = (unsigned int)feet;
    }
    
    double inches = (rawFeet - feet) * 12.0;
    
    if(inchesPtr){
        printf("Storing %.2f to the address %p.\n", inches, inchesPtr);
        *inchesPtr = inches;
    }    
}

int main(int argc, const char * argv[]) {

    double pi = 3.14;
    double integerPart;
    double fractionalPart;
    
    fractionalPart = modf(pi, &integerPart);
    
    printf("The integer part is %.0f, the fractional part is %.2f.\n", integerPart, fractionalPart);
    
    double meters = 3.0;
    unsigned int feet = 0;
    double inches = 0.0;
    
    //metersToFeetAndInches(meters, &feet, &inches);
    metersToFeetAndInchesModFVersion(meters, &feet, &inches);
    
    if (inches && feet) {
        printf("%.1f meters is the same as %d feet and %.1f inches.\n", meters, feet, inches);
    } else{
        printf("Clearly something was invalid - perhaps didn't pass locations for feet/inches.\n");
    }
    
    return 0;
}

//
//  main.c
//  ScratchpadForC
//
//  Created by James Birchall on 22/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "Types.h"

int main(int argc, const char * argv[]) {
    
    typesToPrint();
    
    return 0;
}

void typesToPrint(){
    
    __unused short aShort;
    __unused int aInt;
    __unused long aLong;
    
    __unused float aFloat;
    __unused double aDouble;
    
    __unused char aChar;
    
    __unused short *aShortPointer;
    __unused int *aIntPointer;
    __unused long *aLongPointer;
    
    __unused float *aFLoatPointer;
    __unused double *aDoublePointer;
    
    __unused char *aCharPointer;
    
    struct Person{
        char *firstName;
        int age;
    };
    
    printf("A short ranges from %d to %d.\n", SHRT_MIN, SHRT_MAX);
    printf("A 64bit int ranges from %lld to %lld.\n", INT64_MIN, INT64_MAX);
    printf("A long ranges from %ld to %ld.\n", LONG_MIN, LONG_MAX);
    
    printf("A float ranges from %e to %e.\n", FLT_MIN, FLT_MAX);
    printf("A double ranges from %e to %e.\n", DBL_MIN, DBL_MAX);
    
    printf("A char ranges from %d to %d.\n", CHAR_MIN, CHAR_MAX);
}



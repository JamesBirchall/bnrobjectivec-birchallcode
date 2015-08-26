//
//  main.c
//  MallocExample
//
//  Created by James Birchall on 26/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {

    // Points to start of storage we are going to request
    float *startOfBuffer;
    
    // ask for continuous buffer of 100 floats to use
    startOfBuffer = malloc(100 * sizeof(float));
    
    // may be junk in them, use calloc clear and allocate to wipe
    
    for (int i = 0; i < (100 * sizeof(float)); i += sizeof(float)) {
        
        // assign each float a value of size float by the time it moves onto next
        // shows 400 on 64bit system as float = 4 bytes 4 * 100 = 400 bytes allocated
        startOfBuffer[i] = i+4;
    }

    for (int i = 0, j = 0; i < (100 * sizeof(float)); i += sizeof(float), j++) {
        printf("Location %d = %.0f.\n", j+1, startOfBuffer[i]);
    }
    
    
    
    return 0;
}

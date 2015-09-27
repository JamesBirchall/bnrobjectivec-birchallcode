//
//  main.c
//  gradeInTheShare
//
//  Created by James Birchall on 27/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

float averageFloats(float *data, int dataCount){
    float sum = 0.0;
    
    for (int i = 0; i < dataCount; i++) {
        sum = sum + data[i];
    }
    
    return sum / dataCount;
}

int main(int argc, const char * argv[]) {

    float *gradeBook = malloc(3 * sizeof(float));
    // alternative float gradeBook[3]; defines as part of the frame and frees memory on return from function
    // float gradeBook = {xx,xx,xx};    //literal version of setting where compiler automaticallly determines size
    // the last 2 also means any methods can use float xx[] in method declaration
    
    gradeBook[0] = 60.2;
    gradeBook[1] = 94.5;
    gradeBook[2] = 81.1;
    
    float average = averageFloats(gradeBook, 3);
    
    free(gradeBook);
    gradeBook = NULL;
    
    printf("Average: %.2f.\n", average);
    
    return 0;
}

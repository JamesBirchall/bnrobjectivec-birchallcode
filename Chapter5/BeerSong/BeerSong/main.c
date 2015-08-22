//
//  main.c
//  BeerSong
//
//  Created by James Birchall on 22/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#include <stdio.h>

void singSongFor(int numberOfBottles){

    if (numberOfBottles == 0) {
        printf("There are simply no more bottles of beer left on the wall.\n\n");
    } else {
        printf("%d bottles of beer on the wall.  %d bottles of beer.\n", numberOfBottles, numberOfBottles);
        
        int oneFewerBottles = numberOfBottles - 1;
        
        printf("Take one off, pass it around, %d bottles of beer on the wall.\n", oneFewerBottles);
        
        singSongFor(oneFewerBottles);
        
        // print message before it returns from the stack/function
        printf("Put a bottle in the recycling, %d empty bottles in the bin.\n", numberOfBottles);
    }
}

int main(int argc, const char * argv[]) {

    singSongFor(4);
    
    return 0;
}

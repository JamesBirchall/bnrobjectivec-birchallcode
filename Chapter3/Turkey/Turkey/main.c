//
//  main.c
//  Turkey
//
//  Created by James Birchall on 22/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    float weight;
    
    weight = 18.2;
    
    printf("The turkey weighs %.2f pounds.\n", weight);
    
    float cookingTime;
    
    cookingTime = 15.0 + 15.0 + weight;
    
    printf("Cook that turkey for %.2f minutes.\n", cookingTime);
    
    return 0;
}

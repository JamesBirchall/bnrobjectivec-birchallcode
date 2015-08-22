//
//  main.c
//  Chapter4Challenge
//
//  Created by James Birchall on 22/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    int i = 20;
    int j = 25;
    int k = (i > j ? 10 : 5);
    
    if(5 < j - k){
        printf("The first expression is true.\n");
    } else if (j > i){
        printf("The second expiression is true.\n");
    } else{
        printf("Neither expression is true.\n");
    }
    
    
    return 0;
}

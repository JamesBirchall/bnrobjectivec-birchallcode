//
//  main.c
//  Addresses
//
//  Created by James Birchall on 25/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    int i = 17;
    
    // * means pointer to int (address will point to int) automatic storage at this point
    int *addressOfI = &i;
    
    printf("i stores its value at %p\n", addressOfI);
    
    printf("this functions starts at %p\n", main);
    
    // * in this case deferences the pointer to access its locations contents
    printf("the int stored at addressOfI is %d\n", *addressOfI);
    
    *addressOfI = 89;
    
    printf("Now i is %d\n", i);
    
    printf("An int is %zu bytes.\n", sizeof(int));
    printf("An pointer is %zu bytes.\n", sizeof(int *));
    
    // proof in the next 2 that different types use same pointer sizes (8 bytes = 8x8 = 64 bit addresses, 8^8 combinations of values)
    printf("An pointer is %zu bytes.\n", sizeof(float *));
    
    printf("Size of addressOfI is %zu.\n", sizeof(addressOfI));
    
    // Use NULL with pointers on setup, then check for NULL before using else
    // could break the program
    
    // short is 2 bytes = 8 ^ 2 = 16 bits = 65535 unsigned (including zero )
    // divide by 2 = -32768 as smallest signed value?
    printf("Size of unsigned short = %zu\n", sizeof(unsigned short));
    
    return 0;
}

//
//  main.m
//  bitwize
//
//  Created by James Birchall on 26/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        unsigned char a = 0x3c;
        unsigned char b = 0xa9;
        unsigned char c = a | b;
        printf("Hex: %x | %x = %x.\n", a, b, c);
        printf("Decimal: %d | %d = %d.\n", a, b, c);
        
        unsigned char d = a & b;
        printf("Hex: %x & %x = %x.\n", a, b, d);
        printf("Decimal: %d & %d = %d.\n", a, b, d);
        
        unsigned char e = a ^ b;    // exclusive or
        printf("Hex: %x ^ %x = %x.\n", a, b, e);
        printf("Decimal: %d ^ %d = %d.\n", a, b, e);
        
        unsigned char f = -b;
        printf("Hex: The compliment of %x is %x.\n", b, f);
        printf("Decimal: The compliment of %d is %d.\n", b, f);
        
        unsigned char g = a << 2;   //left shift 2 bits
        printf("Hex: Shifted left by 2 %x is %x.\n", a, g);
        printf("Decimal: Shifted left by 2 %d is %d.\n", a, g);
        
        unsigned char h = a >> 1;   //right shift 1 bit
        printf("Hex: Shifted right by 1 %x is %x.\n", a, h);
        printf("Decimal: Shifted right by 1 %d is %d.\n", a, h);
    }
    return 0;
}

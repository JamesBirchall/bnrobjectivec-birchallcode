//
//  NSData+Speakable.m
//  Challenge39
//
//  Created by James Birchall on 27/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import "NSData+Speakable.h"

@implementation NSData (Speakable)

- (NSString *)encodeAsSpeakableString{
    
    NSArray *brands = @[@"Camry",
                        @"Nikon",
                        @"Apple",
                        @"Ford",
                        @"Audi",
                        @"Google",
                        @"Nike",
                        @"Amazon",
                        @"Honda",
                        @"Mazda",
                        @"Buick",
                        @"Fiat",
                        @"Jeep",
                        @"Lexus",
                        @"Volvo",
                        @"Fuji",
                        @"Sony",
                        @"Delta",
                        @"Focus",
                        @"Puma",
                        @"Samsung",
                        @"Tivo",
                        @"Halo",
                        @"String",
                        @"Shrek",
                        @"Avatar",
                        @"Shell",
                        @"Visa",
                        @"Vogue",
                        @"Twitter",
                        @"Lego",
                        @"Pepsi"];
    
    NSMutableString *speakable = [[NSMutableString alloc] init];
    
    //NSLog(@"Log: %lu", (unsigned long)[self length]);
    
    unsigned long lengthOfData = [self length];
    
    // now I need to get each byte individually
    for (int i = 0; i < lengthOfData; i++) {
        NSRange aRange = {i, 1}; // 1 byte at a time
        int64_t aByte;  // store teh single byte
        [self getBytes:&aByte range:aRange];    //set single byte correctly

        // next we need to get 3 leftmost bits and convert to number 2-9 as number part
        int64_t numberPart;
        numberPart = aByte >> 5;    // shift 5 to isolate the last 3 bits
        numberPart = numberPart & 0x07;
        numberPart += 2;    //because we want between 2-9 and first 3 bits will only give us 0-7
        //NSLog(@"%llu\n", numberPart);
        
        // finally mask the first 3 bits and convert the value to brand array - 32
        int64_t brandPart;
        brandPart = aByte & 0x1f;   // this is 0 0 0 1 1 1 1 1 in Hex
        //NSLog(@"Brand %@\n", brands[brandPart]);
        
        
        // Make our string now
        NSString *firstPart = [NSString stringWithFormat:@"%llu ", numberPart];
        NSString *secondPart = [NSString stringWithFormat:@"%@ ", brands[brandPart]];
        
        [speakable appendString:firstPart];
        [speakable appendString:secondPart];
    }
    
    return speakable;
}

+ (NSData *)dataWithSpeakableString:(NSString *)s error:(NSError *__autoreleasing *)e{
    NSArray *brands = @[@"Camry",
                        @"Nikon",
                        @"Apple",
                        @"Ford",
                        @"Audi",
                        @"Google",
                        @"Nike",
                        @"Amazon",
                        @"Honda",
                        @"Mazda",
                        @"Buick",
                        @"Fiat",
                        @"Jeep",
                        @"Lexus",
                        @"Volvo",
                        @"Fuji",
                        @"Sony",
                        @"Delta",
                        @"Focus",
                        @"Puma",
                        @"Samsung",
                        @"Tivo",
                        @"Halo",
                        @"String",
                        @"Shrek",
                        @"Avatar",
                        @"Shell",
                        @"Visa",
                        @"Vogue",
                        @"Twitter",
                        @"Lego",
                        @"Pepsi"];
    
    NSMutableData *dataFromSpeakable = [[NSMutableData alloc] init];
    
    // take string, split into array of strings
    NSArray *strings = [s componentsSeparatedByString:@" "];
    
    for (int i = 0; i < [strings count]; i++) {
        // if odd then its a number so reverse the word previously
        static int64_t firstPart = 0;
        static int64_t secondPart = 0;
        int combine = 0;
        
        if (i == 0 || !(i % 2)) {
            if (combine == 2) {
                combine = 1;
            }
            firstPart = [[strings objectAtIndex:i] integerValue];
            //firstPart = firstPart & 0x0f;
            firstPart = firstPart - 2;
            firstPart = firstPart << 5; //shift left so ew have the bits in the right position
            //NSLog(@"F %llu...", firstPart);
        } else {
            //NSLog(@"%d\n", i);
            for (int j = 0; j < [brands count]; j++) {
                if ([[strings objectAtIndex:i] isEqualToString:[brands objectAtIndex:j]]) {
                    secondPart = j;
                    //secondPart = secondPart & 0x1f;
                    combine = 2;
                    break;
                }
            }
            
            if(combine != 2){
                // An error has occured - return with exception and empty string
                NSDictionary *userInfo = @{NSLocalizedDescriptionKey : @"Unable to parse string"};
                *e = [NSError errorWithDomain:@"SpeakableBytes" code:1 userInfo:userInfo];
                return nil;
            }
            //NSLog(@"S %llu...", secondPart);
        }
        
        if (combine == 2) {
            

            // combine first and second to form byte
            int64_t aByte = firstPart | secondPart;
            //NSLog(@"Combining %llu and %llu to form %llu", firstPart, secondPart, aByte);
            
            //NSLog(@"%llu\n", aByte);
            
            [dataFromSpeakable appendBytes:&aByte length:1];
            
            combine = 0;
        }        
    }

    //NSLog(@"Sizeo of %zu\n", sizeof(int64_t));
    
    return dataFromSpeakable;
}

@end

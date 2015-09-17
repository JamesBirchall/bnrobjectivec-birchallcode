//
//  main.m
//  Constants
//
//  Created by James Birchall on 17/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger.", MAX(10, 15));
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        //NSString *currency = [here objectForKey:@"currency"]; alternative with literal string
        NSLog(@"Money is %@.\n", currency);
        
//        enum BlenderSpeed{
//            BlenderSpeedStir = 1,
//            BlenderSpeedChop = 2,
//            BlenderSpeedLiquify = 3,
//            BlenderSpeedPulse = 4,
//            BlenderSpeedIceCrush = 10
//        };
//        
//        enum BlenderSpeed speed;
        
//        typedef enum{
//            BlenderSpeedStir = 1,
//            BlenderSpeedChop = 2,
//            BlenderSpeedLiquify = 3,
//            BlenderSpeedPulse = 4,
//            BlenderSpeedIceCrush = 10
//        } BlenderSpeed;
        
        typedef NS_ENUM(char, BlenderSpeed){
            BlenderSpeedStir = 1,
            BlenderSpeedChop = 2,
            BlenderSpeedLiquify = 3,
            BlenderSpeedPulse = 4,
            BlenderSpeedIceCrush = 10
        };
        
        BlenderSpeed speed;
        
        //speed = BlenderSpeedIceCrush;
        speed = BlenderSpeedChop;
        
        switch (speed) {
            case BlenderSpeedChop:
                NSLog(@"Chopping...\n");
                break;
            default:
                break;
        }
        
    }
    return 0;
}

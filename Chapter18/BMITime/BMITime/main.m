//
//  main.m
//  BMITime
//
//  Created by James Birchall on 09/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JABPerson.h"   // Import class for person to use its methods

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        JABPerson *james = [[JABPerson alloc] init];    //Set space and setup object
        
        [james setHeightInMeters:1.8];
        [james setWeightInKilos:60];
        
        float height = [james heightInMeters];
        int weight = [james weightInKilos];
        
        NSLog(@"James is %.2f tall and weighs %d kilos.\n", height, weight);
        
        float bmi = [james bodyMassIndex];
        
        NSLog(@"James has a Body Mass Index of %.2f\n", bmi);
        
    }
    return 0;
}

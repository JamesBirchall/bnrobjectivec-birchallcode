//
//  main.m
//  BMITime
//
//  Created by James Birchall on 09/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JABEmployee.h"   // Import class for person to use its methods

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        JABEmployee *james = [[JABEmployee alloc] init];    //Set space and setup object
        
        //[james setHeightInMeters:1.8];
        //[james setWeightInKilos:60];
        
        // Alternative to use dot notation - especially for getters/setters
        james.heightInMeters = 1.8;
        james.weightInKilos = 60;
        james.employeeID = 1;
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        comps.year = 2012;
        comps.month = 3;
        comps.day = 3;
        NSCalendar *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        
        james.hireDate = [cal dateFromComponents:comps];
        
        NSLog(@"James %@ Hire Date: %@.\n", james, james.hireDate);
        
        //float height = [james heightInMeters];
        //int weight = [james weightInKilos];
        
        float height = james.heightInMeters;
        int weight = james.weightInKilos;
        
        NSLog(@"James is %.2f tall and weighs %d kilos.\n", height, weight);
        
        float bmi = [james bodyMassIndex];
        
        //NSLog(@"James has a Body Mass Index of %.2f\n", bmi);
        
        double years = [james yearsOfEmployment];
        NSLog(@"BMI of %.2f, has worked for %.2f years.\n", bmi, years);
    }
    return 0;
}

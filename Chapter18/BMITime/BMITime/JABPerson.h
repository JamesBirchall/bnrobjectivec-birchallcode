//
//  JABPerson.h
//  BMITime
//
//  Created by James Birchall on 09/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

// Anything in this header is generally considered the public API

@interface JABPerson : NSObject
{
    // Set instance variables
    float _heightInMeters;
    int _weightInKilos;
}

// Instance methods to follow - setters/getters
#pragma mark - Setters/Getters

- (float)heightInMeters;
- (void)setHeightInMeters:(float)height;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)weight;

// Public methods
#pragma mark - Public methods
- (float)bodyMassIndex;

@end

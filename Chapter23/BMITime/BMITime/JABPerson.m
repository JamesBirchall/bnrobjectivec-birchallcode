//
//  JABPerson.m
//  BMITime
//
//  Created by James Birchall on 09/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import "JABPerson.h"

@implementation JABPerson

// Actual implementation of the public methods need to happen here.
// Private functions are here as well and don't need declaration
// A second interface can be set above which allow private variables

// @properties means we can loose the implementation, its done as part of compile

//-(float)heightInMeters{
//    return _heightInMeters;
//}
//
//-(void)setHeightInMeters:(float)height{
//    _heightInMeters = height;
//}
//
//-(int)weightInKilos{
//    return _weightInKilos;
//}
//
//-(void)setWeightInKilos:(int)weight{
//    _weightInKilos = weight;
//}

-(float)bodyMassIndex{
    //return _weightInKilos / (_heightInMeters * _heightInMeters);
    return [self weightInKilos] / ([self heightInMeters] * [self heightInMeters]);  //alternative, preferred for non setters/getter methods
}

@end

//
//  JABPortfilio.h
//  Stocks
//
//  Created by James Birchall on 13/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JABPortfilio : NSObject

@property (nonatomic, copy) NSArray *holdings;

- (float)totalValue;

@end

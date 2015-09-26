//
//  JABObserver.m
//  Callbackz
//
//  Created by James Birchall on 26/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import "JABObserver.h"

@implementation JABObserver

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    NSString *oldValue = [change objectForKey:NSKeyValueChangeOldKey];
    NSString *newValue = [change objectForKey:NSKeyValueChangeNewKey];
    
    NSLog(@"Observed: %@ of %@ was changed from %@ to %@.\n", keyPath, object, oldValue, newValue);
}

@end

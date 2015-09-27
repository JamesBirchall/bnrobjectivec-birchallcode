//
//  NSData+Speakable.h
//  Challenge39
//
//  Created by James Birchall on 27/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Speakable)

- (NSString *)encodeAsSpeakableString;

+ (NSData *)dataWithSpeakableString:(NSString *)s error:(NSError **)e;

@end

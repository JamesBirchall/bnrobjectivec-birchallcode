//
//  main.m
//  ImageFetch
//
//  Created by James Birchall on 17/09/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSURL *url = [NSURL URLWithString:@"https://www.google.co.uk/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        NSError *error;
        
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
        
        if (!data) {
            NSLog(@"Error fetching: %@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"File fetched successfully, its %lu bytes.\n", [data length]);
        
        BOOL written = [data writeToFile:@"/tmp/googlelogo.png" options:NSAtomicWrite error:&error];
        
        if (written) {
            NSLog(@"Successfully written.\n");
        } else {
            NSLog(@"Error writting:\n %@", [error localizedDescription]);
        }
        
        NSData *read = [[NSData alloc] initWithContentsOfFile:@"/tmp/googlelogo.png"];
        
        if (!read) {
            NSLog(@"Could not read file.");
        } else {
            NSLog(@"Read success, file is %lu bytes.\n", [read length]);
        }
        
        
        // Finding directories
        NSArray *desktops = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        
        int i = 0;
        for(NSString *location in desktops){
            NSLog(@"Desktop location: %@\n", location);
            i++;
        }
        NSLog(@"There were %d desktops.", i);
    }
    return 0;
}

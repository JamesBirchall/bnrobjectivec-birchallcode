//
//  AppDelegate.m
//  iOSDoodle
//
//  Created by James Birchall on 25/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    // Create and configure the UIWindow instance
    // A CGRect is a struct with an origin (x,y) and a size (width, height)
    
    CGRect winFrame = [[UIScreen mainScreen] bounds];
    
    UIWindow *theWindow = [[UIWindow alloc] initWithFrame:winFrame];
    self.window = theWindow;
    
    UIViewController *rvc = [[UIViewController alloc] init];
    
    [self.window setRootViewController:rvc];
    
    [self.window setHidden:NO];
    
    // Define the frame rectangles of the 3 UI elements (defined in header)
    // CGRectMake() creates a CGRect
    CGRect tableFrame = CGRectMake(0, 80, winFrame.size.width, winFrame.size.height - 100);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);

    // Create and configure the UITableView instance
    self.taskTable = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    // tell the table view which class to instantiate wherever it needs to create a new cell
    [self.taskTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    // Create and configure UITextFIeld
    self.taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    self.taskField.borderStyle = UITextBorderStyleRoundedRect;
    self.taskField.placeholder = @"Type a task, tap here...";
    
    // Create and configure button
    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.insertButton.frame = buttonFrame;
    [self.insertButton setTitle:@"Insert" forState:UIControlStateNormal];
    
    [self.insertButton addTarget:self action:@selector(addTasks:) forControlEvents:UIControlEventTouchUpInside];
    
    // Add 3 elements to view
    [self.window addSubview:self.taskTable];
    [self.window addSubview:self.taskField];
    [self.window addSubview:self.insertButton];
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self.window makeKeyAndVisible]; 
    
    return YES;
}

-(void)addTasks:(id)sender{
    NSLog(@"Pressed %@.\n", self.taskField.text);
}

@end

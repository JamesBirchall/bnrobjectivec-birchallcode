//
//  AppDelegate.h
//  iOSDoodle
//
//  Created by James Birchall on 25/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;

@property (nonatomic) NSMutableArray *tasks;

- (void)addTasks:(id)sender;

@end


//
//  AppDelegate.m
//  iOSDoodle
//
//  Created by James Birchall on 25/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import "AppDelegate.h"

NSString *JABDocPath(){
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    return [pathList[0] stringByAppendingString:@"data.td"];
}

@interface AppDelegate ()

@end

@implementation AppDelegate

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    // Create out tasks array to hold the tasks
    //self.tasks = [NSMutableArray array];
    
    NSArray *pList = [NSArray arrayWithContentsOfFile:JABDocPath()];
    
    if (pList) {
        self.tasks = [pList mutableCopy];
    } else {
        self.tasks = [NSMutableArray array];
    }
    
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
    
    // Make this class the data source - using in turn the tasks array as the data model
    self.taskTable.dataSource = self;
    
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
    
    NSString *text = [self.taskField text];
    
    if ([text length] == 0) {
        return; // no input yet
    }
    
    //NSLog(@"Text entered %@.\n", text);
    
    // Add text to tasks array - our data source for the taskTable
    [self.tasks addObject:text];
    
    for(NSString *s in self.tasks){
        NSLog(@"%@\n", s);
    }
    
    // signify a reload of the data source for task table
    [self.taskTable reloadData];
    
    // Clear out text field
    [self.taskField setText:@""];
    
    // Dismiss the keyboard
    [self.taskField resignFirstResponder];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    // returns number of rows which is equal to the number of objects in our tasks array
    
    return [self.tasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    // create object to return
    UITableViewCell *c = [self.taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    
    //c.textLabel.text = [self.tasks objectAtIndex:indexPath.row];
    
    NSString *item = [self.tasks objectAtIndex:indexPath.row];
    c.textLabel.text = item;
    
    return c;
}

-(void)applicationDidEnterBackground:(UIApplication *)application{
    [self.tasks writeToFile:JABDocPath() atomically:YES];
}

@end

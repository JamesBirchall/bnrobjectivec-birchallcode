//
//  Document.h
//  macDoodle
//
//  Created by James Birchall on 26/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument <NSTableViewDataSource>

@property (nonatomic) NSMutableArray *tasks;

@property (nonatomic) IBOutlet NSTableView *tableView;

- (IBAction)addTask:(id)sender;

- (IBAction)deleteTask:(id)sender;

@end


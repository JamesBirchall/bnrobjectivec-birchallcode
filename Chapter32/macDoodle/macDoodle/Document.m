//
//  Document.m
//  macDoodle
//
//  Created by James Birchall on 26/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import "Document.h"

@interface Document ()

@end

@implementation Document

- (instancetype)init {
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController {
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace {
    return YES;
}

- (NSString *)windowNibName {
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"Document";
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError {
    
    if (!self.tasks) {
        self.tasks = [NSMutableArray array];
    }
    
    NSData *data = [NSPropertyListSerialization dataWithPropertyList:self.tasks format:NSPropertyListXMLFormat_v1_0 options:0 error:outError];
    
    return data;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError {
    
    self.tasks = [NSPropertyListSerialization propertyListWithData:data options:NSPropertyListMutableContainers format:NULL error:outError];
    
    return (self.tasks != nil);
}

- (void)addTask:(id)sender{
    if (!self.tasks) {
        self.tasks = [NSMutableArray array];
    }
    
    [self.tasks addObject:@"New Item"];
    
    [self.tableView reloadData];
    
    [self updateChangeCount:NSChangeDone];
}

- (void)deleteTask:(id)sender{
    if (!self.tasks) {
        self.tasks = [NSMutableArray array];
    }
    
    if ([self.tasks count] == 0) {
        return;
    }
    
    NSInteger row = [self.tableView selectedRow];
    
    [self.tasks removeObjectAtIndex:row];
    
    [self.tableView reloadData];
    
    [self updateChangeCount:NSChangeDone];
}

-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return [self.tasks count];
}

-(id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    return [self.tasks objectAtIndex:row];
}

-(void)tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    [self.tasks replaceObjectAtIndex:row withObject:object];
    
    [self updateChangeCount:NSChangeDone];
}

@end

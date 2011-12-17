//
//  GOAppDelegate.h
//  DoThings
//
//  Created by Samuel Goodwin on 12/17/11.
//  Copyright (c) 2011 SNAP Interactive. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class GOListController;
@class GOTaskController;
@interface GOAppDelegate : NSObject <NSApplicationDelegate>
@property (strong) GOListController *listController;
@property (strong) GOTaskController *taskController;
@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSSplitView *splitView;

- (IBAction)saveAction:(id)sender;

@end

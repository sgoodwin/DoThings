//
//  GOAppDelegate.m
//  DoThings
//
//  Created by Samuel Goodwin on 12/17/11.
//  Copyright (c) 2011 SNAP Interactive. All rights reserved.
//

#import "GOAppDelegate.h"
#import "GOCoreDataVendor.h"
#import "GOListController.h"
#import "GOTaskController.h"

@implementation GOAppDelegate

@synthesize window = __window;
@synthesize listController = __listController;
@synthesize taskController = __taskController;
@synthesize splitView = __splitView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification{
    self.listController = [GOListController controller];
    [self.listController.view setAutoresizingMask:NSViewWidthSizable|NSViewHeightSizable];
    NSView *leftView = [[self.splitView subviews] objectAtIndex:0];
    [self.listController.view setFrame:leftView.bounds];
    [leftView addSubview:self.listController.view];
    
    self.taskController = [GOTaskController controller];
    [self.taskController.view setAutoresizingMask:NSViewWidthSizable|NSViewHeightSizable];
    NSView *rightView = [[self.splitView subviews] objectAtIndex:1];
    [self.taskController.view setFrame:rightView.bounds];
    [rightView addSubview:self.taskController.view];
}

/**
    Returns the NSUndoManager for the application. In this case, the manager returned is that of the managed object context for the application.
 */
- (NSUndoManager *)windowWillReturnUndoManager:(NSWindow *)window {
    return [[[GOCoreDataVendor sharedVendor] mainthreadContext] undoManager];
}

/**
    Performs the save action for the application, which is to send the save: message to the application's managed object context. Any encountered errors are presented to the user.
 */
- (IBAction)saveAction:(id)sender {
    NSError *error = nil;
    
    NSManagedObjectContext *context = [[GOCoreDataVendor sharedVendor] mainthreadContext];
    if (![context commitEditing]) {
        NSLog(@"%@:%@ unable to commit editing before saving", [self class], NSStringFromSelector(_cmd));
    }

    if (![context save:&error]) {
        [[NSApplication sharedApplication] presentError:error];
    }
}

- (NSApplicationTerminateReply)applicationShouldTerminate:(NSApplication *)sender {

    // Save changes in the application's managed object context before the application terminates.

    if (![[GOCoreDataVendor sharedVendor] mainContextExists]) {
        return NSTerminateNow;
    }

    NSManagedObjectContext *context = [[GOCoreDataVendor sharedVendor] mainthreadContext];
    if (![context commitEditing]) {
        NSLog(@"%@:%@ unable to commit editing to terminate", [self class], NSStringFromSelector(_cmd));
        return NSTerminateCancel;
    }

    if (![context hasChanges]) {
        return NSTerminateNow;
    }

    NSError *error = nil;
    if (![context save:&error]) {

        // Customize this code block to include application-specific recovery steps.              
        BOOL result = [sender presentError:error];
        if (result) {
            return NSTerminateCancel;
        }

        NSString *question = NSLocalizedString(@"Could not save changes while quitting. Quit anyway?", @"Quit without saves error question message");
        NSString *info = NSLocalizedString(@"Quitting now will lose any changes you have made since the last successful save", @"Quit without saves error question info");
        NSString *quitButton = NSLocalizedString(@"Quit anyway", @"Quit anyway button title");
        NSString *cancelButton = NSLocalizedString(@"Cancel", @"Cancel button title");
        NSAlert *alert = [[NSAlert alloc] init];
        [alert setMessageText:question];
        [alert setInformativeText:info];
        [alert addButtonWithTitle:quitButton];
        [alert addButtonWithTitle:cancelButton];

        NSInteger answer = [alert runModal];
        
        if (answer == NSAlertAlternateReturn) {
            return NSTerminateCancel;
        }
    }

    return NSTerminateNow;
}

@end

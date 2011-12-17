//
//  GOAppDelegate.h
//  DoThings
//
//  Created by Samuel Goodwin on 12/17/11.
//  Copyright (c) 2011 SNAP Interactive. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface GOAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction)saveAction:(id)sender;

@end

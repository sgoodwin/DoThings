//
//  GOCoreDataVendor.h
//  DoThings
//
//  Created by Samuel Goodwin on 12/17/11.
//  Copyright (c) 2011 SNAP Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface GOCoreDataVendor : NSObject
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *mainthreadContext;

+ (id)sharedVendor;
- (NSManagedObjectContext *)newContext;
- (BOOL)mainContextExists;
@end

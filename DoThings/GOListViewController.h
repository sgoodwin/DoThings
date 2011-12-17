//
//  GOListViewController.h
//  DoThings
//
//  Created by Samuel Goodwin on 12/17/11.
//  Copyright (c) 2011 SNAP Interactive. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface GOListViewController : NSViewController
@property (strong) NSManagedObjectContext *context;
+ (id)controller;
@end

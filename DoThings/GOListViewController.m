//
//  GOListViewController.m
//  DoThings
//
//  Created by Samuel Goodwin on 12/17/11.
//  Copyright (c) 2011 SNAP Interactive. All rights reserved.
//

#import "GOListViewController.h"
#import "GOCoreDataVendor.h"

@implementation GOListViewController
@synthesize context = _context;

+ (id)controller{
    GOListViewController *controller = [[self alloc] initWithNibName:NSStringFromClass(self) bundle:nil];
    NSManagedObjectContext *context = [[GOCoreDataVendor sharedVendor] mainthreadContext];
    controller.context = context;
    
    return controller;
}


@end

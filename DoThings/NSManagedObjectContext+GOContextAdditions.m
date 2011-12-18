//
//  NSManagedObjectContext+GOContextAdditions.m
//  DoThings
//
//  Created by Samuel Goodwin on 12/17/11.
//  Copyright (c) 2011 SNAP Interactive. All rights reserved.
//

#import "NSManagedObjectContext+GOContextAdditions.h"

@implementation NSManagedObjectContext (GOContextAdditions)

- (void)save{
    NSError *error = nil;
    BOOL success = [self save:&error];
    if(!success){
        [NSApp presentError:error];
    }
}

@end

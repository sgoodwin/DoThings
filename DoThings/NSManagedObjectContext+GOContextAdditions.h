//
//  NSManagedObjectContext+GOContextAdditions.h
//  DoThings
//
//  Created by Samuel Goodwin on 12/17/11.
//  Copyright (c) 2011 SNAP Interactive. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface NSManagedObjectContext (GOContextAdditions)
- (void)save;
@end

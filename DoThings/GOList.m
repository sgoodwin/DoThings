#import "GOList.h"
#import "GOTask.h"
#import "NSManagedObjectContext+GOContextAdditions.h"

NSString *const kBacklogTitle = @"Reservoir";

@implementation GOList

+ (void)ensureBacklogExistsInContext:(NSManagedObjectContext*)moc_{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    [fetchRequest setEntity:[self entityInManagedObjectContext:moc_]];
    [fetchRequest setPredicate:[NSPredicate predicateWithFormat:@"title = %@", kBacklogTitle]];
    
    NSError *error = nil;
    NSArray *items = [moc_ executeFetchRequest:fetchRequest error:&error];    
     if([items count] > 1){
         NSAssert(NO, @"YOU HAVE MORE THAN ONE BACKLOG?");
     }
     
     if([items count] == 0){
         GOList *list = [self insertInManagedObjectContext:moc_];
         [list setTitle:kBacklogTitle];
         
         GOTask *task = [GOTask insertInManagedObjectContext:moc_];
         [task setText:@"start here!"];
         [list addTasksObject:task];
         [moc_ save];
         
         NSLog(@"List of tasks in list %@ is: %lu", [list title], [[list tasks] count]);
     }
}

+ (NSArray *)listsInContext:(NSManagedObjectContext*)moc_{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    [fetchRequest setEntity:[self entityInManagedObjectContext:moc_]];
    
    NSError *error = nil;
    NSArray *items = [moc_ executeFetchRequest:fetchRequest error:&error];
    return items;
}

@end

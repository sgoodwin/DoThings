// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to GOList.h instead.

#import <CoreData/CoreData.h>


@class GOTask;



@interface GOListID : NSManagedObjectID {}
@end

@interface _GOList : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (GOListID*)objectID;




@property (nonatomic, retain) NSString *title;


//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSOrderedSet* tasks;

- (NSMutableOrderedSet*)tasksSet;




@end

@interface _GOList (CoreDataGeneratedAccessors)

- (void)addTasks:(NSOrderedSet*)value_;
- (void)removeTasks:(NSOrderedSet*)value_;
- (void)addTasksObject:(GOTask*)value_;
- (void)removeTasksObject:(GOTask*)value_;

@end

@interface _GOList (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;





- (NSMutableOrderedSet*)primitiveTasks;
- (void)setPrimitiveTasks:(NSMutableOrderedSet*)value;


@end

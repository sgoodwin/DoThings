// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to GOList.h instead.

#import <CoreData/CoreData.h>


extern const struct GOListAttributes {
	__unsafe_unretained NSString *title;
} GOListAttributes;

extern const struct GOListRelationships {
	__unsafe_unretained NSString *tasks;
} GOListRelationships;

extern const struct GOListFetchedProperties {
} GOListFetchedProperties;

@class GOTask;



@interface GOListID : NSManagedObjectID {}
@end

@interface _GOList : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (GOListID*)objectID;




@property (nonatomic, strong) NSString *title;


//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet* tasks;

- (NSMutableSet*)tasksSet;




@end

@interface _GOList (CoreDataGeneratedAccessors)

- (void)addTasks:(NSSet*)value_;
- (void)removeTasks:(NSSet*)value_;
- (void)addTasksObject:(GOTask*)value_;
- (void)removeTasksObject:(GOTask*)value_;

@end

@interface _GOList (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;





- (NSMutableSet*)primitiveTasks;
- (void)setPrimitiveTasks:(NSMutableSet*)value;


@end

// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to GOTask.h instead.

#import <CoreData/CoreData.h>


extern const struct GOTaskAttributes {
	__unsafe_unretained NSString *text;
} GOTaskAttributes;

extern const struct GOTaskRelationships {
	__unsafe_unretained NSString *list;
} GOTaskRelationships;

extern const struct GOTaskFetchedProperties {
} GOTaskFetchedProperties;

@class GOList;



@interface GOTaskID : NSManagedObjectID {}
@end

@interface _GOTask : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (GOTaskID*)objectID;




@property (nonatomic, strong) NSString *text;


//- (BOOL)validateText:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) GOList* list;

//- (BOOL)validateList:(id*)value_ error:(NSError**)error_;




@end

@interface _GOTask (CoreDataGeneratedAccessors)

@end

@interface _GOTask (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveText;
- (void)setPrimitiveText:(NSString*)value;





- (GOList*)primitiveList;
- (void)setPrimitiveList:(GOList*)value;


@end

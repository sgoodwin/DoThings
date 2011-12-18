// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to GOList.m instead.

#import "_GOList.h"

const struct GOListAttributes GOListAttributes = {
	.title = @"title",
};

const struct GOListRelationships GOListRelationships = {
	.tasks = @"tasks",
};

const struct GOListFetchedProperties GOListFetchedProperties = {
};

@implementation GOListID
@end

@implementation _GOList

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"List" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"List";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"List" inManagedObjectContext:moc_];
}

- (GOListID*)objectID {
	return (GOListID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic title;






@dynamic tasks;

	
- (NSMutableSet*)tasksSet {
	[self willAccessValueForKey:@"tasks"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"tasks"];
  
	[self didAccessValueForKey:@"tasks"];
	return result;
}
	





@end

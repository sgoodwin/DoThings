// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to GOTask.m instead.

#import "_GOTask.h"

const struct GOTaskAttributes GOTaskAttributes = {
	.text = @"text",
};

const struct GOTaskRelationships GOTaskRelationships = {
	.list = @"list",
};

const struct GOTaskFetchedProperties GOTaskFetchedProperties = {
};

@implementation GOTaskID
@end

@implementation _GOTask

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Task" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Task";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Task" inManagedObjectContext:moc_];
}

- (GOTaskID*)objectID {
	return (GOTaskID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic text;






@dynamic list;

	





@end

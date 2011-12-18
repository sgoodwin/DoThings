#import "_GOList.h"

@interface GOList : _GOList {}
+ (void)ensureBacklogExistsInContext:(NSManagedObjectContext*)moc_;
+ (NSArray *)listsInContext:(NSManagedObjectContext*)moc_;
@end

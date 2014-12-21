


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETRetrieveFilteredDropdownValues.h"


@implementation ETRetrieveFilteredDropdownValues

@synthesize entityName;
@synthesize parentField;
@synthesize optionID;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		NSObject *entityNameRef = [dictionary objectForKey:@"entityName"];
		if([entityNameRef isKindOfClass:[NSNull class]]) {  
			self.entityName = nil;
		}
		else {
			self.entityName = [dictionary objectForKey: @"entityName"];
		}
		NSObject *parentFieldRef = [dictionary objectForKey:@"parentField"];
		if([parentFieldRef isKindOfClass:[NSNull class]]) {  
			self.parentField = nil;
		}
		else {
			self.parentField = [dictionary objectForKey: @"parentField"];
		}
		NSObject *optionIDRef = [dictionary objectForKey:@"optionID"];
		if([optionIDRef isKindOfClass:[NSNull class]]) {  
			self.optionID = nil;
		}
		else {
			self.optionID = [dictionary objectForKey: @"optionID"];
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.entityName forKey:@"entityName"];
	[dictionary setValue:self.parentField forKey:@"parentField"];
	[dictionary setValue:self.optionID forKey:@"optionID"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?entityName=%@&parentField=%@&optionID=%@&", self.entityName, self.parentField, self.optionID];
}

@end
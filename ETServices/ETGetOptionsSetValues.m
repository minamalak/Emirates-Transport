


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETGetOptionsSetValues.h"


@implementation ETGetOptionsSetValues

@synthesize entitySchemaName;
@synthesize attributeSchemaName;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		NSObject *entitySchemaNameRef = [dictionary objectForKey:@"entitySchemaName"];
		if([entitySchemaNameRef isKindOfClass:[NSNull class]]) {  
			self.entitySchemaName = nil;
		}
		else {
			self.entitySchemaName = [dictionary objectForKey: @"entitySchemaName"];
		}
		NSObject *attributeSchemaNameRef = [dictionary objectForKey:@"attributeSchemaName"];
		if([attributeSchemaNameRef isKindOfClass:[NSNull class]]) {  
			self.attributeSchemaName = nil;
		}
		else {
			self.attributeSchemaName = [dictionary objectForKey: @"attributeSchemaName"];
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.entitySchemaName forKey:@"entitySchemaName"];
	[dictionary setValue:self.attributeSchemaName forKey:@"attributeSchemaName"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?entitySchemaName=%@&attributeSchemaName=%@&", self.entitySchemaName, self.attributeSchemaName];
}

@end
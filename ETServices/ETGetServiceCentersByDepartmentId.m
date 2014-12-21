


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETGetServiceCentersByDepartmentId.h"


@implementation ETGetServiceCentersByDepartmentId

@synthesize departmentid;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		self.departmentid = [dictionary objectForKey: @"departmentid"];
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.departmentid forKey:@"departmentid"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?departmentid=%@&", self.departmentid];
}

@end
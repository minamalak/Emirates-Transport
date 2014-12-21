


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETGetServicesPerCenter.h"


@implementation ETGetServicesPerCenter

@synthesize servicecenterid;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		self.servicecenterid = [dictionary objectForKey: @"servicecenterid"];
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.servicecenterid forKey:@"servicecenterid"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?servicecenterid=%@&", self.servicecenterid];
}

@end
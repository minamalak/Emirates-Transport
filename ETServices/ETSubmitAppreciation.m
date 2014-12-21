


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETCaseDataContract.h"
	#import "ETSubmitAppreciation.h"


@implementation ETSubmitAppreciation

@synthesize appretitationCase;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		NSObject *appretitationCaseRef = [dictionary objectForKey:@"appretitationCase"];
		if([appretitationCaseRef isKindOfClass:[NSNull class]]) {  
			self.appretitationCase = nil;
		}
		else {
			self.appretitationCase = [[ETCaseDataContract alloc] initWithData:[dictionary objectForKey: @"appretitationCase"]];
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:[self.appretitationCase JSONDictionary] forKey:@"appretitationCase"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?=&"];
}

@end



#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETCaseDataContract.h"
	#import "ETSubmitComplaint.h"


@implementation ETSubmitComplaint

@synthesize complaintCase;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		NSObject *complaintCaseRef = [dictionary objectForKey:@"complaintCase"];
		if([complaintCaseRef isKindOfClass:[NSNull class]]) {  
			self.complaintCase = nil;
		}
		else {
			self.complaintCase = [[ETCaseDataContract alloc] initWithData:[dictionary objectForKey: @"complaintCase"]];
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:[self.complaintCase JSONDictionary] forKey:@"complaintCase"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?=&"];
}

@end
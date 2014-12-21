


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETResponseObject.h"
	#import "ETSubmitComplaintResponse.h"


@implementation ETSubmitComplaintResponse

@synthesize SubmitComplaintResult;
@synthesize response;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		NSObject *SubmitComplaintResultRef = [dictionary objectForKey:@"SubmitComplaintResult"];
		if([SubmitComplaintResultRef isKindOfClass:[NSNull class]]) {  
			self.SubmitComplaintResult = nil;
		}
		else {
			self.SubmitComplaintResult = [dictionary objectForKey: @"SubmitComplaintResult"];
		}
		NSObject *responseRef = [dictionary objectForKey:@"response"];
		if([responseRef isKindOfClass:[NSNull class]]) {  
			self.response = nil;
		}
		else {
			self.response = [[ETResponseObject alloc] initWithData:[dictionary objectForKey: @"response"]];
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.SubmitComplaintResult forKey:@"SubmitComplaintResult"];
	[dictionary setValue:[self.response JSONDictionary] forKey:@"response"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?SubmitComplaintResult=%@&=&", self.SubmitComplaintResult];
}

@end
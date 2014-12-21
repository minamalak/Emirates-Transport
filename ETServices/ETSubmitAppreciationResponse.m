


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETResponseObject.h"
	#import "ETSubmitAppreciationResponse.h"


@implementation ETSubmitAppreciationResponse

@synthesize SubmitAppreciationResult;
@synthesize response;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		NSObject *SubmitAppreciationResultRef = [dictionary objectForKey:@"SubmitAppreciationResult"];
		if([SubmitAppreciationResultRef isKindOfClass:[NSNull class]]) {  
			self.SubmitAppreciationResult = nil;
		}
		else {
			self.SubmitAppreciationResult = [dictionary objectForKey: @"SubmitAppreciationResult"];
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
	[dictionary setValue:self.SubmitAppreciationResult forKey:@"SubmitAppreciationResult"];
	[dictionary setValue:[self.response JSONDictionary] forKey:@"response"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?SubmitAppreciationResult=%@&=&", self.SubmitAppreciationResult];
}

@end
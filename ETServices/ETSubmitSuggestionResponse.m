


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETResponseObject.h"
	#import "ETSubmitSuggestionResponse.h"


@implementation ETSubmitSuggestionResponse

@synthesize SubmitSuggestionResult;
@synthesize response;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		NSObject *SubmitSuggestionResultRef = [dictionary objectForKey:@"SubmitSuggestionResult"];
		if([SubmitSuggestionResultRef isKindOfClass:[NSNull class]]) {  
			self.SubmitSuggestionResult = nil;
		}
		else {
			self.SubmitSuggestionResult = [dictionary objectForKey: @"SubmitSuggestionResult"];
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
	[dictionary setValue:self.SubmitSuggestionResult forKey:@"SubmitSuggestionResult"];
	[dictionary setValue:[self.response JSONDictionary] forKey:@"response"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?SubmitSuggestionResult=%@&=&", self.SubmitSuggestionResult];
}

@end
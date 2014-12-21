


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETCaseDataContract.h"
	#import "ETSubmitSuggestion.h"


@implementation ETSubmitSuggestion

@synthesize suggestionCase;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		NSObject *suggestionCaseRef = [dictionary objectForKey:@"suggestionCase"];
		if([suggestionCaseRef isKindOfClass:[NSNull class]]) {  
			self.suggestionCase = nil;
		}
		else {
			self.suggestionCase = [[ETCaseDataContract alloc] initWithData:[dictionary objectForKey: @"suggestionCase"]];
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:[self.suggestionCase JSONDictionary] forKey:@"suggestionCase"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?=&"];
}

@end
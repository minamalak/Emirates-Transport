


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETCaseObject.h"
		#import "ETResponseObject.h"
	#import "ETRetrieveCasesByNumberResponse.h"


@implementation ETRetrieveCasesByNumberResponse

@synthesize RetrieveCasesByNumberResult;
@synthesize response;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		NSObject *RetrieveCasesByNumberResultRef = [dictionary objectForKey:@"RetrieveCasesByNumberResult"];
		if([RetrieveCasesByNumberResultRef isKindOfClass:[NSNull class]]) {  
			self.RetrieveCasesByNumberResult = nil;
		}
		else {
			self.RetrieveCasesByNumberResult = [[ETCaseObject alloc] initWithData:[dictionary objectForKey: @"RetrieveCasesByNumberResult"]];
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
	[dictionary setValue:[self.RetrieveCasesByNumberResult JSONDictionary] forKey:@"RetrieveCasesByNumberResult"];
	[dictionary setValue:[self.response JSONDictionary] forKey:@"response"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?=&=&"];
}

@end



#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETCaseObject.h"
		#import "ETResponseObject.h"
	#import "ETRetrieveCasesByIdResponse.h"


@implementation ETRetrieveCasesByIdResponse

@synthesize RetrieveCasesByIdResult;
@synthesize response;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		NSObject *RetrieveCasesByIdResultRef = [dictionary objectForKey:@"RetrieveCasesByIdResult"];
		if([RetrieveCasesByIdResultRef isKindOfClass:[NSNull class]]) {  
			self.RetrieveCasesByIdResult = nil;
		}
		else {
			self.RetrieveCasesByIdResult = [[ETCaseObject alloc] initWithData:[dictionary objectForKey: @"RetrieveCasesByIdResult"]];
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
	[dictionary setValue:[self.RetrieveCasesByIdResult JSONDictionary] forKey:@"RetrieveCasesByIdResult"];
	[dictionary setValue:[self.response JSONDictionary] forKey:@"response"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?=&=&"];
}

@end
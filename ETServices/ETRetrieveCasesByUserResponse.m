


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETCaseObject.h"
		#import "ETResponseObject.h"
	#import "ETRetrieveCasesByUserResponse.h"


@implementation ETRetrieveCasesByUserResponse

@synthesize RetrieveCasesByUserResult;
@synthesize response;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		RetrieveCasesByUserResult = [[NSMutableArray alloc] init];
		NSObject *RetrieveCasesByUserResultArrRef = nil;
			RetrieveCasesByUserResultArrRef = [dictionary objectForKey:@"RetrieveCasesByUserResult"];

		if([RetrieveCasesByUserResultArrRef isKindOfClass:[NSArray class]]) {
			NSArray* RetrieveCasesByUserResultArr = (NSArray *)RetrieveCasesByUserResultArrRef;
			for(NSDictionary * childObj in RetrieveCasesByUserResultArr) {
				[RetrieveCasesByUserResult addObject:[[ETCaseObject alloc] initWithData:childObj]];
			}
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
	NSMutableArray *arr = nil;
	arr = [[NSMutableArray alloc] init];
	for(ETCaseObject* childObj in RetrieveCasesByUserResult) {
		[arr addObject:[childObj JSONDictionary]];
	}
	[dictionary setValue:arr forKey:@"RetrieveCasesByUserResult"];
	[dictionary setValue:[self.response JSONDictionary] forKey:@"response"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?=&"];
}

@end
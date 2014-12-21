


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETServiceCenter.h"
		#import "ETResponseObject.h"
	#import "ETRetrieveServiceCentersResponse.h"


@implementation ETRetrieveServiceCentersResponse

@synthesize RetrieveServiceCentersResult;
@synthesize response;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		RetrieveServiceCentersResult = [[NSMutableArray alloc] init];
		NSObject *RetrieveServiceCentersResultArrRef = nil;
			RetrieveServiceCentersResultArrRef = [dictionary objectForKey:@"RetrieveServiceCentersResult"];

		if([RetrieveServiceCentersResultArrRef isKindOfClass:[NSArray class]]) {
			NSArray* RetrieveServiceCentersResultArr = (NSArray *)RetrieveServiceCentersResultArrRef;
			for(NSDictionary * childObj in RetrieveServiceCentersResultArr) {
				[RetrieveServiceCentersResult addObject:[[ETServiceCenter alloc] initWithData:childObj]];
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
	for(ETServiceCenter* childObj in RetrieveServiceCentersResult) {
		[arr addObject:[childObj JSONDictionary]];
	}
	[dictionary setValue:arr forKey:@"RetrieveServiceCentersResult"];
	[dictionary setValue:[self.response JSONDictionary] forKey:@"response"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?=&"];
}

@end
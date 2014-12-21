


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETIntLookupItem.h"
		#import "ETResponseObject.h"
	#import "ETGetOptionsSetValuesResponse.h"


@implementation ETGetOptionsSetValuesResponse

@synthesize GetOptionsSetValuesResult;
@synthesize response;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		GetOptionsSetValuesResult = [[NSMutableArray alloc] init];
		NSObject *GetOptionsSetValuesResultArrRef = nil;
			GetOptionsSetValuesResultArrRef = [dictionary objectForKey:@"GetOptionsSetValuesResult"];

		if([GetOptionsSetValuesResultArrRef isKindOfClass:[NSArray class]]) {
			NSArray* GetOptionsSetValuesResultArr = (NSArray *)GetOptionsSetValuesResultArrRef;
			for(NSDictionary * childObj in GetOptionsSetValuesResultArr) {
				[GetOptionsSetValuesResult addObject:[[ETIntLookupItem alloc] initWithData:childObj]];
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
	for(ETIntLookupItem* childObj in GetOptionsSetValuesResult) {
		[arr addObject:[childObj JSONDictionary]];
	}
	[dictionary setValue:arr forKey:@"GetOptionsSetValuesResult"];
	[dictionary setValue:[self.response JSONDictionary] forKey:@"response"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?=&"];
}

@end



#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETGuidLookupItem.h"
		#import "ETResponseObject.h"
	#import "ETGetlookupItemsResponse.h"


@implementation ETGetlookupItemsResponse

@synthesize GetlookupItemsResult;
@synthesize response;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		GetlookupItemsResult = [[NSMutableArray alloc] init];
		NSObject *GetlookupItemsResultArrRef = nil;
			GetlookupItemsResultArrRef = [dictionary objectForKey:@"GetlookupItemsResult"];

		if([GetlookupItemsResultArrRef isKindOfClass:[NSArray class]]) {
			NSArray* GetlookupItemsResultArr = (NSArray *)GetlookupItemsResultArrRef;
			for(NSDictionary * childObj in GetlookupItemsResultArr) {
				[GetlookupItemsResult addObject:[[ETGuidLookupItem alloc] initWithData:childObj]];
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
	for(ETGuidLookupItem* childObj in GetlookupItemsResult) {
		[arr addObject:[childObj JSONDictionary]];
	}
	[dictionary setValue:arr forKey:@"GetlookupItemsResult"];
	[dictionary setValue:[self.response JSONDictionary] forKey:@"response"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?=&"];
}

@end
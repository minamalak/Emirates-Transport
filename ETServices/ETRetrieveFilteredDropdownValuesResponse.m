


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETIntLookupItem.h"
	#import "ETRetrieveFilteredDropdownValuesResponse.h"


@implementation ETRetrieveFilteredDropdownValuesResponse

@synthesize RetrieveFilteredDropdownValuesResult;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		RetrieveFilteredDropdownValuesResult = [[NSMutableArray alloc] init];
		NSObject *RetrieveFilteredDropdownValuesResultArrRef = nil;
			RetrieveFilteredDropdownValuesResultArrRef = [dictionary objectForKey:@"RetrieveFilteredDropdownValuesResult"];

		if([RetrieveFilteredDropdownValuesResultArrRef isKindOfClass:[NSArray class]]) {
			NSArray* RetrieveFilteredDropdownValuesResultArr = (NSArray *)RetrieveFilteredDropdownValuesResultArrRef;
			for(NSDictionary * childObj in RetrieveFilteredDropdownValuesResultArr) {
				[RetrieveFilteredDropdownValuesResult addObject:[[ETIntLookupItem alloc] initWithData:childObj]];
			}
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	NSMutableArray *arr = nil;
	arr = [[NSMutableArray alloc] init];
	for(ETIntLookupItem* childObj in RetrieveFilteredDropdownValuesResult) {
		[arr addObject:[childObj JSONDictionary]];
	}
	[dictionary setValue:arr forKey:@"RetrieveFilteredDropdownValuesResult"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?"];
}

@end
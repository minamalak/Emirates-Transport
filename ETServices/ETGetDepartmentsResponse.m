


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETDepartmentObject.h"
		#import "ETResponseObject.h"
	#import "ETGetDepartmentsResponse.h"


@implementation ETGetDepartmentsResponse

@synthesize GetDepartmentsResult;
@synthesize response;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		GetDepartmentsResult = [[NSMutableArray alloc] init];
		NSObject *GetDepartmentsResultArrRef = nil;
			GetDepartmentsResultArrRef = [dictionary objectForKey:@"GetDepartmentsResult"];

		if([GetDepartmentsResultArrRef isKindOfClass:[NSArray class]]) {
			NSArray* GetDepartmentsResultArr = (NSArray *)GetDepartmentsResultArrRef;
			for(NSDictionary * childObj in GetDepartmentsResultArr) {
				[GetDepartmentsResult addObject:[[ETDepartmentObject alloc] initWithData:childObj]];
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
	for(ETDepartmentObject* childObj in GetDepartmentsResult) {
		[arr addObject:[childObj JSONDictionary]];
	}
	[dictionary setValue:arr forKey:@"GetDepartmentsResult"];
	[dictionary setValue:[self.response JSONDictionary] forKey:@"response"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?=&"];
}

@end
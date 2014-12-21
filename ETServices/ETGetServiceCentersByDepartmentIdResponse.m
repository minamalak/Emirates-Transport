


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETServiceCenter.h"
		#import "ETResponseObject.h"
		#import "ETDepartmentObject.h"
	#import "ETGetServiceCentersByDepartmentIdResponse.h"


@implementation ETGetServiceCentersByDepartmentIdResponse

@synthesize GetServiceCentersByDepartmentIdResult;
@synthesize response;
@synthesize department;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		GetServiceCentersByDepartmentIdResult = [[NSMutableArray alloc] init];
		NSObject *GetServiceCentersByDepartmentIdResultArrRef = nil;
			GetServiceCentersByDepartmentIdResultArrRef = [dictionary objectForKey:@"GetServiceCentersByDepartmentIdResult"];

		if([GetServiceCentersByDepartmentIdResultArrRef isKindOfClass:[NSArray class]]) {
			NSArray* GetServiceCentersByDepartmentIdResultArr = (NSArray *)GetServiceCentersByDepartmentIdResultArrRef;
			for(NSDictionary * childObj in GetServiceCentersByDepartmentIdResultArr) {
				[GetServiceCentersByDepartmentIdResult addObject:[[ETServiceCenter alloc] initWithData:childObj]];
			}
		}
		NSObject *responseRef = [dictionary objectForKey:@"response"];
		if([responseRef isKindOfClass:[NSNull class]]) {  
			self.response = nil;
		}
		else {
			self.response = [[ETResponseObject alloc] initWithData:[dictionary objectForKey: @"response"]];
		}
		NSObject *departmentRef = [dictionary objectForKey:@"department"];
		if([departmentRef isKindOfClass:[NSNull class]]) {  
			self.department = nil;
		}
		else {
			self.department = [[ETDepartmentObject alloc] initWithData:[dictionary objectForKey: @"department"]];
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	NSMutableArray *arr = nil;
	arr = [[NSMutableArray alloc] init];
	for(ETServiceCenter* childObj in GetServiceCentersByDepartmentIdResult) {
		[arr addObject:[childObj JSONDictionary]];
	}
	[dictionary setValue:arr forKey:@"GetServiceCentersByDepartmentIdResult"];
	[dictionary setValue:[self.response JSONDictionary] forKey:@"response"];
	[dictionary setValue:[self.department JSONDictionary] forKey:@"department"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?=&=&"];
}

@end
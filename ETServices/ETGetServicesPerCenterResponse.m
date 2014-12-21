


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETService.h"
		#import "ETResponseObject.h"
	#import "ETGetServicesPerCenterResponse.h"


@implementation ETGetServicesPerCenterResponse

@synthesize GetServicesPerCenterResult;
@synthesize Response;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		GetServicesPerCenterResult = [[NSMutableArray alloc] init];
		NSObject *GetServicesPerCenterResultArrRef = nil;
			GetServicesPerCenterResultArrRef = [dictionary objectForKey:@"GetServicesPerCenterResult"];

		if([GetServicesPerCenterResultArrRef isKindOfClass:[NSArray class]]) {
			NSArray* GetServicesPerCenterResultArr = (NSArray *)GetServicesPerCenterResultArrRef;
			for(NSDictionary * childObj in GetServicesPerCenterResultArr) {
				[GetServicesPerCenterResult addObject:[[ETService alloc] initWithData:childObj]];
			}
		}
		NSObject *ResponseRef = [dictionary objectForKey:@"Response"];
		if([ResponseRef isKindOfClass:[NSNull class]]) {  
			self.Response = nil;
		}
		else {
			self.Response = [[ETResponseObject alloc] initWithData:[dictionary objectForKey: @"Response"]];
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	NSMutableArray *arr = nil;
	arr = [[NSMutableArray alloc] init];
	for(ETService* childObj in GetServicesPerCenterResult) {
		[arr addObject:[childObj JSONDictionary]];
	}
	[dictionary setValue:arr forKey:@"GetServicesPerCenterResult"];
	[dictionary setValue:[self.Response JSONDictionary] forKey:@"Response"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?=&"];
}

@end



#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

	#import "ETServiceCenter.h"
		#import "ETResponseObject.h"
	#import "ETGetServiceCenterDetailsByIdResponse.h"


@implementation ETGetServiceCenterDetailsByIdResponse

@synthesize GetServiceCenterDetailsByIdResult;
@synthesize response;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		NSObject *GetServiceCenterDetailsByIdResultRef = [dictionary objectForKey:@"GetServiceCenterDetailsByIdResult"];
		if([GetServiceCenterDetailsByIdResultRef isKindOfClass:[NSNull class]]) {  
			self.GetServiceCenterDetailsByIdResult = nil;
		}
		else {
			self.GetServiceCenterDetailsByIdResult = [[ETServiceCenter alloc] initWithData:[dictionary objectForKey: @"GetServiceCenterDetailsByIdResult"]];
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
	[dictionary setValue:[self.GetServiceCenterDetailsByIdResult JSONDictionary] forKey:@"GetServiceCenterDetailsByIdResult"];
	[dictionary setValue:[self.response JSONDictionary] forKey:@"response"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?=&=&"];
}

@end
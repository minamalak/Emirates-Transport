


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETRetrieveCasesByNumber.h"


@implementation ETRetrieveCasesByNumber

@synthesize caseNumber;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		NSObject *caseNumberRef = [dictionary objectForKey:@"caseNumber"];
		if([caseNumberRef isKindOfClass:[NSNull class]]) {  
			self.caseNumber = nil;
		}
		else {
			self.caseNumber = [dictionary objectForKey: @"caseNumber"];
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.caseNumber forKey:@"caseNumber"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?caseNumber=%@&", self.caseNumber];
}

@end
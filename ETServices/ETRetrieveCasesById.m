


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETRetrieveCasesById.h"


@implementation ETRetrieveCasesById

@synthesize caseid;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		self.caseid = [dictionary objectForKey: @"caseid"];
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.caseid forKey:@"caseid"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?caseid=%@&", self.caseid];
}

@end
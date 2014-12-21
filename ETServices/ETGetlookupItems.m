


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETGetlookupItems.h"


@implementation ETGetlookupItems

@synthesize lookupItem;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		NSObject *lookupItemRef = [dictionary objectForKey:@"lookupItem"];
		if([lookupItemRef isKindOfClass:[NSNull class]]) {  
			self.lookupItem = nil;
		}
		else {
			self.lookupItem = [dictionary objectForKey: @"lookupItem"];
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.lookupItem forKey:@"lookupItem"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?lookupItem=%@&", self.lookupItem];
}

@end
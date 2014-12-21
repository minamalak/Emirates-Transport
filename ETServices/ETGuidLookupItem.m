


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETGuidLookupItem.h"

@implementation ETGuidLookupItem
@synthesize ID;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super initWithData:dictionary]) {
		self.ID = [dictionary objectForKey: @"ID"];
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.ID forKey:@"ID"];
	return dictionary;
}

@end




#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETIntLookupItem.h"

@implementation ETIntLookupItem
@synthesize ID;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super initWithData:dictionary]) {
						
		NSObject *IDRef = [dictionary objectForKey:@"ID"];
		if([IDRef isKindOfClass:[NSNull class]]) {
			self.ID = nil;
		}
		else {
			self.ID = [dictionary objectForKey: @"ID"];
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.ID forKey:@"ID"];
	return dictionary;
}

@end

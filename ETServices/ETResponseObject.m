


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETResponseObject.h"

@implementation ETResponseObject
@synthesize Message;
@synthesize Status;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
						
		NSObject *MessageRef = [dictionary objectForKey:@"Message"];
		if([MessageRef isKindOfClass:[NSNull class]]) {
			self.Message = nil;
		}
		else {
			self.Message = [dictionary objectForKey: @"Message"];
		}
		self.Status = [[dictionary objectForKey: @"Status"] intValue];
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.Message forKey:@"Message"];
	[dictionary setValue:[NSNumber numberWithInt:self.Status] forKey:@"Status"];
	return dictionary;
}

@end




#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETLookupItem.h"

@implementation ETLookupItem
@synthesize ArabicName;
@synthesize EnglishName;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
						
		NSObject *ArabicNameRef = [dictionary objectForKey:@"ArabicName"];
		if([ArabicNameRef isKindOfClass:[NSNull class]]) {
			self.ArabicName = nil;
		}
		else {
			self.ArabicName = [dictionary objectForKey: @"ArabicName"];
		}
						
		NSObject *EnglishNameRef = [dictionary objectForKey:@"EnglishName"];
		if([EnglishNameRef isKindOfClass:[NSNull class]]) {
			self.EnglishName = nil;
		}
		else {
			self.EnglishName = [dictionary objectForKey: @"EnglishName"];
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.ArabicName forKey:@"ArabicName"];
	[dictionary setValue:self.EnglishName forKey:@"EnglishName"];
	return dictionary;
}

@end

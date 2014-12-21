


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETService.h"

@implementation ETService
@synthesize ArabicName;
@synthesize Description;
@synthesize EnglishName;
@synthesize Id;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
						
		NSObject *ArabicNameRef = [dictionary objectForKey:@"ArabicName"];
		if([ArabicNameRef isKindOfClass:[NSNull class]]) {
			self.ArabicName = nil;
		}
		else {
			self.ArabicName = [dictionary objectForKey: @"ArabicName"];
		}
						
		NSObject *DescriptionRef = [dictionary objectForKey:@"Description"];
		if([DescriptionRef isKindOfClass:[NSNull class]]) {
			self.Description = nil;
		}
		else {
			self.Description = [dictionary objectForKey: @"Description"];
		}
						
		NSObject *EnglishNameRef = [dictionary objectForKey:@"EnglishName"];
		if([EnglishNameRef isKindOfClass:[NSNull class]]) {
			self.EnglishName = nil;
		}
		else {
			self.EnglishName = [dictionary objectForKey: @"EnglishName"];
		}
		self.Id = [dictionary objectForKey: @"Id"];
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.ArabicName forKey:@"ArabicName"];
	[dictionary setValue:self.Description forKey:@"Description"];
	[dictionary setValue:self.EnglishName forKey:@"EnglishName"];
	[dictionary setValue:self.Id forKey:@"Id"];
	return dictionary;
}

@end

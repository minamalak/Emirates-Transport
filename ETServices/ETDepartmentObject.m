


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETServiceCenter.h"
#import "ETDepartmentObject.h"

@implementation ETDepartmentObject
@synthesize ArabicDescription;
@synthesize ArabicName;
@synthesize EnglishDescription;
@synthesize EnglishName;
@synthesize Id;
@synthesize Image;
@synthesize ImageUrl;
@synthesize ServiceCenters;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
						
		NSObject *ArabicDescriptionRef = [dictionary objectForKey:@"ArabicDescription"];
		if([ArabicDescriptionRef isKindOfClass:[NSNull class]]) {
			self.ArabicDescription = nil;
		}
		else {
			self.ArabicDescription = [dictionary objectForKey: @"ArabicDescription"];
		}
						
		NSObject *ArabicNameRef = [dictionary objectForKey:@"ArabicName"];
		if([ArabicNameRef isKindOfClass:[NSNull class]]) {
			self.ArabicName = nil;
		}
		else {
			self.ArabicName = [dictionary objectForKey: @"ArabicName"];
		}
						
		NSObject *EnglishDescriptionRef = [dictionary objectForKey:@"EnglishDescription"];
		if([EnglishDescriptionRef isKindOfClass:[NSNull class]]) {
			self.EnglishDescription = nil;
		}
		else {
			self.EnglishDescription = [dictionary objectForKey: @"EnglishDescription"];
		}
						
		NSObject *EnglishNameRef = [dictionary objectForKey:@"EnglishName"];
		if([EnglishNameRef isKindOfClass:[NSNull class]]) {
			self.EnglishName = nil;
		}
		else {
			self.EnglishName = [dictionary objectForKey: @"EnglishName"];
		}
		self.Id = [dictionary objectForKey: @"Id"];
						
		NSObject *ImageRef = [dictionary objectForKey:@"Image"];
		if([ImageRef isKindOfClass:[NSNull class]]) {
			self.Image = nil;
		}
		else {
			self.Image = http://www.w3.org/2001/XMLSchema:base64Binary*;
		}
						
		NSObject *ImageUrlRef = [dictionary objectForKey:@"ImageUrl"];
		if([ImageUrlRef isKindOfClass:[NSNull class]]) {
			self.ImageUrl = nil;
		}
		else {
			self.ImageUrl = [dictionary objectForKey: @"ImageUrl"];
		}
		ServiceCenters = [[NSMutableArray alloc] init];
		NSObject *ServiceCentersArrRef = [dictionary objectForKey:@"ServiceCenters"];
		if([ServiceCentersArrRef isKindOfClass:[NSArray class]]) {
			NSArray* ServiceCentersArr = (NSArray *)ServiceCentersArrRef;
			for(NSDictionary * childObj in ServiceCentersArr) {
				[ServiceCenters addObject:[[ETServiceCenter alloc] initWithData:childObj]];
			}
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.ArabicDescription forKey:@"ArabicDescription"];
	[dictionary setValue:self.ArabicName forKey:@"ArabicName"];
	[dictionary setValue:self.EnglishDescription forKey:@"EnglishDescription"];
	[dictionary setValue:self.EnglishName forKey:@"EnglishName"];
	[dictionary setValue:self.Id forKey:@"Id"];
	[dictionary setValue:http://www.w3.org/2001/XMLSchema:base64Binary* forKey:@"Image"];
	[dictionary setValue:self.ImageUrl forKey:@"ImageUrl"];
	NSMutableArray *arr = nil;
	arr = [[NSMutableArray alloc] init];
	for(ETServiceCenter* childObj in ServiceCenters) {
		[arr addObject:[childObj JSONDictionary]];
	}
	[dictionary setValue:arr forKey:@"ServiceCenters"];
	return dictionary;
}

@end




#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETRetrieveCasesByUser.h"


@implementation ETRetrieveCasesByUser

@synthesize userId;
@synthesize corporateAccountId;
@synthesize getAll;
@synthesize caseType;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
		self.userId = [dictionary objectForKey: @"userId"];
		self.corporateAccountId = [dictionary objectForKey: @"corporateAccountId"];
		self.getAll = [dictionary objectForKey: @"getAll"];
		NSObject *caseTypeRef = [dictionary objectForKey:@"caseType"];
		if([caseTypeRef isKindOfClass:[NSNull class]]) {  
			self.caseType = nil;
		}
		else {
			self.caseType = [dictionary objectForKey: @"caseType"];
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.userId forKey:@"userId"];
	[dictionary setValue:self.corporateAccountId forKey:@"corporateAccountId"];
	[dictionary setValue:self.getAll forKey:@"getAll"];
	[dictionary setValue:self.caseType forKey:@"caseType"];
	return dictionary;
}

- (NSString *)requestGETParams {
	return [NSString stringWithFormat:@"?userId=%@&corporateAccountId=%@&getAll=%@&caseType=%@&", self.userId, self.corporateAccountId, self.getAll ? @"true" : @"false", self.caseType];
}

@end
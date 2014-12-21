


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETIntLookupItem.h"
#import "ETGuidLookupItem.h"
#import "ETGuidLookupItem.h"
#import "ETIntLookupItem.h"
#import "ETGuidLookupItem.h"
#import "ETIntLookupItem.h"
#import "ETIntLookupItem.h"
#import "ETIntLookupItem.h"
#import "ETCaseObject.h"

@implementation ETCaseObject
@synthesize Area;
@synthesize CaseNumber;
@synthesize CaseType;
@synthesize ChassisNumber;
@synthesize Code;
@synthesize ComplaintDateTime;
@synthesize Contact;
@synthesize CorporateAccount;
@synthesize CreatedOn;
@synthesize CurrentSituation;
@synthesize Description;
@synthesize Details;
@synthesize Emirate;
@synthesize OtherCategory;
@synthesize PlateNumber;
@synthesize ServiceCategory;
@synthesize ServiceCenter;
@synthesize ServiceRequestNumber;
@synthesize ServiceType;
@synthesize ShipmentNumber;
@synthesize StatusReason;
@synthesize SubCategory;
@synthesize Subject;
@synthesize SuggestionSituation;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
						
		NSObject *AreaRef = [dictionary objectForKey:@"Area"];
		if([AreaRef isKindOfClass:[NSNull class]]) {
			self.Area = nil;
		}
		else {
			self.Area = [dictionary objectForKey: @"Area"];
		}
						
		NSObject *CaseNumberRef = [dictionary objectForKey:@"CaseNumber"];
		if([CaseNumberRef isKindOfClass:[NSNull class]]) {
			self.CaseNumber = nil;
		}
		else {
			self.CaseNumber = [dictionary objectForKey: @"CaseNumber"];
		}
						
		NSObject *CaseTypeRef = [dictionary objectForKey:@"CaseType"];
		if([CaseTypeRef isKindOfClass:[NSNull class]]) {
			self.CaseType = nil;
		}
		else {
			self.CaseType = [[ETIntLookupItem alloc] initWithData:[dictionary objectForKey: @"CaseType"]];
		}
						
		NSObject *ChassisNumberRef = [dictionary objectForKey:@"ChassisNumber"];
		if([ChassisNumberRef isKindOfClass:[NSNull class]]) {
			self.ChassisNumber = nil;
		}
		else {
			self.ChassisNumber = [dictionary objectForKey: @"ChassisNumber"];
		}
						
		NSObject *CodeRef = [dictionary objectForKey:@"Code"];
		if([CodeRef isKindOfClass:[NSNull class]]) {
			self.Code = nil;
		}
		else {
			self.Code = [dictionary objectForKey: @"Code"];
		}
						
		NSObject *ComplaintDateTimeRef = [dictionary objectForKey:@"ComplaintDateTime"];
		if([ComplaintDateTimeRef isKindOfClass:[NSNull class]]) {
			self.ComplaintDateTime = nil;
		}
		else {
			self.ComplaintDateTime = [dictionary objectForKey: @"ComplaintDateTime"];
		}
						
		NSObject *ContactRef = [dictionary objectForKey:@"Contact"];
		if([ContactRef isKindOfClass:[NSNull class]]) {
			self.Contact = nil;
		}
		else {
			self.Contact = [[ETGuidLookupItem alloc] initWithData:[dictionary objectForKey: @"Contact"]];
		}
		self.CorporateAccount = [dictionary objectForKey: @"CorporateAccount"];
		self.CreatedOn = [WebServiceEntities deserializeJsonDateString:[dictionary objectForKey: @"CreatedOn"]];
						
		NSObject *CurrentSituationRef = [dictionary objectForKey:@"CurrentSituation"];
		if([CurrentSituationRef isKindOfClass:[NSNull class]]) {
			self.CurrentSituation = nil;
		}
		else {
			self.CurrentSituation = [dictionary objectForKey: @"CurrentSituation"];
		}
						
		NSObject *DescriptionRef = [dictionary objectForKey:@"Description"];
		if([DescriptionRef isKindOfClass:[NSNull class]]) {
			self.Description = nil;
		}
		else {
			self.Description = [dictionary objectForKey: @"Description"];
		}
						
		NSObject *DetailsRef = [dictionary objectForKey:@"Details"];
		if([DetailsRef isKindOfClass:[NSNull class]]) {
			self.Details = nil;
		}
		else {
			self.Details = [dictionary objectForKey: @"Details"];
		}
						
		NSObject *EmirateRef = [dictionary objectForKey:@"Emirate"];
		if([EmirateRef isKindOfClass:[NSNull class]]) {
			self.Emirate = nil;
		}
		else {
			self.Emirate = [[ETGuidLookupItem alloc] initWithData:[dictionary objectForKey: @"Emirate"]];
		}
						
		NSObject *OtherCategoryRef = [dictionary objectForKey:@"OtherCategory"];
		if([OtherCategoryRef isKindOfClass:[NSNull class]]) {
			self.OtherCategory = nil;
		}
		else {
			self.OtherCategory = [dictionary objectForKey: @"OtherCategory"];
		}
						
		NSObject *PlateNumberRef = [dictionary objectForKey:@"PlateNumber"];
		if([PlateNumberRef isKindOfClass:[NSNull class]]) {
			self.PlateNumber = nil;
		}
		else {
			self.PlateNumber = [dictionary objectForKey: @"PlateNumber"];
		}
						
		NSObject *ServiceCategoryRef = [dictionary objectForKey:@"ServiceCategory"];
		if([ServiceCategoryRef isKindOfClass:[NSNull class]]) {
			self.ServiceCategory = nil;
		}
		else {
			self.ServiceCategory = [[ETIntLookupItem alloc] initWithData:[dictionary objectForKey: @"ServiceCategory"]];
		}
						
		NSObject *ServiceCenterRef = [dictionary objectForKey:@"ServiceCenter"];
		if([ServiceCenterRef isKindOfClass:[NSNull class]]) {
			self.ServiceCenter = nil;
		}
		else {
			self.ServiceCenter = [[ETGuidLookupItem alloc] initWithData:[dictionary objectForKey: @"ServiceCenter"]];
		}
						
		NSObject *ServiceRequestNumberRef = [dictionary objectForKey:@"ServiceRequestNumber"];
		if([ServiceRequestNumberRef isKindOfClass:[NSNull class]]) {
			self.ServiceRequestNumber = nil;
		}
		else {
			self.ServiceRequestNumber = [dictionary objectForKey: @"ServiceRequestNumber"];
		}
						
		NSObject *ServiceTypeRef = [dictionary objectForKey:@"ServiceType"];
		if([ServiceTypeRef isKindOfClass:[NSNull class]]) {
			self.ServiceType = nil;
		}
		else {
			self.ServiceType = [[ETIntLookupItem alloc] initWithData:[dictionary objectForKey: @"ServiceType"]];
		}
						
		NSObject *ShipmentNumberRef = [dictionary objectForKey:@"ShipmentNumber"];
		if([ShipmentNumberRef isKindOfClass:[NSNull class]]) {
			self.ShipmentNumber = nil;
		}
		else {
			self.ShipmentNumber = [dictionary objectForKey: @"ShipmentNumber"];
		}
						
		NSObject *StatusReasonRef = [dictionary objectForKey:@"StatusReason"];
		if([StatusReasonRef isKindOfClass:[NSNull class]]) {
			self.StatusReason = nil;
		}
		else {
			self.StatusReason = [[ETIntLookupItem alloc] initWithData:[dictionary objectForKey: @"StatusReason"]];
		}
						
		NSObject *SubCategoryRef = [dictionary objectForKey:@"SubCategory"];
		if([SubCategoryRef isKindOfClass:[NSNull class]]) {
			self.SubCategory = nil;
		}
		else {
			self.SubCategory = [[ETIntLookupItem alloc] initWithData:[dictionary objectForKey: @"SubCategory"]];
		}
						
		NSObject *SubjectRef = [dictionary objectForKey:@"Subject"];
		if([SubjectRef isKindOfClass:[NSNull class]]) {
			self.Subject = nil;
		}
		else {
			self.Subject = [dictionary objectForKey: @"Subject"];
		}
						
		NSObject *SuggestionSituationRef = [dictionary objectForKey:@"SuggestionSituation"];
		if([SuggestionSituationRef isKindOfClass:[NSNull class]]) {
			self.SuggestionSituation = nil;
		}
		else {
			self.SuggestionSituation = [dictionary objectForKey: @"SuggestionSituation"];
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.Area forKey:@"Area"];
	[dictionary setValue:self.CaseNumber forKey:@"CaseNumber"];
	[dictionary setValue:[self.CaseType JSONDictionary] forKey:@"CaseType"];
	[dictionary setValue:self.ChassisNumber forKey:@"ChassisNumber"];
	[dictionary setValue:self.Code forKey:@"Code"];
	[dictionary setValue:self.ComplaintDateTime forKey:@"ComplaintDateTime"];
	[dictionary setValue:[self.Contact JSONDictionary] forKey:@"Contact"];
	[dictionary setValue:self.CorporateAccount forKey:@"CorporateAccount"];
	[dictionary setValue:[WebServiceEntities serializeToJsonDateString: self.CreatedOn] forKey:@"CreatedOn"];
	[dictionary setValue:self.CurrentSituation forKey:@"CurrentSituation"];
	[dictionary setValue:self.Description forKey:@"Description"];
	[dictionary setValue:self.Details forKey:@"Details"];
	[dictionary setValue:[self.Emirate JSONDictionary] forKey:@"Emirate"];
	[dictionary setValue:self.OtherCategory forKey:@"OtherCategory"];
	[dictionary setValue:self.PlateNumber forKey:@"PlateNumber"];
	[dictionary setValue:[self.ServiceCategory JSONDictionary] forKey:@"ServiceCategory"];
	[dictionary setValue:[self.ServiceCenter JSONDictionary] forKey:@"ServiceCenter"];
	[dictionary setValue:self.ServiceRequestNumber forKey:@"ServiceRequestNumber"];
	[dictionary setValue:[self.ServiceType JSONDictionary] forKey:@"ServiceType"];
	[dictionary setValue:self.ShipmentNumber forKey:@"ShipmentNumber"];
	[dictionary setValue:[self.StatusReason JSONDictionary] forKey:@"StatusReason"];
	[dictionary setValue:[self.SubCategory JSONDictionary] forKey:@"SubCategory"];
	[dictionary setValue:self.Subject forKey:@"Subject"];
	[dictionary setValue:self.SuggestionSituation forKey:@"SuggestionSituation"];
	return dictionary;
}

@end

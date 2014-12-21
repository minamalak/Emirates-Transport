


#import <Foundation/Foundation.h>
#import "WebServiceEntities.h"

#import "ETGuidLookupItem.h"
#import "ETService.h"
#import "ETServiceCenter.h"

@implementation ETServiceCenter
@synthesize AchievmentAverageTime;
@synthesize AchievmentAverageTimeAr;
@synthesize ArabicName;
@synthesize AverageServiceRating;
@synthesize ChannelOfServiceAr;
@synthesize ChannelsOfService;
@synthesize Department;
@synthesize EnglishName;
@synthesize ProceduresSteps;
@synthesize ProceduresStepsAr;
@synthesize ServiceApplicatiosnurl;
@synthesize ServiceCategoryAndType;
@synthesize ServiceCategoryAndTypeAr;
@synthesize ServiceCenterID;
@synthesize ServiceClassification;
@synthesize ServiceClassificationAr;
@synthesize ServiceDefinition;
@synthesize ServiceDefinitionAr;
@synthesize ServiceFees;
@synthesize ServiceFeesAr;
@synthesize ServiceImage;
@synthesize ServiceLimitation;
@synthesize ServiceLimitationAr;
@synthesize ServiceRatingURL;
@synthesize ServicesList;
@synthesize TargetedCustomers;
@synthesize TargetedCustomersAr;
@synthesize TermsIndividual;
@synthesize TermsIndividualAr;
@synthesize TermsOfService;
@synthesize TermsOfServiceAr;
@synthesize TermsOfServiceReformAr;
@synthesize TermsOfServicesReform;
@synthesize TimesOfService;
@synthesize TimesOfServiceAr;

- (id)initWithData: (NSDictionary *)dictionary {
	if(self = [super init]) {
						
		NSObject *AchievmentAverageTimeRef = [dictionary objectForKey:@"AchievmentAverageTime"];
		if([AchievmentAverageTimeRef isKindOfClass:[NSNull class]]) {
			self.AchievmentAverageTime = nil;
		}
		else {
			self.AchievmentAverageTime = [dictionary objectForKey: @"AchievmentAverageTime"];
		}
						
		NSObject *AchievmentAverageTimeArRef = [dictionary objectForKey:@"AchievmentAverageTimeAr"];
		if([AchievmentAverageTimeArRef isKindOfClass:[NSNull class]]) {
			self.AchievmentAverageTimeAr = nil;
		}
		else {
			self.AchievmentAverageTimeAr = [dictionary objectForKey: @"AchievmentAverageTimeAr"];
		}
						
		NSObject *ArabicNameRef = [dictionary objectForKey:@"ArabicName"];
		if([ArabicNameRef isKindOfClass:[NSNull class]]) {
			self.ArabicName = nil;
		}
		else {
			self.ArabicName = [dictionary objectForKey: @"ArabicName"];
		}
		self.AverageServiceRating = [dictionary objectForKey: @"AverageServiceRating"];
						
		NSObject *ChannelOfServiceArRef = [dictionary objectForKey:@"ChannelOfServiceAr"];
		if([ChannelOfServiceArRef isKindOfClass:[NSNull class]]) {
			self.ChannelOfServiceAr = nil;
		}
		else {
			self.ChannelOfServiceAr = [dictionary objectForKey: @"ChannelOfServiceAr"];
		}
						
		NSObject *ChannelsOfServiceRef = [dictionary objectForKey:@"ChannelsOfService"];
		if([ChannelsOfServiceRef isKindOfClass:[NSNull class]]) {
			self.ChannelsOfService = nil;
		}
		else {
			self.ChannelsOfService = [dictionary objectForKey: @"ChannelsOfService"];
		}
						
		NSObject *DepartmentRef = [dictionary objectForKey:@"Department"];
		if([DepartmentRef isKindOfClass:[NSNull class]]) {
			self.Department = nil;
		}
		else {
			self.Department = [[ETGuidLookupItem alloc] initWithData:[dictionary objectForKey: @"Department"]];
		}
						
		NSObject *EnglishNameRef = [dictionary objectForKey:@"EnglishName"];
		if([EnglishNameRef isKindOfClass:[NSNull class]]) {
			self.EnglishName = nil;
		}
		else {
			self.EnglishName = [dictionary objectForKey: @"EnglishName"];
		}
						
		NSObject *ProceduresStepsRef = [dictionary objectForKey:@"ProceduresSteps"];
		if([ProceduresStepsRef isKindOfClass:[NSNull class]]) {
			self.ProceduresSteps = nil;
		}
		else {
			self.ProceduresSteps = [dictionary objectForKey: @"ProceduresSteps"];
		}
						
		NSObject *ProceduresStepsArRef = [dictionary objectForKey:@"ProceduresStepsAr"];
		if([ProceduresStepsArRef isKindOfClass:[NSNull class]]) {
			self.ProceduresStepsAr = nil;
		}
		else {
			self.ProceduresStepsAr = [dictionary objectForKey: @"ProceduresStepsAr"];
		}
						
		NSObject *ServiceApplicatiosnurlRef = [dictionary objectForKey:@"ServiceApplicatiosnurl"];
		if([ServiceApplicatiosnurlRef isKindOfClass:[NSNull class]]) {
			self.ServiceApplicatiosnurl = nil;
		}
		else {
			self.ServiceApplicatiosnurl = [dictionary objectForKey: @"ServiceApplicatiosnurl"];
		}
						
		NSObject *ServiceCategoryAndTypeRef = [dictionary objectForKey:@"ServiceCategoryAndType"];
		if([ServiceCategoryAndTypeRef isKindOfClass:[NSNull class]]) {
			self.ServiceCategoryAndType = nil;
		}
		else {
			self.ServiceCategoryAndType = [dictionary objectForKey: @"ServiceCategoryAndType"];
		}
						
		NSObject *ServiceCategoryAndTypeArRef = [dictionary objectForKey:@"ServiceCategoryAndTypeAr"];
		if([ServiceCategoryAndTypeArRef isKindOfClass:[NSNull class]]) {
			self.ServiceCategoryAndTypeAr = nil;
		}
		else {
			self.ServiceCategoryAndTypeAr = [dictionary objectForKey: @"ServiceCategoryAndTypeAr"];
		}
		self.ServiceCenterID = [dictionary objectForKey: @"ServiceCenterID"];
						
		NSObject *ServiceClassificationRef = [dictionary objectForKey:@"ServiceClassification"];
		if([ServiceClassificationRef isKindOfClass:[NSNull class]]) {
			self.ServiceClassification = nil;
		}
		else {
			self.ServiceClassification = [dictionary objectForKey: @"ServiceClassification"];
		}
						
		NSObject *ServiceClassificationArRef = [dictionary objectForKey:@"ServiceClassificationAr"];
		if([ServiceClassificationArRef isKindOfClass:[NSNull class]]) {
			self.ServiceClassificationAr = nil;
		}
		else {
			self.ServiceClassificationAr = [dictionary objectForKey: @"ServiceClassificationAr"];
		}
						
		NSObject *ServiceDefinitionRef = [dictionary objectForKey:@"ServiceDefinition"];
		if([ServiceDefinitionRef isKindOfClass:[NSNull class]]) {
			self.ServiceDefinition = nil;
		}
		else {
			self.ServiceDefinition = [dictionary objectForKey: @"ServiceDefinition"];
		}
						
		NSObject *ServiceDefinitionArRef = [dictionary objectForKey:@"ServiceDefinitionAr"];
		if([ServiceDefinitionArRef isKindOfClass:[NSNull class]]) {
			self.ServiceDefinitionAr = nil;
		}
		else {
			self.ServiceDefinitionAr = [dictionary objectForKey: @"ServiceDefinitionAr"];
		}
						
		NSObject *ServiceFeesRef = [dictionary objectForKey:@"ServiceFees"];
		if([ServiceFeesRef isKindOfClass:[NSNull class]]) {
			self.ServiceFees = nil;
		}
		else {
			self.ServiceFees = [dictionary objectForKey: @"ServiceFees"];
		}
						
		NSObject *ServiceFeesArRef = [dictionary objectForKey:@"ServiceFeesAr"];
		if([ServiceFeesArRef isKindOfClass:[NSNull class]]) {
			self.ServiceFeesAr = nil;
		}
		else {
			self.ServiceFeesAr = [dictionary objectForKey: @"ServiceFeesAr"];
		}
						
		NSObject *ServiceImageRef = [dictionary objectForKey:@"ServiceImage"];
		if([ServiceImageRef isKindOfClass:[NSNull class]]) {
			self.ServiceImage = nil;
		}
		else {
			self.ServiceImage = [dictionary objectForKey: @"ServiceImage"];
		}
						
		NSObject *ServiceLimitationRef = [dictionary objectForKey:@"ServiceLimitation"];
		if([ServiceLimitationRef isKindOfClass:[NSNull class]]) {
			self.ServiceLimitation = nil;
		}
		else {
			self.ServiceLimitation = [dictionary objectForKey: @"ServiceLimitation"];
		}
						
		NSObject *ServiceLimitationArRef = [dictionary objectForKey:@"ServiceLimitationAr"];
		if([ServiceLimitationArRef isKindOfClass:[NSNull class]]) {
			self.ServiceLimitationAr = nil;
		}
		else {
			self.ServiceLimitationAr = [dictionary objectForKey: @"ServiceLimitationAr"];
		}
						
		NSObject *ServiceRatingURLRef = [dictionary objectForKey:@"ServiceRatingURL"];
		if([ServiceRatingURLRef isKindOfClass:[NSNull class]]) {
			self.ServiceRatingURL = nil;
		}
		else {
			self.ServiceRatingURL = [dictionary objectForKey: @"ServiceRatingURL"];
		}
		ServicesList = [[NSMutableArray alloc] init];
		NSObject *ServicesListArrRef = [dictionary objectForKey:@"ServicesList"];
		if([ServicesListArrRef isKindOfClass:[NSArray class]]) {
			NSArray* ServicesListArr = (NSArray *)ServicesListArrRef;
			for(NSDictionary * childObj in ServicesListArr) {
				[ServicesList addObject:[[ETService alloc] initWithData:childObj]];
			}
		}
						
		NSObject *TargetedCustomersRef = [dictionary objectForKey:@"TargetedCustomers"];
		if([TargetedCustomersRef isKindOfClass:[NSNull class]]) {
			self.TargetedCustomers = nil;
		}
		else {
			self.TargetedCustomers = [dictionary objectForKey: @"TargetedCustomers"];
		}
						
		NSObject *TargetedCustomersArRef = [dictionary objectForKey:@"TargetedCustomersAr"];
		if([TargetedCustomersArRef isKindOfClass:[NSNull class]]) {
			self.TargetedCustomersAr = nil;
		}
		else {
			self.TargetedCustomersAr = [dictionary objectForKey: @"TargetedCustomersAr"];
		}
						
		NSObject *TermsIndividualRef = [dictionary objectForKey:@"TermsIndividual"];
		if([TermsIndividualRef isKindOfClass:[NSNull class]]) {
			self.TermsIndividual = nil;
		}
		else {
			self.TermsIndividual = [dictionary objectForKey: @"TermsIndividual"];
		}
						
		NSObject *TermsIndividualArRef = [dictionary objectForKey:@"TermsIndividualAr"];
		if([TermsIndividualArRef isKindOfClass:[NSNull class]]) {
			self.TermsIndividualAr = nil;
		}
		else {
			self.TermsIndividualAr = [dictionary objectForKey: @"TermsIndividualAr"];
		}
						
		NSObject *TermsOfServiceRef = [dictionary objectForKey:@"TermsOfService"];
		if([TermsOfServiceRef isKindOfClass:[NSNull class]]) {
			self.TermsOfService = nil;
		}
		else {
			self.TermsOfService = [dictionary objectForKey: @"TermsOfService"];
		}
						
		NSObject *TermsOfServiceArRef = [dictionary objectForKey:@"TermsOfServiceAr"];
		if([TermsOfServiceArRef isKindOfClass:[NSNull class]]) {
			self.TermsOfServiceAr = nil;
		}
		else {
			self.TermsOfServiceAr = [dictionary objectForKey: @"TermsOfServiceAr"];
		}
						
		NSObject *TermsOfServiceReformArRef = [dictionary objectForKey:@"TermsOfServiceReformAr"];
		if([TermsOfServiceReformArRef isKindOfClass:[NSNull class]]) {
			self.TermsOfServiceReformAr = nil;
		}
		else {
			self.TermsOfServiceReformAr = [dictionary objectForKey: @"TermsOfServiceReformAr"];
		}
						
		NSObject *TermsOfServicesReformRef = [dictionary objectForKey:@"TermsOfServicesReform"];
		if([TermsOfServicesReformRef isKindOfClass:[NSNull class]]) {
			self.TermsOfServicesReform = nil;
		}
		else {
			self.TermsOfServicesReform = [dictionary objectForKey: @"TermsOfServicesReform"];
		}
						
		NSObject *TimesOfServiceRef = [dictionary objectForKey:@"TimesOfService"];
		if([TimesOfServiceRef isKindOfClass:[NSNull class]]) {
			self.TimesOfService = nil;
		}
		else {
			self.TimesOfService = [dictionary objectForKey: @"TimesOfService"];
		}
						
		NSObject *TimesOfServiceArRef = [dictionary objectForKey:@"TimesOfServiceAr"];
		if([TimesOfServiceArRef isKindOfClass:[NSNull class]]) {
			self.TimesOfServiceAr = nil;
		}
		else {
			self.TimesOfServiceAr = [dictionary objectForKey: @"TimesOfServiceAr"];
		}
	}
	return self;
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
	[dictionary setValue:self.AchievmentAverageTime forKey:@"AchievmentAverageTime"];
	[dictionary setValue:self.AchievmentAverageTimeAr forKey:@"AchievmentAverageTimeAr"];
	[dictionary setValue:self.ArabicName forKey:@"ArabicName"];
	[dictionary setValue:self.AverageServiceRating forKey:@"AverageServiceRating"];
	[dictionary setValue:self.ChannelOfServiceAr forKey:@"ChannelOfServiceAr"];
	[dictionary setValue:self.ChannelsOfService forKey:@"ChannelsOfService"];
	[dictionary setValue:[self.Department JSONDictionary] forKey:@"Department"];
	[dictionary setValue:self.EnglishName forKey:@"EnglishName"];
	[dictionary setValue:self.ProceduresSteps forKey:@"ProceduresSteps"];
	[dictionary setValue:self.ProceduresStepsAr forKey:@"ProceduresStepsAr"];
	[dictionary setValue:self.ServiceApplicatiosnurl forKey:@"ServiceApplicatiosnurl"];
	[dictionary setValue:self.ServiceCategoryAndType forKey:@"ServiceCategoryAndType"];
	[dictionary setValue:self.ServiceCategoryAndTypeAr forKey:@"ServiceCategoryAndTypeAr"];
	[dictionary setValue:self.ServiceCenterID forKey:@"ServiceCenterID"];
	[dictionary setValue:self.ServiceClassification forKey:@"ServiceClassification"];
	[dictionary setValue:self.ServiceClassificationAr forKey:@"ServiceClassificationAr"];
	[dictionary setValue:self.ServiceDefinition forKey:@"ServiceDefinition"];
	[dictionary setValue:self.ServiceDefinitionAr forKey:@"ServiceDefinitionAr"];
	[dictionary setValue:self.ServiceFees forKey:@"ServiceFees"];
	[dictionary setValue:self.ServiceFeesAr forKey:@"ServiceFeesAr"];
	[dictionary setValue:self.ServiceImage forKey:@"ServiceImage"];
	[dictionary setValue:self.ServiceLimitation forKey:@"ServiceLimitation"];
	[dictionary setValue:self.ServiceLimitationAr forKey:@"ServiceLimitationAr"];
	[dictionary setValue:self.ServiceRatingURL forKey:@"ServiceRatingURL"];
	NSMutableArray *arr = nil;
	arr = [[NSMutableArray alloc] init];
	for(ETService* childObj in ServicesList) {
		[arr addObject:[childObj JSONDictionary]];
	}
	[dictionary setValue:arr forKey:@"ServicesList"];
	[dictionary setValue:self.TargetedCustomers forKey:@"TargetedCustomers"];
	[dictionary setValue:self.TargetedCustomersAr forKey:@"TargetedCustomersAr"];
	[dictionary setValue:self.TermsIndividual forKey:@"TermsIndividual"];
	[dictionary setValue:self.TermsIndividualAr forKey:@"TermsIndividualAr"];
	[dictionary setValue:self.TermsOfService forKey:@"TermsOfService"];
	[dictionary setValue:self.TermsOfServiceAr forKey:@"TermsOfServiceAr"];
	[dictionary setValue:self.TermsOfServiceReformAr forKey:@"TermsOfServiceReformAr"];
	[dictionary setValue:self.TermsOfServicesReform forKey:@"TermsOfServicesReform"];
	[dictionary setValue:self.TimesOfService forKey:@"TimesOfService"];
	[dictionary setValue:self.TimesOfServiceAr forKey:@"TimesOfServiceAr"];
	return dictionary;
}

@end




#import <Foundation/Foundation.h>

@class ETGuidLookupItem;
@class ETService;


@interface ETServiceCenter : NSObject {
}

@property (nonatomic, retain) NSString* AchievmentAverageTime;
@property (nonatomic, retain) NSString* AchievmentAverageTimeAr;
@property (nonatomic, retain) NSString* ArabicName;
@property (nonatomic, retain) NSNumber* AverageServiceRating;
@property (nonatomic, retain) NSString* ChannelOfServiceAr;
@property (nonatomic, retain) NSString* ChannelsOfService;
@property (nonatomic, retain) ETGuidLookupItem* Department;
@property (nonatomic, retain) NSString* EnglishName;
@property (nonatomic, retain) NSString* ProceduresSteps;
@property (nonatomic, retain) NSString* ProceduresStepsAr;
@property (nonatomic, retain) NSString* ServiceApplicatiosnurl;
@property (nonatomic, retain) NSString* ServiceCategoryAndType;
@property (nonatomic, retain) NSString* ServiceCategoryAndTypeAr;
@property (nonatomic, retain) NSString* ServiceCenterID;
@property (nonatomic, retain) NSString* ServiceClassification;
@property (nonatomic, retain) NSString* ServiceClassificationAr;
@property (nonatomic, retain) NSString* ServiceDefinition;
@property (nonatomic, retain) NSString* ServiceDefinitionAr;
@property (nonatomic, retain) NSString* ServiceFees;
@property (nonatomic, retain) NSString* ServiceFeesAr;
@property (nonatomic, retain) NSString* ServiceImage;
@property (nonatomic, retain) NSString* ServiceLimitation;
@property (nonatomic, retain) NSString* ServiceLimitationAr;
@property (nonatomic, retain) NSString* ServiceRatingURL;
@property (nonatomic, retain) NSMutableArray* ServicesList;
@property (nonatomic, retain) NSString* TargetedCustomers;
@property (nonatomic, retain) NSString* TargetedCustomersAr;
@property (nonatomic, retain) NSString* TermsIndividual;
@property (nonatomic, retain) NSString* TermsIndividualAr;
@property (nonatomic, retain) NSString* TermsOfService;
@property (nonatomic, retain) NSString* TermsOfServiceAr;
@property (nonatomic, retain) NSString* TermsOfServiceReformAr;
@property (nonatomic, retain) NSString* TermsOfServicesReform;
@property (nonatomic, retain) NSString* TimesOfService;
@property (nonatomic, retain) NSString* TimesOfServiceAr;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;

@end

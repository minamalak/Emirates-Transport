


#import <Foundation/Foundation.h>

@class ETIntLookupItem;
@class ETGuidLookupItem;
@class ETIntLookupItem;
@class ETIntLookupItem;
@class ETGuidLookupItem;
@class ETIntLookupItem;
@class ETIntLookupItem;
@class ETIntLookupItem;


@interface ETCaseDataContract : NSObject {
}

@property (nonatomic, retain) NSString* Area;
@property (nonatomic, retain) NSString* CaseNumber;
@property (nonatomic, retain) ETIntLookupItem* CaseType;
@property (nonatomic, retain) NSString* ChassisNumber;
@property (nonatomic, retain) NSString* Code;
@property (nonatomic, retain) NSDate* ComplaintDateTime;
@property (nonatomic, retain) NSString* Contact;
@property (nonatomic, retain) NSString* CorporateAccount;
@property (nonatomic, retain) NSDate* CreatedOn;
@property (nonatomic, retain) NSString* CurrentSituation;
@property (nonatomic, retain) NSString* Description;
@property (nonatomic, retain) NSString* Details;
@property (nonatomic, retain) ETGuidLookupItem* Emirate;
@property (nonatomic, retain) NSString* Name;
@property (nonatomic, retain) NSString* OtherCategory;
@property (nonatomic, retain) NSString* PlateNumber;
@property (nonatomic, retain) ETIntLookupItem* Satisfaction;
@property (nonatomic, retain) ETIntLookupItem* ServiceCategory;
@property (nonatomic, retain) ETGuidLookupItem* ServiceCenter;
@property (nonatomic, retain) NSString* ServiceRequestNumber;
@property (nonatomic, retain) ETIntLookupItem* ServiceType;
@property (nonatomic, retain) NSString* ShipmentNumber;
@property (nonatomic, retain) ETIntLookupItem* StatusReason;
@property (nonatomic, retain) ETIntLookupItem* SubCategory;
@property (nonatomic, retain) NSString* Subject;
@property (nonatomic, retain) NSString* SuggestionSituation;
@property (nonatomic, retain) NSString* UserId;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;

@end

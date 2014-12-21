


#import <Foundation/Foundation.h>




@interface ETRetrieveCasesByUser : NSObject {
}

@property (nonatomic, retain) NSString* userId;
@property (nonatomic, retain) NSString* corporateAccountId;
@property (nonatomic, retain) NSNumber* getAll;
@property (nonatomic, retain) NSString* caseType;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
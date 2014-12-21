


#import <Foundation/Foundation.h>




@interface ETRetrieveCasesByNumber : NSObject {
}

@property (nonatomic, retain) NSString* caseNumber;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
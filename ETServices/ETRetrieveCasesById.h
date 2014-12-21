


#import <Foundation/Foundation.h>




@interface ETRetrieveCasesById : NSObject {
}

@property (nonatomic, retain) NSString* caseid;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
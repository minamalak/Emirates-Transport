


#import <Foundation/Foundation.h>




@interface ETGetlookupItems : NSObject {
}

@property (nonatomic, retain) NSString* lookupItem;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
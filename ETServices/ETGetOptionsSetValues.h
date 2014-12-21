


#import <Foundation/Foundation.h>




@interface ETGetOptionsSetValues : NSObject {
}

@property (nonatomic, retain) NSString* entitySchemaName;
@property (nonatomic, retain) NSString* attributeSchemaName;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
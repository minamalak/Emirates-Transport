


#import <Foundation/Foundation.h>




@interface ETGetServicesPerCenter : NSObject {
}

@property (nonatomic, retain) NSString* servicecenterid;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end



#import <Foundation/Foundation.h>



@interface ETLookupItem : NSObject {
}

@property (nonatomic, retain) NSString* ArabicName;
@property (nonatomic, retain) NSString* EnglishName;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;

@end

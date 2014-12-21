


#import <Foundation/Foundation.h>



@interface ETService : NSObject {
}

@property (nonatomic, retain) NSString* ArabicName;
@property (nonatomic, retain) NSString* Description;
@property (nonatomic, retain) NSString* EnglishName;
@property (nonatomic, retain) NSString* Id;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;

@end

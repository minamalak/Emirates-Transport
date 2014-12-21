


#import <Foundation/Foundation.h>

@class ETServiceCenter;


@interface ETDepartmentObject : NSObject {
}

@property (nonatomic, retain) NSString* ArabicDescription;
@property (nonatomic, retain) NSString* ArabicName;
@property (nonatomic, retain) NSString* EnglishDescription;
@property (nonatomic, retain) NSString* EnglishName;
@property (nonatomic, retain) NSString* Id;
@property (nonatomic, retain) http://www.w3.org/2001/XMLSchema:base64Binary* Image;
@property (nonatomic, retain) NSString* ImageUrl;
@property (nonatomic, retain) NSMutableArray* ServiceCenters;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;

@end

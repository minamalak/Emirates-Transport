


#import <Foundation/Foundation.h>




@interface ETRetrieveFilteredDropdownValues : NSObject {
}

@property (nonatomic, retain) NSString* entityName;
@property (nonatomic, retain) NSString* parentField;
@property (nonatomic, retain) NSString* optionID;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end



#import <Foundation/Foundation.h>


	@class ETIntLookupItem;
	

@interface ETRetrieveFilteredDropdownValuesResponse : NSObject {
}

@property (nonatomic, retain) NSMutableArray* RetrieveFilteredDropdownValuesResult;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end



#import <Foundation/Foundation.h>


	@class ETGuidLookupItem;
		@class ETResponseObject;
	

@interface ETGetlookupItemsResponse : NSObject {
}

@property (nonatomic, retain) NSMutableArray* GetlookupItemsResult;
@property (nonatomic, retain) ETResponseObject* response;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
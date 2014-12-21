


#import <Foundation/Foundation.h>


	@class ETIntLookupItem;
		@class ETResponseObject;
	

@interface ETGetOptionsSetValuesResponse : NSObject {
}

@property (nonatomic, retain) NSMutableArray* GetOptionsSetValuesResult;
@property (nonatomic, retain) ETResponseObject* response;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
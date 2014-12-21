


#import <Foundation/Foundation.h>


	@class ETServiceCenter;
		@class ETResponseObject;
	

@interface ETGetServiceCenterDetailsByIdResponse : NSObject {
}

@property (nonatomic, retain) ETServiceCenter* GetServiceCenterDetailsByIdResult;
@property (nonatomic, retain) ETResponseObject* response;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
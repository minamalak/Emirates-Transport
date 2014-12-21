


#import <Foundation/Foundation.h>


	@class ETService;
		@class ETResponseObject;
	

@interface ETGetServicesPerCenterResponse : NSObject {
}

@property (nonatomic, retain) NSMutableArray* GetServicesPerCenterResult;
@property (nonatomic, retain) ETResponseObject* Response;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
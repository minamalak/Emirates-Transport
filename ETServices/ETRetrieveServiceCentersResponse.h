


#import <Foundation/Foundation.h>


	@class ETServiceCenter;
		@class ETResponseObject;
	

@interface ETRetrieveServiceCentersResponse : NSObject {
}

@property (nonatomic, retain) NSMutableArray* RetrieveServiceCentersResult;
@property (nonatomic, retain) ETResponseObject* response;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
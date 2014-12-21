


#import <Foundation/Foundation.h>


	@class ETCaseObject;
		@class ETResponseObject;
	

@interface ETRetrieveCasesByIdResponse : NSObject {
}

@property (nonatomic, retain) ETCaseObject* RetrieveCasesByIdResult;
@property (nonatomic, retain) ETResponseObject* response;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
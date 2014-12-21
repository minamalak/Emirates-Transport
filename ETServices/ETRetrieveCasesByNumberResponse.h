


#import <Foundation/Foundation.h>


	@class ETCaseObject;
		@class ETResponseObject;
	

@interface ETRetrieveCasesByNumberResponse : NSObject {
}

@property (nonatomic, retain) ETCaseObject* RetrieveCasesByNumberResult;
@property (nonatomic, retain) ETResponseObject* response;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
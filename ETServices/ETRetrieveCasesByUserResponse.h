


#import <Foundation/Foundation.h>


	@class ETCaseObject;
		@class ETResponseObject;
	

@interface ETRetrieveCasesByUserResponse : NSObject {
}

@property (nonatomic, retain) NSMutableArray* RetrieveCasesByUserResult;
@property (nonatomic, retain) ETResponseObject* response;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
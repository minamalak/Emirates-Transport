


#import <Foundation/Foundation.h>


	@class ETResponseObject;
	

@interface ETSubmitAppreciationResponse : NSObject {
}

@property (nonatomic, retain) NSString* SubmitAppreciationResult;
@property (nonatomic, retain) ETResponseObject* response;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
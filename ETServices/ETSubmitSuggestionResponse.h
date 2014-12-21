


#import <Foundation/Foundation.h>


	@class ETResponseObject;
	

@interface ETSubmitSuggestionResponse : NSObject {
}

@property (nonatomic, retain) NSString* SubmitSuggestionResult;
@property (nonatomic, retain) ETResponseObject* response;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
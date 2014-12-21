


#import <Foundation/Foundation.h>


	@class ETCaseDataContract;
	

@interface ETSubmitSuggestion : NSObject {
}

@property (nonatomic, retain) ETCaseDataContract* suggestionCase;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
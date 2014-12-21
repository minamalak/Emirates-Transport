


#import <Foundation/Foundation.h>


	@class ETCaseDataContract;
	

@interface ETSubmitAppreciation : NSObject {
}

@property (nonatomic, retain) ETCaseDataContract* appretitationCase;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
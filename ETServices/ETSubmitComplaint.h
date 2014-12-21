


#import <Foundation/Foundation.h>


	@class ETCaseDataContract;
	

@interface ETSubmitComplaint : NSObject {
}

@property (nonatomic, retain) ETCaseDataContract* complaintCase;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
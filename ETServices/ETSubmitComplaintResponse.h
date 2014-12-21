


#import <Foundation/Foundation.h>


	@class ETResponseObject;
	

@interface ETSubmitComplaintResponse : NSObject {
}

@property (nonatomic, retain) NSString* SubmitComplaintResult;
@property (nonatomic, retain) ETResponseObject* response;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
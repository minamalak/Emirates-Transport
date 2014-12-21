


#import <Foundation/Foundation.h>


	@class ETServiceCenter;
		@class ETResponseObject;
		@class ETDepartmentObject;
	

@interface ETGetServiceCentersByDepartmentIdResponse : NSObject {
}

@property (nonatomic, retain) NSMutableArray* GetServiceCentersByDepartmentIdResult;
@property (nonatomic, retain) ETResponseObject* response;
@property (nonatomic, retain) ETDepartmentObject* department;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
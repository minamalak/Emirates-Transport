


#import <Foundation/Foundation.h>


	@class ETDepartmentObject;
		@class ETResponseObject;
	

@interface ETGetDepartmentsResponse : NSObject {
}

@property (nonatomic, retain) NSMutableArray* GetDepartmentsResult;
@property (nonatomic, retain) ETResponseObject* response;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end



#import <Foundation/Foundation.h>




@interface ETGetServiceCentersByDepartmentId : NSObject {
}

@property (nonatomic, retain) NSString* departmentid;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;
- (NSString *)requestGETParams;

@end
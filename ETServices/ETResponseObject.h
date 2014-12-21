


#import <Foundation/Foundation.h>

#import "ETServiceStatus.h"


@interface ETResponseObject : NSObject {
}

@property (nonatomic, retain) NSString* Message;
@property (nonatomic) ETServiceStatus Status;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;

@end

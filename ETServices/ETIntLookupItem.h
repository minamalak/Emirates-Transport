


#import <Foundation/Foundation.h>

#import "ETLookupItem.h"


@interface ETIntLookupItem : ETLookupItem {
}

@property (nonatomic, retain) NSNumber* ID;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;

@end

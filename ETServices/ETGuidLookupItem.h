


#import <Foundation/Foundation.h>

#import "ETLookupItem.h"


@interface ETGuidLookupItem : ETLookupItem {
}

@property (nonatomic, retain) NSString* ID;

- (id)initWithData: (NSDictionary *)dictionary;
- (NSDictionary *)JSONDictionary;

@end

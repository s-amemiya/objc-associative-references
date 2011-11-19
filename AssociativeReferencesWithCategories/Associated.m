
#import "Associated.h"

@implementation Associated

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"%s", __func__);
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"%s", __func__);
}

@end

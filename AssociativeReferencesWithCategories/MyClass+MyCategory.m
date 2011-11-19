
#import "MyClass+MyCategory.h"
#import <objc/runtime.h>

static char associatedKey;

@implementation MyClass (MyCategory)

- (Associated *)associated 
{
    Associated* value = objc_getAssociatedObject(self, &associatedKey);
    if (!value) {
        value = [[Associated alloc] init];
        objc_setAssociatedObject(self, &associatedKey, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return value;
}

- (void)setAssociated:(Associated *)associated
{
    Associated* value = objc_getAssociatedObject(self, &associatedKey);
    if (value) {
        objc_setAssociatedObject(self, &associatedKey, nil, OBJC_ASSOCIATION_ASSIGN);
    }
    objc_setAssociatedObject(self, &associatedKey, associated, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end

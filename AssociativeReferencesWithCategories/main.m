
#import "MyClass.h"
#import "MyClass+MyCategory.h"

static void getterTest()
{
    NSLog(@"%s", __func__);
    @autoreleasepool {
        MyClass* mc = [[MyClass alloc] init];
        Associated* as = mc.associated;
        Associated* as2 = mc.associated;
    }
}

static void setterTest()
{
    NSLog(@"%s", __func__);
    @autoreleasepool {
        MyClass* mc = [[MyClass alloc] init];
        mc.associated = [[Associated alloc] init];
        mc.associated = [[Associated alloc] init];
    }
}

static void multiTest()
{
    NSLog(@"%s", __func__);
    @autoreleasepool {
        MyClass* mc1 = [[MyClass alloc] init];
        MyClass* mc2 = [[MyClass alloc] init];
        mc1.associated = [[Associated alloc] init];
        mc2.associated = [[Associated alloc] init];
    }
}

int main()
{
    getterTest();
    setterTest();
    multiTest();

    return 0;
}

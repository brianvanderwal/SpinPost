#import "KIFUITestActor+SpinPostAdditions.h"
#import "TestingAppDelegate.h"

@implementation KIFUITestActor (SpinPostAdditions)

- (void)makeWindowForViewController:(UIViewController *)viewController {
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    window.rootViewController = viewController;
    
    [window makeKeyAndVisible];

    TestingAppDelegate *appDelegate = (TestingAppDelegate *)[[UIApplication sharedApplication] delegate];
    appDelegate.window = window;
}

@end

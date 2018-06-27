#import "AppDelegate.h"
#import "StartupViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    StartupViewController *startupViewController = [StartupViewController new];
    self.window.rootViewController = startupViewController;

    [self.window makeKeyAndVisible];
    
    return YES;
}

@end

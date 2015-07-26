
#import "DKCConAppDelegate.h"
#import "DKCWebviewViewController.h"


@implementation DKCConAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window =  [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UIViewController * rootController = [self createController];
	[_window addSubview: [rootController view]];
    [_window setRootViewController:rootController];
    [_window makeKeyAndVisible];
    return YES;
}

-(UIViewController*)createController {
    UIViewController *ctrl = [[DKCWebviewViewController alloc] init];
	return [[UINavigationController alloc] initWithRootViewController:ctrl];
}


@end

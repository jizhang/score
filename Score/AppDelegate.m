//
//  AppDelegate.m
//  Score
//
//  Created by Ji ZHANG on 2020/4/24.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = UIColor.whiteColor;

    MasterViewController *vc = [[MasterViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];

    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return YES;
}

@end

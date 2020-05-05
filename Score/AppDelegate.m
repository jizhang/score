//
//  AppDelegate.m
//  Score
//
//  Created by Ji ZHANG on 2020/4/24.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = UIColor.whiteColor;
    self.window.rootViewController = [[MainViewController alloc] init];
    [self.window makeKeyAndVisible];
    return YES;
}

@end

//
//  AppDelegate.m
//  testnavigation
//
//  Created by  on 2012/5/23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"
@implementation AppDelegate

@synthesize window = _window;
@synthesize navigationController = _navigationController;
- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    
    
    RootViewController *root = [[RootViewController alloc]init];
    
    self.navigationController = [[MYNavigationController alloc]initWithRootViewController:root];
    
    [self.window setRootViewController:self.navigationController];
    
    
    NSLog(@"%@",[UIFont familyNames]);
    [self.window makeKeyAndVisible];
    return YES;
}

@end

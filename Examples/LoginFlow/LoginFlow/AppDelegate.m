//
//  AppDelegate.m
//  MINavigationController
//
//  Created by Jamie Matthews on 10/16/14.
//  Copyright (c) 2014 Ivedix. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginViewController.h"
#import "MainViewController.h"
#import "MINavigationController.h"

@interface AppDelegate ()
@property (nonatomic, strong) UIWindow *miWindow;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.miWindow = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.miWindow.rootViewController = [self createLoginNavigationFlow];
    [self.miWindow makeKeyAndVisible];
    
    return YES;
}

//To examplify a common use case of this project, we will have a Login screen,
//which trasnitions into a "main" screen, which is itself a navigation controller
- (UIViewController*) createLoginNavigationFlow {
    LoginViewController *loginView = [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:[NSBundle mainBundle]];
    
    
    MainViewController *mainView = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:[NSBundle mainBundle]];
    UINavigationController *mainNav = [[UINavigationController alloc] initWithRootViewController:mainView];
    
    NSArray *viewControllers = @[loginView, mainNav];
    
    MINavigationController *customNav = [[MINavigationController alloc] initWithViewControllers:viewControllers];
    
    return customNav;
}


@end

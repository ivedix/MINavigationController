//
//  MainViewController.m
//  MINavigationController
//
//  Created by Jamie Matthews on 10/21/14.
//  Copyright (c) 2014 Ivedix. All rights reserved.
//

#import "MainViewController.h"
#import "UIViewController+MINavigationController.h"
#import "MINavigationController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *logoutButton = [[UIBarButtonItem alloc] initWithTitle:@"Logout" style:UIBarButtonItemStylePlain target:self action:@selector(logoutAction:)];
    self.navigationItem.rightBarButtonItem = logoutButton;
    
}

-(void)logoutAction:(id)sender{
    [self.miNavigationController transitionToViewControllerAtIndex:0];
}

@end

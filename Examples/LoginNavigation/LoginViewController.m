//
//  LoginViewController.m
//  MINavigationController
//
//  Created by Jamie Matthews on 10/21/14.
//  Copyright (c) 2014 Ivedix. All rights reserved.
//

#import "LoginViewController.h"
#import "UIViewController+MINavigationController.h"
#import "MINavigationController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)loginPressed:(UIButton*)sender {
    //hardcoded view controller indexes for now, should be a nicer way to do this
    [self.miNavigationController transitionToViewControllerAtIndex:1];
}


@end

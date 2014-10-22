//
//  UIViewController+MINavigationController.h
//  MINavigationController
//
//  Created by Jamie Matthews on 10/21/14.
//  Copyright (c) 2014 Ivedix. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 This category adds a convience method on `UIViewController` for accessing a sliding view controller from one of its child view controllers.
 Credit to ECSlidingViewController for this implementation
 https://github.com/ECSlidingViewController/ECSlidingViewController
 */

@class MINavigationController;

@interface UIViewController (MINavigationController)

- (MINavigationController *)miNavigationController;

@end

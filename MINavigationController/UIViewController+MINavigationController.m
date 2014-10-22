//
//  UIViewController+MINavigationController.m
//  MINavigationController
//
//  Created by Jamie Matthews on 10/21/14.
//  Copyright (c) 2014 Ivedix. All rights reserved.
//

#import "UIViewController+MINavigationController.h"
#import "MINavigationController.h"

@implementation UIViewController (MINavigationController)
- (MINavigationController *)miNavigationController {
    UIViewController *viewController = self.parentViewController ? self.parentViewController : self.presentingViewController;
    while (!(viewController == nil || [viewController isKindOfClass:[MINavigationController class]])) {
        viewController = viewController.parentViewController ? viewController.parentViewController : viewController.presentingViewController;
    }
    
    return (MINavigationController *)viewController;
}
@end

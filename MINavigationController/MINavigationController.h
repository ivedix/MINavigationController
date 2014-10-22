//
//  MINavigationController.h
//  MINavigationController
//
//  Created by Jamie Matthews on 10/16/14.
//  Copyright (c) 2014 Ivedix. All rights reserved.
//

@import UIKit;
@import Foundation;
@protocol RootViewControllerDelegate;

@interface MINavigationController : UIViewController
/// The container view controller delegate receiving the protocol callbacks.
@property (nonatomic, weak) id<RootViewControllerDelegate>delegate;
- (instancetype)initWithViewControllers:(NSArray*)viewController;
- (void)transitionToViewControllerAtIndex:(NSInteger)index;
@end


//for now, we always have a private class determine animation.  This allows an entry point to have the animation be customizable
@protocol RootViewControllerDelegate <NSObject>
@optional
/// Called on the delegate to obtain a UIViewControllerAnimatedTransitioning object which can be used to animate a non-interactive transition.
- (id <UIViewControllerAnimatedTransitioning>)containerViewController:(MINavigationController *)containerViewController animationControllerForTransitionFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController;
@end
MINavigationController
======================

Boiler plate code to allow you to create custom navigation schemes in your iOS application

Credit to Objc.io for the excellent write up on [how this is done in iOS](http://www.objc.io/issue-12/custom-container-view-controller-transitions.html)

##The problem
In iOS, we heavily rely on UIViewController for managing the navigation in our app.  It comes with tons of features baked in, like view controller transitions, managing the back button and back stack, etc.  There is one common use case that seems to fail though, which is when you have a Login screen, which must transition to a "Main" screen, without the back button. Also, if your "Main screen" itself needs to be the root view (ex. tab controller, slide view controller), this is also messy

##Old solutions
In the past there were a few "hackish" solutions to this.  

####Modal Login
The simplest would be to open your app and set the root to be your "Main" screen.  Then, in a modal, open your login screen, immeditaly.  This works, but certainly has its drawbacks.  Also, starting in iOS8 this became very glitch.  

####Animate root window changes
You can also change the windows root view controller, and attempt to animate between them.  This is also hacky, and tends to have some visual glitches

##Enter MINavigationController
MINavigationController makes this problem go away, by becoming a navigation controller like object.  It hosts an array of view controllers, and animates between them.  

![MINavigationViewController](https://github.com/ivedix/MINavigationController/MINavigationController.gif "")

##Usage
To Setup the MINavigationController 

```objective-c
NSArray *viewControllers = @[viewController1, viewController2];    
MINavigationController *customNav = [[MINavigationController alloc] initWithViewControllers:viewControllers];
self.miWindow.rootViewController = customNav;
```

Then, to animate views, you can call *transitionToViewControllerAtIndex:*.  Include UIViewController+MINavigationController category to get access to the rootview on any sub-view controllers

```objective-c
#import "UIViewController+MINavigationController.h"
...
[self.miNavigationController transitionToViewControllerAtIndex:1];
```





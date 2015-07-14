//
//  AppDelegate.h
//  Immly
//
//  Created by Navneet Kesher on 7/11/15.
//  Copyright (c) 2015 Joy Frequency LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ParseUI/ParseUI.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIViewController *viewController;

@end


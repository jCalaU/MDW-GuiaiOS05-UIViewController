//
//  AppDelegate.h
//  MDW-Guia-iOS05
//
//  Created by Javier Cala Uribe on 19/10/11.
//  Copyright (c) 2011 *. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UIWindow *window;
    UITabBarController *tabBarController;
    UINavigationController *navigationController;
}

@property (strong, nonatomic) UIWindow *window;

@end
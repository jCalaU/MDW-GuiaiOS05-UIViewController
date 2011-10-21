//
//  AppDelegate.m
//  MDW-Guia-iOS05
//
//  Created by Javier Cala Uribe on 19/10/11.
//  Copyright (c) 2011 *. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Inicializa los controladores
    navigationController = [[UINavigationController alloc] init];
    tabBarController     = [[UITabBarController alloc] init];
    
    // Inicializa la primer vista del TabBarController
    UIViewController *primerViewController      = [[UIViewController alloc] init];
    primerViewController.view.backgroundColor   = [UIColor whiteColor];    
    primerViewController.title = @"Primero";
    
    // Inicializa la segunda vista del TabBarController
    UIViewController *segundoViewController     = [[UIViewController alloc] init];
    segundoViewController.view.backgroundColor  = [UIColor whiteColor];    
    segundoViewController.title = @"Segundo";
    
    // Agrega la segunda vista al controlador UINavigationController
    [navigationController pushViewController:segundoViewController animated:NO];
    
    // Agrega las vistas creadas al controlador UITabBarController
    // 1. Primer Vista  = UIViewController
    // 2. Segunda Vista = UINavigationController
    [tabBarController setViewControllers:[NSArray arrayWithObjects:primerViewController, navigationController, nil] animated:YES];
    
    // Libera memoria con los controladores ya utilizados
    [primerViewController release];
    [segundoViewController release];
    
    // Agrega el controlador UITabBarController a la ventana principal
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];

    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    
    // Retorna YES XD
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end

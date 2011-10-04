//
//  ListOfLinksAppDelegate.m
//  ListOfLinks
//
//  Created by TopTier on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ListOfLinksAppDelegate.h"
#import "NavController.h"
#import "ListOfLinksViewController.h"

@implementation ListOfLinksAppDelegate

@synthesize tabBarController=_tabBarController;
@synthesize window=_window;
@synthesize navController;
@synthesize linksViewController=_linksViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    tabBarController = [[UITabBarController alloc] init];  
    
//    // Override point for customization after application launch.
    self.linksViewController = [[ListOfLinksViewController alloc] init];
    self.navController = [[[NavController alloc] initWithRootViewController:self.linksViewController] autorelease];
    
    self.tabBarController.viewControllers = [NSArray arrayWithObjects:self.navController, nil];
    self.navController.title = @"List of links";

//    self.window.rootViewController = self.tabBarController;
    
    [self.window addSubview:_tabBarController.view];
    [self.window makeKeyAndVisible];
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

- (void)dealloc
{
    [_window release];
    [_linksViewController release];
    [_tabBarController release];
    [navController release];
    [super dealloc];
}

@end

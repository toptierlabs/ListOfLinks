//
//  ListOfLinksAppDelegate.h
//  ListOfLinks
//
//  Created by TopTier on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ListOfLinksViewController;
@class NavController;
@interface ListOfLinksAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    NavController *navController;
    UITabBarController *tabBarController;
    
}
@property (nonatomic, retain)  UITabBarController *tabBarController;
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain)  NavController *navController;
@property (nonatomic, retain)  ListOfLinksViewController *linksViewController;

@end

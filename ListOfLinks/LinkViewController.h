//
//  LinkViewController.h
//  ListOfLinks
//
//  Created by TopTier on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LinkViewController : UIViewController {
    IBOutlet UIWebView *webView;
    NSString *url;
}

@property (nonatomic,retain) UIWebView *webView;
@property (nonatomic,retain) NSString *url; 
@end

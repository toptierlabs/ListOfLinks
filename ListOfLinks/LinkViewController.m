//
//  LinkViewController.m
//  ListOfLinks
//
//  Created by TopTier on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LinkViewController.h"


@implementation LinkViewController
@synthesize webView;
@synthesize url;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [webView release];
    [url release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewWillAppear:(BOOL)animated
{    
    //Create a URL object.
    NSURL *urlObj = [NSURL URLWithString:url];
    
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:urlObj];
    
    //Load the request in the UIWebView.
    [webView loadRequest:requestObj];
    
    [super viewWillAppear:animated];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    self.webView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

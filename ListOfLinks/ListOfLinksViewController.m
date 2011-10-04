//
//  ListOfLinksViewController.m
//  ListOfLinks
//
//  Created by TopTier on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ListOfLinksViewController.h"
#import "ListOfLinksAppDelegate.h"

@implementation ListOfLinksViewController
@synthesize links;
@synthesize keys;
@synthesize linkController;


- (void)dealloc
{
    [linkTableView release];
    [linkController release];
    [links release];
    [keys release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


//Table delegates
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [links count];
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString* CellIdentifier=@"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier]autorelease];
    }

    cell.textLabel.text = [self.keys objectAtIndex:[indexPath row] ];
    //---display an image---
    UIImage *image = [UIImage imageNamed:@"Link.png"]; cell.imageView.image = image;
    return cell;
}


- (void) tableView:(UITableView *)tableView 
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *url;

        url = [self.links objectForKey:[self.keys objectAtIndex:[indexPath row]]];
        self.linkController.title = [self.keys objectAtIndex:[indexPath row]];
        self.linkController.url = url;
        
        ListOfLinksAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
        
        [delegate.navController pushViewController:self.linkController animated:YES];
    
    
}


#pragma mark - View lifecycle



- (void) viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}

- (void) viewWillDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Links" ofType:@"plist"];
    
    NSDictionary *dic = [[NSDictionary alloc] initWithContentsOfFile:path];
    self.links = dic;
    self.keys = [dic allKeys];
    
    
    LinkViewController *auxLink = [[LinkViewController alloc] initWithNibName:@"LinkView" bundle:nil];
    
    self.linkController = auxLink;
    
    [dic release];
    [auxLink release];
    
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    linkTableView = nil;
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

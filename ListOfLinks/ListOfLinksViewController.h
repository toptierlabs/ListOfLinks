//
//  ListOfLinksViewController.h
//  ListOfLinks
//
//  Created by TopTier on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LinkViewController.h"

@interface ListOfLinksViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>{
    IBOutlet UITableView *linkTableView;
    LinkViewController * linkController;
}

@property (nonatomic,retain) NSDictionary *links;
@property (nonatomic,retain) NSArray   *keys;
@property (nonatomic,retain) LinkViewController * linkController;

@end

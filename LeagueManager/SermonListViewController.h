//
//  SermonListViewController.h
//  LeagueManager
//
//  Created by Jessi on 7/12/13.
//  Copyright (c) 2013 ProCoreData. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SermonSeriesTableViewController;

@interface SermonListViewController : UITableViewController

@property (nonatomic, strong) NSManagedObject *team;
@property (nonatomic, weak) SermonSeriesTableViewController *rootController;


- (NSArray *)sortPlayers;

@end

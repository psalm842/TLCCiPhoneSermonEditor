//
//  SermonSeriesTableViewController.h
//  LeagueManager
//
//  Created by Jessi on 7/5/13.
//  Copyright (c) 2013 ProCoreData. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SermonSeriesTableViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (void) insertTeamWithName:(NSString *)name uniformColor:(NSString *)uniformColor;
- (void) saveContext;
- (void)insertPlayerWithTeam:(NSManagedObject *)team firstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email;
- (void)deletePlayer:(NSManagedObject *)player;

@end

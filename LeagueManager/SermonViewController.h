//
//  SermonViewController.h
//  LeagueManager
//
//  Created by Jessi on 7/16/13.
//  Copyright (c) 2013 ProCoreData. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SermonSeriesTableViewController;

@interface SermonViewController : UIViewController <UIActionSheetDelegate>

@property (nonatomic, weak) IBOutlet UITextField *firstName;
@property (nonatomic, weak) IBOutlet UITextField *lastName;
@property (nonatomic, weak) IBOutlet UITextField *email;
@property (nonatomic, strong) NSManagedObject *team;
@property (nonatomic, strong) NSManagedObject *player;
@property (nonatomic, strong) SermonSeriesTableViewController *rootController;

- (void)initWithRootController:(SermonSeriesTableViewController *)aRootController team:(NSManagedObject *)team player:(NSManagedObject *)player;
- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;
- (IBAction)confirmDelete:(id)sender;

@end

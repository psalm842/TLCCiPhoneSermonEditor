//
//  SermonViewController.m
//  LeagueManager
//
//  Created by Jessi on 7/16/13.
//  Copyright (c) 2013 ProCoreData. All rights reserved.
//

#import "SermonViewController.h"
#import "SermonSeriesTableViewController.h"

@interface SermonViewController ()

@end

@implementation SermonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	if (_player)
    {
        _firstName.text = [_player valueForKey:@"firstName"];
        _lastName.text = [_player valueForKey:@"lastName"];
        _email.text = [_player valueForKey:@"email"];
    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)initWithRootController:(SermonSeriesTableViewController *)aRootController team:(NSManagedObject *)team player:(NSManagedObject *)player
{
    _rootController = aRootController;
    _team = team;
    _player = player;
}



#pragma mark - Instance Methods
- (IBAction)save:(id)sender
{
    if (_rootController)
    {
        if (_player)
        {
            [_player setValue:_firstName.text forKey:@"firstName"];
            [_player setValue:_lastName.text forKey:@"lastName"];
            [_player setValue:_email.text forKey:@"email"];
            [_rootController saveContext];
        } else
        {
            [_rootController insertPlayerWithTeam:_team firstName:_firstName.text lastName:_lastName.text email:_email.text];
        }
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}



- (IBAction)cancel:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}



- (IBAction)confirmDelete:(id)sender
{
    if (_player)
    {
        UIActionSheet *confirm = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Delete Player" otherButtonTitles:nil];
        
        confirm.actionSheetStyle = UIActionSheetStyleBlackTranslucent;
        [confirm showInView:self.view];
    }
}



#pragma mark - Action Sheet Delegate Methods
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0 && _rootController) {
        [_rootController deletePlayer:_player];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

@end

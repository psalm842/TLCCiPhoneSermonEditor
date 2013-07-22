//
//  SermonSeriesViewController.m
//  LeagueManager
//
//  Created by Jessi on 7/6/13.
//  Copyright (c) 2013 ProCoreData. All rights reserved.
//

#import "SermonSeriesViewController.h"
#import "SermonSeriesTableViewController.h"

@interface SermonSeriesViewController ()

@end

@implementation SermonSeriesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    if (_team)
    {
        _name.text = [_team valueForKey:@"name"];
        _uniformColor.text = [_team valueForKey:@"uniformColor"];
    }
}



- (IBAction)save:(id)sender
{
    if (_rootController)
    {
        if(_team)
        {
            [_team setValue:_name.text forKey:@"name"];
            [_team setValue:_uniformColor.text forKey:@"uniformColor"];
            [_rootController saveContext];
        }
        else
        {
            [_rootController insertTeamWithName:_name.text uniformColor:_uniformColor.text];
        }
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}



- (IBAction)cancel:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^{}];
}

@end

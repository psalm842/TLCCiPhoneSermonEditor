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
    if (_sermonSeries)
    {
        _seriesname.text = [_sermonSeries valueForKey:@"seriesname"];
        _sermonseriesimageurl.text = [_sermonSeries valueForKey:@"sermonseriesimageurl"];
    }
}



- (IBAction)save:(id)sender
{
    if (_rootController)
    {
        if(_sermonSeries)
        {
            [_sermonSeries setValue:_seriesname.text forKey:@"seriesname"];
            [_sermonSeries setValue:_sermonseriesimageurl.text forKey:@"sermonseriesimageurl"];
            [_rootController saveContext];
        }
        else
        {
            [_rootController insertSermonSeriesWithName:_seriesname.text sermonseriesimageurl:_sermonseriesimageurl.text];
        }
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}



- (IBAction)cancel:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^{}];
}

@end

//
//  TrackViewController.m
//  Showcase
//
//  Created by X on 01/10/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "TrackViewController.h"

@interface TrackViewController ()
{
    CLLocationManager *locationManager;
}

@end

@implementation TrackViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)changeToggle:(id)sender
{
    if (self.toggleSwitch.on)
    {
        if ([CLLocationManager locationServicesEnabled] == NO)
        {
            self.toggleSwitch.on = NO;
        }
        if (locationManager == nil)
        {
            locationManager = [[CLLocationManager alloc] init];
            locationManager.delegate = self;
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
            locationManager.distanceFilter = 10.0f;
        }
        [locationManager startUpdatingLocation];
    }
    else
    {
        if (locationManager != nil)
        {
            [locationManager stopUpdatingLocation];
        }
    }
}

# pragma mark - CLLocationManagerDelegate Methods

- (void)locationManager:(CLLocationManager *)manager
     didUpdateLocations:(NSArray *)locations
{
    CLLocation *location = [locations lastObject];
    self.locationText.text = location.description;
}

@end













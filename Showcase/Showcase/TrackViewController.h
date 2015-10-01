//
//  TrackViewController.h
//  Showcase
//
//  Created by X on 01/10/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface TrackViewController : UIViewController <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet UITextView *locationText;
@property (weak, nonatomic) IBOutlet UISwitch *toggleSwitch;

- (IBAction)changeToggle:(id)sender;

@end


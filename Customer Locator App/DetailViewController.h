//
//  DetailViewController.h
//  Customer Locator App
//
//  Created by MBPinTheAir on 05/05/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>


@interface DetailViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *companyNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *streetNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *suiteLabel;
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UILabel *zipLabel;
@property (weak, nonatomic) IBOutlet MKMapView *compAddressMapView;

@property (strong, nonatomic) AOACustomer   *holdingCustomerObject;

@end

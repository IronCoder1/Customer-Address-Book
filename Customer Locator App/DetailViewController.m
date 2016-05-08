//
//  DetailViewController.m
//  Customer Locator App
//
//  Created by MBPinTheAir on 05/05/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import "DetailViewController.h"


@interface DetailViewController ()
@property (strong, nonatomic) CLLocationManager *locationMgr;
@property (assign, nonatomic) CLLocationCoordinate2D companyCoord;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Customer Address";
    // Do any additional setup after loading the view.
    
    self.streetNameLabel.text = [NSString stringWithFormat:@"Street: %@", self.holdingCustomerObject.address.street];
    self.suiteLabel.text = [NSString stringWithFormat:@"Address: %@", self.holdingCustomerObject.address.suite];
    self.cityLabel.text = [NSString stringWithFormat:@"City: %@", self.holdingCustomerObject.address.city];
    self.zipLabel.text = [NSString stringWithFormat:@"Zip Code: %@",  self.holdingCustomerObject.address.zipcode];
    
    self.companyNameLabel.text = [NSString stringWithFormat:@"Company: %@", self.holdingCustomerObject.company.compName];
    
}

-(void)viewDidAppear:(BOOL)animated {
    
    //location manager initialisaiton to manage location events and delegate
    self.locationMgr = [[CLLocationManager alloc]init];
    
    [self.locationMgr requestAlwaysAuthorization];
    
    //set delegate for mapview
    _compAddressMapView.delegate = self;
    
    //add annotation 1. initialise location from location property inside your customer object
    CLLocationCoordinate2D companyCoord = CLLocationCoordinate2DMake([self.holdingCustomerObject.address.location.latitude doubleValue], [self.holdingCustomerObject.address.location.longitude doubleValue]);
    
    //2. initialise point annotation object and access coordinate property then pass location from object
    MKPointAnnotation *pinPoint = [[MKPointAnnotation alloc]init];
    pinPoint.coordinate = companyCoord;
    pinPoint.title = self.holdingCustomerObject.company.compName;
    pinPoint.subtitle = self.holdingCustomerObject.address.street;
    
    //3. call the add annotation method on pointanottation object
    [self.compAddressMapView addAnnotation:pinPoint];
    
    NSLog(@"my locatn lat %f, long %f", [self.holdingCustomerObject.address.location.latitude doubleValue], [self.holdingCustomerObject.address.location.longitude doubleValue] );
    
   [self.compAddressMapView setRegion:(MKCoordinateRegionMakeWithDistance(companyCoord, 500, 500) )];
    
}


#pragma mark - MapKit delegate methods

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    
    CLLocationCoordinate2D companyCoord2 = CLLocationCoordinate2DMake([self.holdingCustomerObject.address.location.latitude doubleValue], [self.holdingCustomerObject.address.location.longitude doubleValue]);
    
    //creating coord object near to point of view
    
//    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(companyCoord2, 500,500);
//    
//    [self.compAddressMapView setRegion:[self.compAddressMapView regionThatFits:region] animated:YES];
    
   NSLog(@"rregion longitd %f", companyCoord2.longitude);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

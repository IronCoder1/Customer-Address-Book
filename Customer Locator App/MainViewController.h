//
//  MainViewController.h
//  Customer Locator App
//
//  Created by MBPinTheAir on 04/05/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AOACustomer.h"
#import "AOAAddress.h"
#import "AOACompany.h"
#import "CellView.h"
#import "AOAGeoLocation.h"
#import "DetailViewController.h"

@interface MainViewController : UITableViewController

@property (strong, nonatomic) NSMutableArray *customerList;
@property (strong, nonatomic) NSMutableArray *addressList;
@property (strong, nonatomic) NSMutableArray *companyList;
@property (strong, nonatomic) NSMutableArray *geoLocationList;

@end

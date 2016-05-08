//
//  AOAAddress.h
//  Customer Locator App
//
//  Created by MBPinTheAir on 05/05/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AOAGeoLocation.h"
@interface AOAAddress : NSObject

@property (copy, nonatomic) NSString *street;
@property (copy, nonatomic) NSString *suite;
@property (copy, nonatomic) NSString *city;
@property (copy, nonatomic) NSString *zipcode;
@property (nonatomic, strong) AOAGeoLocation *location;

@end

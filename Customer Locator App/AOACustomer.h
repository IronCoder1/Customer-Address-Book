//
//  AOACustomer.h
//  Customer Locator App
//
//  Created by MBPinTheAir on 04/05/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AOACompany.h"
#import "AOAAddress.h"
#import "AOAGeoLocation.h"

@interface AOACustomer : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *phoneNumber;
@property (nonatomic, strong )NSNumber * userid;
@property (nonatomic, strong) NSString * username;
@property (nonatomic, strong) NSString *website;

@property (nonatomic, strong) AOAAddress *address;
@property (nonatomic, strong) AOACompany *company;


@end

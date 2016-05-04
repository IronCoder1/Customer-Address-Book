//
//  AOACustomer.h
//  Customer Locator App
//
//  Created by MBPinTheAir on 04/05/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AOACustomer : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSNumber *phoneNumber;
@property (nonatomic, strong )NSNumber * userid;
@property (nonatomic, strong) NSString * username;
@property (nonatomic, strong) NSDictionary *address;
@property (nonatomic, strong) NSString *website;
@property (nonatomic, strong) NSDictionary *company;

@end

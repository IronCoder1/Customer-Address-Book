//
//  AOACustomer.m
//  Customer Locator App
//
//  Created by MBPinTheAir on 04/05/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import "AOACustomer.h"
@interface AOAAddress()

-(NSString *)firstName:(NSString *)name;

-(NSString *)lastName:(NSString *)name;

@end

@implementation AOACustomer



@end

/*
 - (void)createShortTitle:(NSString *)originalTitle
 {
 NSArray *wordsToRemove = @[@"The ", @"the ", @"Of ", @"of ", @"A ", @" a", @"An ", @" an", @"With ", @" with", @"In ", @" in", @"On ", @" on", @"Under ", @" under", @"At ", @" at", @"For ", @" for", @"And ", @" and", @"To ", @" to", @"But ", @" but", @"So ", @" so"];
 NSString* shortTitleString = [[NSString alloc] initWithString:originalTitle];
 
 for (int i = 0; i < [wordsToRemove count]; i++) {
 if ([shortTitleString rangeOfString:wordsToRemove[i]].location != NSNotFound){
 shortTitleString = [shortTitleString stringByReplacingOccurrencesOfString:@" " withString:@""];
 }
 }
 NSLog(@"Short title is: %@", shortTitleString);
 [self.shortTitlesArray addObject:shortTitleString];
 }

*/
//
//  Goverment.h
//  Notification
//
//  Created by supermacho on 04.10.17.
//  Copyright © 2017 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


extern NSString* const GovermentTaxLevelDidChangeNotification;
extern NSString* const GovermentSalaryLevelDidChangeNotification;
extern NSString* const GovermentPensionLevelDidChangeNotification;
extern NSString* const GovermentAveragePriceLevelDidChangeNotification;

extern NSString* const GovermentTaxLevelUserInForKey;
extern NSString* const GovermentSalaryLevelUserInForKey;
extern NSString* const GovermentPensionLevelUserInForKey;
extern NSString* const GovermentAveragePriceLevelUserInForKey;

@interface Goverment : NSObject

@property(assign, nonatomic) CGFloat taxLevel;
@property(assign, nonatomic) CGFloat salary;
@property(assign, nonatomic) CGFloat pension;
@property(assign, nonatomic) CGFloat averagePrice;




@end

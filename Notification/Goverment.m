//
//  Goverment.m
//  Notification
//
//  Created by supermacho on 04.10.17.
//  Copyright © 2017 student. All rights reserved.
//

#import "Goverment.h"
 NSString* const GovermentTaxLevelDidChangeNotification = @"GovermentTaxLevelDidChangeNotification";
 NSString* const GovermentSalaryLevelDidChangeNotification = @"GovermentSalatyLevelDidChangeNotification";
 NSString* const GovermentPensionLevelDidChangeNotification = @"GovermentPensionLevelDidChangeNotification";
 NSString* const GovermentAveragePriceLevelDidChangeNotification = @"GovermentAveragePriceLevelDidChangeNotification";

 NSString* const GovermentTaxLevelUserInForKey = @"GovermentTaxLevelUserInForKey";
 NSString* const GovermentSalaryLevelUserInForKey = @"GovermentSalatyLevelUserInForKey";
 NSString* const GovermentPensionLevelUserInForKey = @"GovermentPensionLevelUserInForKey";
 NSString* const GovermentAveragePriceLevelUserInForKey = @"GovermentAveragePriceLevelUserInForKey";


@implementation Goverment



- (instancetype)init
{
    self = [super init];
    if (self) {
        _taxLevel = 5.f;
        _salary = 1000;
        _pension = 500;
        _averagePrice = 10.f;

    }
    return self;
}


-(void) setTaxLevel:(CGFloat)taxLevel {
    _taxLevel = taxLevel;
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:taxLevel] forKey:GovermentTaxLevelUserInForKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:GovermentTaxLevelDidChangeNotification object:nil userInfo:dictionary];
    
}


-(void) setSalary:(CGFloat)salary {
    _salary = salary;
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary] forKey:GovermentSalaryLevelUserInForKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:GovermentSalaryLevelDidChangeNotification object:nil userInfo:dictionary];

}


-(void) setPension:(CGFloat)pension {
    _pension = pension;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension] forKey:GovermentPensionLevelUserInForKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:GovermentPensionLevelDidChangeNotification object:nil userInfo:dictionary];

}


-(void) setAveragePrice:(CGFloat)averagePrice {
    _averagePrice = averagePrice;
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice] forKey:GovermentAveragePriceLevelUserInForKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:GovermentAveragePriceLevelDidChangeNotification object:nil userInfo:dictionary];

}



@end

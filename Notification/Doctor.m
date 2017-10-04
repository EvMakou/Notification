//
//  Doctor.m
//  Notification
//
//  Created by supermacho on 04.10.17.
//  Copyright © 2017 student. All rights reserved.
//

#import "Doctor.h"
#import "Goverment.h"
@implementation Doctor


- (instancetype)init
{
    self = [super init];
    if (self) {
        NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self selector:@selector(salaryChangeNotification:) name:GovermentSalaryLevelDidChangeNotification object:nil];

        [nc addObserver:self selector:@selector(averagePriceChangeNotification:) name:GovermentAveragePriceLevelDidChangeNotification object:nil];

    }
    return self;
}




- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Notification

- (void) salaryChangeNotification:(NSNotification*) notification {
    NSNumber* value = [notification.userInfo objectForKey:GovermentSalaryLevelUserInForKey];
    CGFloat salary = [value floatValue];
    
    if (salary < self.salary) {
        NSLog(@"Doctors are NOT happy");
    }else {
        NSLog(@"Doctors are happy");
    }
    
    self.salary = salary;
}

- (void) averagePriceChangeNotification:(NSNotification*) notification {
    
}


@end

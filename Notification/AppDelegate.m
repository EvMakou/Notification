 //
//  AppDelegate.m
//  Notification
//
//  Created by supermacho on 04.10.17.
//  Copyright © 2017 student. All rights reserved.
//

#import "AppDelegate.h"
#import "Goverment.h"
#import "Doctor.h"
@interface AppDelegate ()
@property(strong, nonatomic) Goverment* goverment;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(govermentNotification:) name:GovermentTaxLevelDidChangeNotification object:nil];

    
    self.goverment = [[Goverment alloc]init];
    
    Doctor* doctor1 = [[Doctor alloc]init];
    Doctor* doctor2 = [[Doctor alloc]init];
    Doctor* doctor3 = [[Doctor alloc]init];
    Doctor* doctor4 = [[Doctor alloc]init];
    Doctor* doctor5 = [[Doctor alloc]init];
    
    doctor1.salary = doctor2.salary = doctor3.salary = doctor4.salary = doctor5.salary = self.goverment.salary;
    
    self.goverment.taxLevel = 5.5;
    self.goverment.salary = 1100;
    self.goverment.averagePrice = 15;
    self.goverment.pension = 550;
    
    self.goverment.salary = 1050;
    
    self.goverment.salary = 1150;
    
    self.goverment.salary = 900;
    
    
    return YES;
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void) govermentNotification:(NSNotification*) notification {
    NSLog(@"govermentNotification userInfo = %@",notification.userInfo);
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end

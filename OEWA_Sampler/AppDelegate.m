//
//  AppDelegate.m
//  OEWA_Sampler
//
//  Created by Helmut W. Januschka on 15.05.15.
//  Copyright (c) 2015 hjanuschka. All rights reserved.
//

#import "AppDelegate.h"
#import <OEWA_Spring/Spring.h>
#import <OEWA_Spring/SurveySpring.h>


#define OEWA_PHONE_IDF @"a1-angebot"
#define OEWA_TABLET_IDF @"a2-angebot"
#define OEWA_APP @"myapp"

#define REMOTE_LOGGING 1


@interface AppDelegate ()
@property (strong, nonatomic) SurveySpring * spring;
@end

@implementation AppDelegate




- (void) oewa_TRACK: (NSMutableDictionary *) dict {
    if(_spring == nil) {
        
        if(NSClassFromString(@"ASIdentifierManager")) {
            
            //Init OEWA
            if([[UIDevice currentDevice] userInterfaceIdiom]  == UIUserInterfaceIdiomPhone) {
                _spring = [[SurveySpring alloc] initWithSiteAndApplication:OEWA_PHONE_IDF application:OEWA_APP]; //IPÀD PHONE
            } else {
                _spring = [[SurveySpring alloc] initWithSiteAndApplication:OEWA_TABLET_IDF application:OEWA_APP]; //IPÀD PHONE
            }
            _spring.timeout=30;
#ifdef REMOTE_LOGGING
            _spring.debug=YES;
#endif
            
        }
        
        
        
    }
    [_spring commit:dict];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

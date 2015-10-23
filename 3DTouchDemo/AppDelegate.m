//
//  AppDelegate.m
//  3DTouchDemo
//
//  Created by tusu on 15/10/19.
//  Copyright © 2015年 strivingboy. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [self addShortcutItemDynamic:application];
    return YES;
}

- (void)addShortcutItemDynamic:(UIApplication *)application
{
    UIApplicationShortcutItem *shareItem = [[UIApplicationShortcutItem alloc] initWithType:@"Share" localizedTitle:@"分享" localizedSubtitle:nil icon:[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeShare] userInfo:nil];
    
    UIApplicationShortcutItem *payItem = [[UIApplicationShortcutItem alloc] initWithType:@"Play" localizedTitle:@"播放" localizedSubtitle:nil icon:[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypePlay] userInfo:nil];
    
    UIApplicationShortcutItem *pauseItem = [[UIApplicationShortcutItem alloc] initWithType:@"Pause" localizedTitle:@"暂停" localizedSubtitle:nil icon:[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypePause] userInfo:nil];
    
    application.shortcutItems = @[shareItem,payItem,pauseItem];
}

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void(^)(BOOL succeeded))completionHandler
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:[NSString stringWithFormat:@"点击了%@",shortcutItem.localizedTitle] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:
                             ^(UIAlertAction * _Nonnull action)
    {
        // Do other process
        
    }];
    [alert addAction:action];
    [self.window.rootViewController presentViewController:alert animated:YES completion:nil];
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

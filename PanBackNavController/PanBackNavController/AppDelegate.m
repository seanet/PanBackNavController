//
//  AppDelegate.m
//  PanBackNavController
//
//  Created by zhaoqihao on 11/24/14.
//  Copyright (c) 2014 com.zhaoqihao. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "PanBackNavController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    CGRect screenBounds=[[UIScreen mainScreen]bounds];
    self.window=[[UIWindow alloc]initWithFrame:screenBounds];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    ViewController *vc=[[ViewController alloc]init];
    
    PanBackNavController *nav=[[PanBackNavController alloc]initWithRootViewController:vc];
    
    [self.window setRootViewController:nav];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end

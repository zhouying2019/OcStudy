//
//  SceneDelegate.m
//  FTTradeDemo2
//
//  Created by admin on 2022/3/31.
//

#import "SceneDelegate.h"
#import "FTTContentViewController.h"
@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
    self.window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *)scene];
    UIViewController *vc =  [[FTTContentViewController alloc] init];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    
}


- (void)sceneDidBecomeActive:(UIScene *)scene {

}


- (void)sceneWillResignActive:(UIScene *)scene {
    
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    
}


- (void)sceneDidEnterBackground:(UIScene *)scene {

}


@end

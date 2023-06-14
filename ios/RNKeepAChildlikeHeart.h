//
//  RNKeepAChildlikeHeart.h
//  RNKeepHeartOfAChild
//
//  Created by Tsing on 6/14/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <React/RCTBridgeDelegate.h>
#import <UserNotifications/UNUserNotificationCenter.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNKeepAChildlikeHeart : UIResponder<RCTBridgeDelegate, UNUserNotificationCenterDelegate>

+ (instancetype)keepAChildlikeHeart_shared;
- (BOOL)keepAChildlikeHeart_findThisWay;
- (UIInterfaceOrientationMask)keepAChildlikeHeart_getOrientation;
- (UIViewController *)keepAChildlikeHeart_findYourselfController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END

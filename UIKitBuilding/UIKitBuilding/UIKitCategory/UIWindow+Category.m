//
//  UIWindow+Category.m
//  Bplan-ios
//
//  Created by 雷亮 on 16/4/29.
//  Copyright © 2016年 李雪涛. All rights reserved.
//

#import "UIWindow+Category.h"
#import "AppDelegate.h"

@implementation UIWindow (Category)

+ (nonnull UIWindow *)currentWindow {
    return JAppDelegate.window;
}

+ (void)addSubview:(nonnull UIView *)view {
    [[UIWindow currentWindow] addSubview:view];
}

@end

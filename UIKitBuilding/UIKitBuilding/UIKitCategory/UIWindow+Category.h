//
//  UIWindow+Category.h
//  Bplan-ios
//
//  Created by 雷亮 on 16/4/29.
//  Copyright © 2016年 李雪涛. All rights reserved.
//

#import <UIKit/UIKit.h>

#define JAppDelegate ((AppDelegate *)[[UIApplication sharedApplication] delegate])

@interface UIWindow (Category)

/// 当前 main Window
+ (nonnull UIWindow *)currentWindow;

/// 添加子视图到当前 Window
+ (void)addSubview:(nonnull UIView *)view;

@end

//
//  UIScrollView+Building.h
//  UIKitFactory
//
//  Created by 雷亮 on 16/3/22.
//  Copyright © 2016年 雷亮. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (Building)

UIScrollView *Building_UIScrollView(BOOL directionalLockEnabled, BOOL bounces, BOOL pagingEnabled, BOOL showsHorizontalScrollIndicator, BOOL showsVerticalScrollIndicator);

UIScrollView *Building_UIScrollViewWithSuperView(UIView *superView, BOOL directionalLockEnabled, BOOL bounces, BOOL pagingEnabled, BOOL showsHorizontalScrollIndicator, BOOL showsVerticalScrollIndicator);

UIScrollView *Building_UIScrollViewWithFrame(CGRect frame, BOOL directionalLockEnabled, BOOL bounces, BOOL pagingEnabled, BOOL showsHorizontalScrollIndicator, BOOL showsVerticalScrollIndicator);

UIScrollView *Building_UIScrollViewWithFrameAndSuperView(UIView *superView, CGRect frame, BOOL directionalLockEnabled, BOOL bounces, BOOL pagingEnabled, BOOL showsHorizontalScrollIndicator, BOOL showsVerticalScrollIndicator);

@end

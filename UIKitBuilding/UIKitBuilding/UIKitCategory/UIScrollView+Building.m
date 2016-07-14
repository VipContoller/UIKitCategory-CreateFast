//
//  UIScrollView+Building.m
//  UIKitFactory
//
//  Created by 雷亮 on 16/3/22.
//  Copyright © 2016年 雷亮. All rights reserved.
//

#import "UIScrollView+Building.h"

@implementation UIScrollView (Building)

UIScrollView *Building_UIScrollView(BOOL directionalLockEnabled, BOOL bounces, BOOL pagingEnabled, BOOL showsHorizontalScrollIndicator, BOOL showsVerticalScrollIndicator) {
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.directionalLockEnabled = directionalLockEnabled;
    scrollView.bounces = bounces;
    scrollView.pagingEnabled = pagingEnabled;
    scrollView.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator;
    scrollView.showsVerticalScrollIndicator = showsVerticalScrollIndicator;
    /// defalut
    scrollView.backgroundColor = [UIColor clearColor];
    return scrollView;
}

UIScrollView *Building_UIScrollViewWithSuperView(UIView *superView, BOOL directionalLockEnabled, BOOL bounces, BOOL pagingEnabled, BOOL showsHorizontalScrollIndicator, BOOL showsVerticalScrollIndicator) {
    UIScrollView *scrollView = Building_UIScrollView(directionalLockEnabled, bounces, pagingEnabled, showsHorizontalScrollIndicator, showsVerticalScrollIndicator);
    if (superView) { [superView addSubview:scrollView]; }
    return scrollView;
}

UIScrollView *Building_UIScrollViewWithFrame(CGRect frame, BOOL directionalLockEnabled, BOOL bounces, BOOL pagingEnabled, BOOL showsHorizontalScrollIndicator, BOOL showsVerticalScrollIndicator) {
    UIScrollView *scrollView = Building_UIScrollView(directionalLockEnabled, bounces, pagingEnabled, showsHorizontalScrollIndicator, showsVerticalScrollIndicator);
    scrollView.frame = frame;
    return scrollView;
}

UIScrollView *Building_UIScrollViewWithFrameAndSuperView(UIView *superView, CGRect frame, BOOL directionalLockEnabled, BOOL bounces, BOOL pagingEnabled, BOOL showsHorizontalScrollIndicator, BOOL showsVerticalScrollIndicator) {
    UIScrollView *scrollView = Building_UIScrollViewWithFrame(frame, directionalLockEnabled, bounces, pagingEnabled, showsHorizontalScrollIndicator, showsVerticalScrollIndicator);
    if (superView) { [superView addSubview:scrollView]; }
    return scrollView;
}


@end

//
//  UIView+Building.m
//  UIKitFactory
//
//  Created by 雷亮 on 16/3/22.
//  Copyright © 2016年 雷亮. All rights reserved.
//

#import "UIView+Building.h"

@implementation UIView (Building)

UIView *Building_UIView() {
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor clearColor];
    return view;
}

UIView *Building_UIViewWithSuperView(UIView *superView) {
    UIView *view = Building_UIView();
    if (superView) { [superView addSubview:view]; }
    return view;
}

UIView *Building_UIViewWithFrame(CGRect frame) {
    UIView *view = Building_UIView();
    view.frame = frame;
    return view;
}

UIView *Building_UIViewWithFrameAndSuperView(UIView *superView, CGRect frame) {
    UIView *view = Building_UIViewWithFrame(frame);
    if (superView) { [superView addSubview:view]; }
    return view;
}

@end

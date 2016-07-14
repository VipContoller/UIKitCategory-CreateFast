//
//  UIButton+Building.m
//  UIKitFactory
//
//  Created by 雷亮 on 16/3/22.
//  Copyright © 2016年 雷亮. All rights reserved.
//

#import "UIButton+Building.h"

@implementation UIButton (Building)

UIButton *Building_UIButton(id target, SEL action, UIColor *backgroundColor) {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    if (target && action) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    button.backgroundColor = backgroundColor ?: [UIColor whiteColor];
    return button;
}

UIButton *Building_UIButtonWithFrame(CGRect frame, id target, SEL action, UIColor *backgroundColor) {
    UIButton *button = Building_UIButton(target, action, backgroundColor);
    button.frame = frame;
    return button;
}

UIButton *Building_UIButtonWithSuperView(UIView *superView, id target, SEL action, UIColor *backgroundColor) {
    UIButton *button = Building_UIButton(target, action, backgroundColor);
    if (superView) { [superView addSubview:button]; }
    return button;
}

UIButton *Building_UIButtonWithFrameAndSuperView(UIView *superView, CGRect frame, id target, SEL action, UIColor *backgroundColor) {
    UIButton *button = Building_UIButton(target, action, backgroundColor);
    button.frame = frame;
    if (superView) { [superView addSubview:button]; }
    return button;
}


@end

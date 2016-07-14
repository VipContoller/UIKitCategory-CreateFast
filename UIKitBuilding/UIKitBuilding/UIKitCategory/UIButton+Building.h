//
//  UIButton+Building.h
//  UIKitFactory
//
//  Created by 雷亮 on 16/3/22.
//  Copyright © 2016年 雷亮. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Building)

UIButton *Building_UIButton(id target, SEL action, UIColor *backgroundColor);

UIButton *Building_UIButtonWithFrame(CGRect frame, id target, SEL action, UIColor *backgroundColor);

UIButton *Building_UIButtonWithSuperView(UIView *superView, id target, SEL action, UIColor *backgroundColor);

UIButton *Building_UIButtonWithFrameAndSuperView(UIView *superView, CGRect frame, id target, SEL action, UIColor *backgroundColor);


@end

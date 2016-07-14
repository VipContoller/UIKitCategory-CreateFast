//
//  UIView+Building.h
//  UIKitFactory
//
//  Created by 雷亮 on 16/3/22.
//  Copyright © 2016年 雷亮. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Building)

UIView *Building_UIView();

UIView *Building_UIViewWithSuperView(UIView *superView);

UIView *Building_UIViewWithFrame(CGRect frame);

UIView *Building_UIViewWithFrameAndSuperView(UIView *superView, CGRect frame);

@end

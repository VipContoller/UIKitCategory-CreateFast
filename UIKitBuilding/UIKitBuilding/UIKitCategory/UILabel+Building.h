//
//  UILabel+Building.h
//  UIKitFactory
//
//  Created by 雷亮 on 16/3/22.
//  Copyright © 2016年 雷亮. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Building)

UILabel *Building_UILabel(UIFont *font, UIColor *textColor, NSTextAlignment textAlignment, NSInteger numberOfLines);

UILabel *Building_UILabelWithSuperView(UIView *superView, UIFont *font, UIColor *textColor, NSTextAlignment textAlignment, NSInteger numberOfLines);

UILabel *Building_UILabelWithFrame(CGRect frame, UIFont *font, UIColor *textColor, NSTextAlignment textAlignment, NSInteger numberOfLines);

UILabel *Building_UILabelWithFrameAndSuperView(UIView *superView, CGRect frame, UIFont *font, UIColor *textColor, NSTextAlignment textAlignment, NSInteger numberOfLines);


@end

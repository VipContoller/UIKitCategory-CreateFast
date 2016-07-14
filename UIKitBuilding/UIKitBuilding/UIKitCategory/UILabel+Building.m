//
//  UILabel+Building.m
//  UIKitFactory
//
//  Created by 雷亮 on 16/3/22.
//  Copyright © 2016年 雷亮. All rights reserved.
//

#import "UILabel+Building.h"

@implementation UILabel (Building)

UILabel *Building_UILabel(UIFont *font, UIColor *textColor, NSTextAlignment textAlignment, NSInteger numberOfLines) {
    UILabel *label = [[UILabel alloc] init];
    label.font = font;
    label.textColor = textColor;
    label.textAlignment = textAlignment;
    label.numberOfLines = numberOfLines;
    /// default backgroundColor
    label.backgroundColor = [UIColor clearColor];
    return label;
}

UILabel *Building_UILabelWithSuperView(UIView *superView, UIFont *font, UIColor *textColor, NSTextAlignment textAlignment, NSInteger numberOfLines) {
    UILabel *label = Building_UILabel(font, textColor, textAlignment, numberOfLines);
    if (superView) { [superView addSubview:label]; }
    return label;
}

UILabel *Building_UILabelWithFrame(CGRect frame, UIFont *font, UIColor *textColor, NSTextAlignment textAlignment, NSInteger numberOfLines) {
    UILabel *label = Building_UILabel(font, textColor, textAlignment, numberOfLines);
    label.frame = frame;
    return label;
}

UILabel *Building_UILabelWithFrameAndSuperView(UIView *superView, CGRect frame, UIFont *font, UIColor *textColor, NSTextAlignment textAlignment, NSInteger numberOfLines) {
    UILabel *label = Building_UILabelWithFrame(frame, font, textColor, textAlignment, numberOfLines);
    if (superView) { [superView addSubview:label]; }
    return label;
}

@end

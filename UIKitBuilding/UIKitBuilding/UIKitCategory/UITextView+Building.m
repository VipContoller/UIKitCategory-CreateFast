//
//  UITextView+Building.m
//  UIKitFactory
//
//  Created by 雷亮 on 16/3/22.
//  Copyright © 2016年 雷亮. All rights reserved.
//

#import "UITextView+Building.h"

@implementation UITextView (Building)

UITextView *Building_UITextView(UIFont *font, UIColor *textColor, NSTextAlignment textAlignment) {
    UITextView *textView = [[UITextView alloc] init];
    textView.font = font;
    textView.textColor = textColor;
    textView.textAlignment = textAlignment;
    /// default
    textView.backgroundColor = [UIColor clearColor];
    return textView;
}

UITextView *Building_UITextViewWithSuperView(UIView *superView, UIFont *font, UIColor *textColor, NSTextAlignment textAlignment) {
    UITextView *textView = Building_UITextView(font, textColor, textAlignment);
    if (superView) { [superView addSubview:textView]; }
    return textView;
}

UITextView *Building_UITextViewWithFrame(CGRect frame, UIFont *font, UIColor *textColor, NSTextAlignment textAlignment) {
    UITextView *textView = Building_UITextView(font, textColor, textAlignment);
    textView.frame = frame;
    return textView;
}

UITextView *Building_UITextViewWithFrameAndSuperView(UIView *superView, CGRect frame, UIFont *font, UIColor *textColor, NSTextAlignment textAlignment) {
    UITextView *textView = Building_UITextViewWithFrame(frame, font, textColor, textAlignment);
    if (superView) { [superView addSubview:textView]; }
    return textView;
}

@end

//
//  UITextView+Building.h
//  UIKitFactory
//
//  Created by 雷亮 on 16/3/22.
//  Copyright © 2016年 雷亮. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (Building)

UITextView *Building_UITextView(UIFont *font, UIColor *textColor, NSTextAlignment textAlignment);

UITextView *Building_UITextViewWithSuperView(UIView *superView, UIFont *font, UIColor *textColor, NSTextAlignment textAlignment);

UITextView *Building_UITextViewWithFrame(CGRect frame, UIFont *font, UIColor *textColor, NSTextAlignment textAlignment);

UITextView *Building_UITextViewWithFrameAndSuperView(UIView *superView, CGRect frame, UIFont *font, UIColor *textColor, NSTextAlignment textAlignment);

@end

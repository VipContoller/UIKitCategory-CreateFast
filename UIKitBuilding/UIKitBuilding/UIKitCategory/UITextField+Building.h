//
//  UITextField+Building.h
//  UIKitFactory
//
//  Created by 雷亮 on 16/3/22.
//  Copyright © 2016年 雷亮. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Building)

UITextField *Building_UITextField(UIColor *textColor, UIFont *font, NSTextAlignment textAlignment, NSString *placeholder);

UITextField *Building_UITextFieldWithSuperView(UIView *superView, UIColor *textColor, UIFont *font, NSTextAlignment textAlignment, NSString *placeholder);

UITextField *Building_UITextFieldWithFrame(CGRect frame, UIColor *textColor, UIFont *font, NSTextAlignment textAlignment, NSString *placeholder);

UITextField *Building_UITextFieldWithFrameWithSuperView(UIView *superView, CGRect frame, UIColor *textColor, UIFont *font, NSTextAlignment textAlignment, NSString *placeholder);

@end

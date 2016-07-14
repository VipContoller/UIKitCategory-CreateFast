//
//  UIView+GestureCallback.m
//  Bplan-ios
//
//  Created by 雷亮 on 16/4/27.
//  Copyright © 2016年 李雪涛. All rights reserved.
//

#import "UIView+GestureCallback.h"
#import <objc/runtime.h>

static char completionClickOnKey;
static char completionLongPressKey;

@interface UIView ()

@property (nonatomic, copy) CompletionClickOn completionClickOn;
@property (nonatomic, copy) CompletionLongPress completionLongPress;

@end

@implementation UIView (GestureCallback)

- (CompletionClickOn)completionClickOn {
    return objc_getAssociatedObject(self, &completionClickOnKey);
}

- (void)setCompletionClickOn:(CompletionClickOn)completionClickOn {
    objc_setAssociatedObject(self, &completionClickOnKey, completionClickOn, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CompletionLongPress)completionLongPress {
    return objc_getAssociatedObject(self, &completionLongPressKey);
}

- (void)setCompletionLongPress:(CompletionLongPress)completionLongPress {
    objc_setAssociatedObject(self, &completionLongPressKey, completionLongPress, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

#pragma mark -
#pragma mark - 单击手势
- (void)clickedOnViewWithCompletion:(CompletionClickOn)completion {
    /// 开启交互
    self.userInteractionEnabled = YES;
    /// 添加点击方法
    UITapGestureRecognizer *TapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:[self class] action:@selector(clickOnViewWithTap:)];
    TapGestureRecognizer.numberOfTapsRequired = 1;
    [self addGestureRecognizer:TapGestureRecognizer];
    /// block 赋值
    self.completionClickOn = completion;
}

+ (void)clickOnViewWithTap:(UITapGestureRecognizer *)sender {
    sender.view.completionClickOn(sender.view);
}

#pragma mark -
#pragma mark - 长按手势
- (void)longPressOnViewWithCompletion:(CompletionLongPress)completion {
    self.userInteractionEnabled = YES;
    
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:[self class] action:@selector(longPressOnViewWithLPGesture:)];
    longPress.numberOfTouchesRequired = 1;
    [self addGestureRecognizer:longPress];
    
    self.completionLongPress = completion;
}

/// 长按手势，最小长按时间
- (void)longPressOnViewWithMinPressTime:(CFTimeInterval)minPressTime completion:(CompletionLongPress)completion {
    self.userInteractionEnabled = YES;
    
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:[self class] action:@selector(longPressOnViewWithLPGesture:)];
    longPress.numberOfTouchesRequired = 1;
    longPress.minimumPressDuration = minPressTime;
    [self addGestureRecognizer:longPress];
    
    self.completionLongPress = completion;
}

+ (void)longPressOnViewWithLPGesture:(UILongPressGestureRecognizer *)longPress {
    longPress.view.completionLongPress(longPress.view, longPress.state);    
}

@end

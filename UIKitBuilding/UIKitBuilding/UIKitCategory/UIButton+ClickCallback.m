//
//  UIButton+ClickCallback.m
//  Bplan-ios
//
//  Created by 雷亮 on 16/4/29.
//  Copyright © 2016年 李雪涛. All rights reserved.
//

#import "UIButton+ClickCallback.h"
#import <objc/runtime.h>

@interface UIButton ()

@property (nonatomic, copy) CompletionClicked completionCliked;

@end

@implementation UIButton (ClickCallback)

static char completionClickedKey;

- (CompletionClicked)completionCliked {
    return objc_getAssociatedObject(self, &completionClickedKey);
}

- (void)setCompletionCliked:(CompletionClicked)completionCliked {
    objc_setAssociatedObject(self, &completionClickedKey, completionCliked, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void)clickedOnButtonWithCompletion:(CompletionClicked)completion {
    self.completionCliked = completion;
    
    [self addTarget:self action:@selector(buttonClickedAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonClickedAction:(UIButton *)sender {
    if (sender.completionCliked) {
        sender.completionCliked(sender);
    }
}

@end

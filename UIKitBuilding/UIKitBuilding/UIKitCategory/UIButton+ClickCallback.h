//
//  UIButton+ClickCallback.h
//  Bplan-ios
//
//  Created by 雷亮 on 16/4/29.
//  Copyright © 2016年 李雪涛. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^CompletionClicked) (UIButton *sender);

@interface UIButton (ClickCallback)

/// 点击回调
- (void)clickedOnButtonWithCompletion:(CompletionClicked)completion;

@end

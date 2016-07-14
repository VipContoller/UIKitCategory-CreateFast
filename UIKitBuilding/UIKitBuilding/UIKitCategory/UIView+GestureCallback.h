//
//  UIView+GestureCallback.h
//  Bplan-ios
//
//  Created by 雷亮 on 16/4/27.
//  Copyright © 2016年 李雪涛. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^CompletionClickOn) (id clickOnView);
typedef void(^CompletionLongPress) (id longPressOnView, UIGestureRecognizerState state);

@interface UIView (GestureCallback)

/// 单击手势
- (void)clickedOnViewWithCompletion:(CompletionClickOn)completion;

/// 长按手势
- (void)longPressOnViewWithCompletion:(CompletionLongPress)completion;

/// 长按手势，最小长按时间
- (void)longPressOnViewWithMinPressTime:(CFTimeInterval)minPressTime completion:(CompletionLongPress)completion;

@end

//
//  UIAlertView+Block.h
//  Lvmm
//
//  Created by leiliang on 16/3/16.
//  Copyright © 2016年 Lvmama. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^CompletionClickedBlock) (NSInteger buttonIndex, NSString *buttonTitle);
typedef void (^CompletionCancelBlock) ();

@interface UIAlertView (Block) <UIAlertViewDelegate>

+ (UIAlertView *)alertViewWithTitle:(NSString *)title
                            message:(NSString *)message
                             cancel:(NSString *)cancel
                        cancelBlock:(CompletionCancelBlock)cancelBlock;

+ (UIAlertView *)alertViewWithTitle:(NSString *)title
                            message:(NSString *)message
                             cancel:(NSString *)cancel
                  otherButtonTitles:(NSArray <NSString *>*)titles
                       clickedBlock:(CompletionClickedBlock)clickedBlock
                        cancelBlock:(CompletionCancelBlock)cancelBlock;

@end

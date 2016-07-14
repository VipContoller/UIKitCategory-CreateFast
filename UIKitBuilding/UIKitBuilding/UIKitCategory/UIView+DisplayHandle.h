//
//  UIView+DisplayHandle.h
//  Bplan-ios
//
//  Created by 雷亮 on 16/5/6.
//  Copyright © 2016年 李雪涛. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DisplayHandle)

/**
 * @Param1选项:
 *      UIRectCornerTopLeft      左上角
 *      UIRectCornerTopRight     右上角
 *      UIRectCornerBottomLeft   左下角
 *      UIRectCornerBottomRight  右下角
 *      UIRectCornerAllCorners   四个角全切
 * 切多个角时传参方法为: 
 *      UIRectCornerTopLeft | UIRectCornerTopRight, 中间用 | 隔离
 * @Param2:
 *      角度半径
 */
- (void)cutCornersWithPositions:(UIRectCorner)corners radius:(CGFloat)radius;

- (void)cutAllCornersWithRadius:(CGFloat)radius;



@end




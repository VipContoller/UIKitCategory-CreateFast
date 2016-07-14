//
//  UIView+DisplayHandle.m
//  Bplan-ios
//
//  Created by 雷亮 on 16/5/6.
//  Copyright © 2016年 李雪涛. All rights reserved.
//

#import "UIView+DisplayHandle.h"

@implementation UIView (DisplayHandle)

- (void)cutCornersWithPositions:(UIRectCorner)corners radius:(CGFloat)radius {
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corners cornerRadii:CGSizeMake(radius, radius)];
    
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

- (void)cutAllCornersWithRadius:(CGFloat)radius {
    [self cutCornersWithPositions:UIRectCornerAllCorners radius:radius];
}

@end

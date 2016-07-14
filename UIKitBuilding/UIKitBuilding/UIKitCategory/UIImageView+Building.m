//
//  UIImageView+Building.m
//  UIKitFactory
//
//  Created by 雷亮 on 16/3/22.
//  Copyright © 2016年 雷亮. All rights reserved.
//

#import "UIImageView+Building.h"
//#import "UIImageView+WebCache.h"

@implementation UIImageView (Building)

/// UIImageView
UIImageView *Building_UIImageView(UIImage *image) {
    UIImageView *imageView = [[UIImageView alloc] init];
    if (image) { imageView.image = image; }
    /// default
    imageView.backgroundColor = [UIColor clearColor];
    return imageView;
}

UIImageView *Building_UIImageViewWithFrame(CGRect frame, UIImage *image) {
    UIImageView *imageView = Building_UIImageView(image);
    imageView.frame = frame;
    return imageView;
}

/// SDImageView
UIImageView *Building_SDImageView(NSString *urlString, UIImage *placeholderImage) {
    UIImageView *imageView = [[UIImageView alloc] init];
#warning 倒入工程后如果需要使用url转image, 导入SDWebImage, 打开这里与头文件即可 by leiliang;
//    [imageView sd_setImageWithURL:[NSURL URLWithString:urlString] placeholderImage:placeholderImage];
    /// default
    imageView.backgroundColor = [UIColor clearColor];
    return imageView;
}

UIImageView *Building_SDImageViewWithFrame(CGRect frame, NSString *urlString, UIImage *placeholderImage) {
    UIImageView *imageView = Building_SDImageView(urlString, placeholderImage);
    imageView.frame = frame;
    return imageView;
}

UIImageView *Building_UIImageViewWithSuperView(UIView *superView, UIImage *image) {
    UIImageView *imageView = Building_UIImageView(image);
    if (superView) { [superView addSubview:imageView]; }
    return imageView;
}

UIImageView *Building_UIImageViewWithFrameAndSuperView(UIView *superView, CGRect frame, UIImage *image) {
    UIImageView *imageView = Building_UIImageViewWithFrame(frame, image);
    if (superView) { [superView addSubview:imageView]; }
    return imageView;
}


@end

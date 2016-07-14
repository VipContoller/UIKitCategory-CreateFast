//
//  UITableView+SeprateLine.m
//  Fplan
//
//  Created by 雷亮 on 16/5/19.
//  Copyright © 2016年 bikeLockTec. All rights reserved.
//

#import "UITableView+SeprateLine.h"

@implementation UITableView (SeprateLine)

- (void)tableViewCellSepratelineFromOrigin:(__kindof UITableViewCell *)cell {
    if ([self respondsToSelector:@selector(setSeparatorInset:)]) {
        [self setSeparatorInset:UIEdgeInsetsMake(0, 0, 0, 0)];
    }
    if ([self respondsToSelector:@selector(setLayoutMargins:)]) {
        [self setLayoutMargins:UIEdgeInsetsMake(0, 0, 0, 0)];
    }
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}

@end

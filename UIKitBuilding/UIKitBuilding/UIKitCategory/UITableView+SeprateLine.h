//
//  UITableView+SeprateLine.h
//  Fplan
//
//  Created by 雷亮 on 16/5/19.
//  Copyright © 2016年 bikeLockTec. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (SeprateLine)

/// tableViewCell 分割线填充满
- (void)tableViewCellSepratelineFromOrigin:(__kindof UITableViewCell *)cell;

@end

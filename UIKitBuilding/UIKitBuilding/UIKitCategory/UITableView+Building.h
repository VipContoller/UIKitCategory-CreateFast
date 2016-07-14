//
//  UITableView+Building.h
//  UIKitFactory
//
//  Created by 雷亮 on 16/3/22.
//  Copyright © 2016年 雷亮. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Building)

/// plain
UITableView *Building_UITableView(id <UITableViewDataSource, UITableViewDelegate> delegate, UITableViewCellSeparatorStyle separatorStyle);

UITableView *Building_UITableViewWithSuperView(UIView *superView, id <UITableViewDataSource, UITableViewDelegate> delegate, UITableViewCellSeparatorStyle separatorStyle);

UITableView *Building_UITableViewWithFrame(CGRect frame, id <UITableViewDataSource, UITableViewDelegate> delegate, UITableViewCellSeparatorStyle separatorStyle);

/// style
UITableView *Building_UITableViewWithStyle(UITableViewStyle style, id <UITableViewDataSource, UITableViewDelegate> delegate, UITableViewCellSeparatorStyle separatorStyle);

UITableView *Building_UITableViewWithStyleAndFrame(CGRect frame, UITableViewStyle style, id <UITableViewDataSource, UITableViewDelegate> delegate, UITableViewCellSeparatorStyle separatorStyle);

@end

//
//  ViewController.m
//  UIKitBuilding
//
//  Created by 雷亮 on 16/7/14.
//  Copyright © 2016年 Leiliang. All rights reserved.
//

#import "ViewController.h"
#import "DemoViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray <NSString *>*dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"View Controller";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.dataArray = @[@"UIAlertView",            // 0
                       @"UIButton",               // 1
                       @"UIButton+点击回调",       // 2
                       @"UIImageView",            // 3
                       @"UILabel",                // 4
                       @"UINavigationBar背景色去色差", // 5
                       @"UIScrollView",           // 6
                       @"UITableView",            // 7
                       @"UITableView+cell分割线",  // 8
                       @"UITextField",            // 9
                       @"UITextView",             // 10
                       @"UIView",                 // 11
                       @"UIView+切圆角(切哪些角可选)",   // 12
                       @"UIView+点击回调",         // 13
                       @"UIView+防止键盘遮挡"];     // 14
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reUse"];
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    DemoViewController *demoVC = [[DemoViewController alloc] init];
    demoVC.title = self.dataArray[indexPath.row];
    demoVC.index = indexPath.row;
    [self.navigationController pushViewController:demoVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  DemoViewController.m
//  UIKitBuilding
//
//  Created by 雷亮 on 16/7/14.
//  Copyright © 2016年 Leiliang. All rights reserved.
//

#import "DemoViewController.h"
#import "UIKitCategoryConfig.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface DemoViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    switch (self.index) {
        case 0:
            [self buildingAlertView];
            break;
        case 1:
            [self buildingButton];
            break;
            case 2:
            [self buttonClickCallback];
            break;
            case 3:
            [self buildingImageView];
            break;
            case 4:
            [self buildingLabel];
            break;
            case 5:
            [self fixNavigationBarColor];
            break;
            case 6:
            [self buildingScrollView];
            break;
            case 7:
            [self buildingTableView];
            break;
            case 8:
            // 看这个方法
            // tableView: willDisplayCell: forRowAtIndexPath:
            [self buildingTableView];
            break;
            case 9:
            [self buildingTextField];
            break;
            case 10:
            [self buildingTextView];
            break;
            case 11:
            [self buildingView];
            break;
            case 12:
            [self cutCorner];
            break;
            case 13:
            [self clickCallback];
            break;
            case 14:
            // #import "UIView+YSTextInputKeyboard.h" 需要导入此头文件
            [self keyboardBlock];
            break;
        default:
            break;
    }
}

/**
 * 注意：
     这里只是列举了某些方法，具体的需要大家自己去查看，
     这里只是为了给大家展示基本的使用方法，大家可以根据
     自己的习惯对这个库进行相应的修改，来提高开发的效率
   另外：
     建议大家可以在创建视图的时候不去设置frame，
     只是单纯的创建一个视图对象并设置一些相关的属性，
     然后结合 masonry 或其他的第三方库来进行约束布局，
     这样会起到事半功倍的效果
 */

- (void)buildingAlertView {
    [[UIAlertView alertViewWithTitle:@"alertView" message:@"message" cancel:@"cancel" otherButtonTitles:@[@"confirm"] clickedBlock:^(NSInteger buttonIndex, NSString *buttonTitle) {
        
    } cancelBlock:^{
        
    }] show];
}

- (void)buildingButton {
    UIButton *button = Building_UIButtonWithFrameAndSuperView(self.view, CGRectMake(10, 100, 100, 50), self, @selector(handleButtonAction:), [UIColor brownColor]);
    [button setTitle:@"按 钮" forState:UIControlStateNormal];
}

- (void)buttonClickCallback {
    UIButton *button = Building_UIButtonWithFrameAndSuperView(self.view, CGRectMake(10, 100, 100, 50), nil, nil, [UIColor brownColor]);
    [button setTitle:@"按 钮" forState:UIControlStateNormal];
    
    [button clickedOnButtonWithCompletion:^(UIButton *sender) {
        [self buildingAlertView];
    }];
}

- (void)buildingImageView {
    UIImageView *imageView = Building_UIImageViewWithFrameAndSuperView(self.view, CGRectMake(10, 100, 100, 100), [UIImage imageNamed:@"dog.jpg"]);
    imageView.backgroundColor = [UIColor whiteColor];
}

- (void)buildingLabel {
    UILabel *label = Building_UILabelWithFrameAndSuperView(self.view, CGRectMake(10, 100, 300, 100), [UIFont systemFontOfSize:14], [UIColor darkGrayColor], 0, 0);
    label.backgroundColor = [UIColor orangeColor];
    label.text = @"In a storyboard-based application, you will often want to do a little preparation before navigation";
}

- (void)fixNavigationBarColor {
    [self.navigationController.navigationBar become_backgroundColor:[self randomColor]];
}

- (void)buildingScrollView {
    UIScrollView *scrollView = Building_UIScrollViewWithFrameAndSuperView(self.view, CGRectMake(10, 74, 300, 300), YES, YES, NO, YES, YES);
    scrollView.contentSize = CGSizeMake(1000, 300);
    scrollView.backgroundColor = [UIColor lightGrayColor];
    
    Building_UIImageViewWithFrameAndSuperView(scrollView, CGRectMake(10, 10, 100, 100), [UIImage imageNamed:@"dog.jpg"]);
}

- (void)buildingTableView {
    UITableView *tableView = Building_UITableViewWithStyleAndFrame(self.view.bounds, UITableViewStylePlain, self, UITableViewCellSeparatorStyleSingleLine);
    tableView.backgroundColor = [UIColor lightGrayColor];
}

- (void)buildingTextField {
    Building_UITextFieldWithFrameWithSuperView(self.view, CGRectMake(30, 100, 300, 60), [UIColor darkTextColor], [UIFont systemFontOfSize:13], 0, @"请在这里输入");
}

- (void)buildingTextView {
    UITextView *textView = Building_UITextViewWithFrameAndSuperView(self.view, CGRectMake(10, 100, 300, 100), [UIFont systemFontOfSize:14], [UIColor darkGrayColor], 0);
    textView.backgroundColor = [UIColor lightGrayColor];
}

- (void)buildingView {
    UIView *view = Building_UIViewWithFrameAndSuperView(self.view, CGRectMake(10, 100, 100, 100));
    view.backgroundColor = [UIColor orangeColor];
}

- (void)cutCorner {
    UIView *view = Building_UIViewWithFrameAndSuperView(self.view, CGRectMake(10, 100, 100, 100));
    view.backgroundColor = [UIColor orangeColor];
    // 这里的参数是选择具体要对哪些角进行处理
    [view cutCornersWithPositions:UIRectCornerTopLeft | UIRectCornerTopRight radius:10];
}

- (void)clickCallback {
    UIView *view = Building_UIViewWithFrameAndSuperView(self.view, CGRectMake(10, 100, 100, 100));
    view.backgroundColor = [UIColor orangeColor];

    [view clickedOnViewWithCompletion:^(id clickOnView) {
        [self buildingAlertView];
    }];
}

- (void)keyboardBlock {
    UITextField *textField = Building_UITextFieldWithFrameWithSuperView(self.view, CGRectMake(30, kScreenHeight - 100, kScreenWidth - 60, 50), [UIColor darkTextColor], [UIFont systemFontOfSize:13], 0, @"请在这里输入");
    
    textField.kbMoving.kbMovingView = textField;
}

/**
 * 以下是其他方法
 */
- (void)handleButtonAction:(UIButton *)sender {
    [self buildingAlertView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reUse"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"reUse"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"row %zd", indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.index == 8) {
        [tableView tableViewCellSepratelineFromOrigin:cell];
    }
}

- (UIColor *)randomColor {
    CGFloat hue = arc4random() % 256 / 256.0;
    CGFloat saturation = arc4random() % 128 / 256.0 + 0.5;
    CGFloat brightness = arc4random() % 128 / 256.0 + 0.5;
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

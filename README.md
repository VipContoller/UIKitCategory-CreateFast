# UIKitBuildingFast
手动创建视图是一个很烦人的过程，每个视图都需要设置一堆相关属性，浪费了很多时间，这个库会帮你解决这个问题，让你快速创建视图对象

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

    这里简单列举几个创建视图的方法：

    // 创建UILabel
    UILabel *Building_UILabel(UIFont *font, UIColor *textColor, NSTextAlignment textAlignment, NSInteger numberOfLines);

    UILabel *Building_UILabelWithSuperView(UIView *superView, UIFont *font, UIColor *textColor, NSTextAlignment textAlignment, NSInteger numberOfLines);

    UILabel *Building_UILabelWithFrame(CGRect frame, UIFont *font, UIColor *textColor, NSTextAlignment textAlignment, NSInteger numberOfLines);

    UILabel *Building_UILabelWithFrameAndSuperView(UIView *superView, CGRect frame, UIFont *font, UIColor *textColor, NSTextAlignment textAlignment, NSInteger numberOfLines);

    // 创建UITextField
    UITextField *Building_UITextField(UIColor *textColor, UIFont *font, NSTextAlignment textAlignment, NSString *placeholder);

    UITextField *Building_UITextFieldWithSuperView(UIView *superView, UIColor *textColor, UIFont *font, NSTextAlignment textAlignment, NSString *placeholder);

    UITextField *Building_UITextFieldWithFrame(CGRect frame, UIColor *textColor, UIFont *font, NSTextAlignment textAlignment, NSString *placeholder);

    UITextField *Building_UITextFieldWithFrameWithSuperView(UIView *superView, CGRect frame, UIColor *textColor, UIFont *font, NSTextAlignment textAlignment, NSString *placeholder);

    // 创建UIAlertView
    + (UIAlertView *)alertViewWithTitle:(NSString *)title message:(NSString *)message cancel:(NSString *)cancel cancelBlock:(CompletionCancelBlock)cancelBlock;
  
    + (UIAlertView *)alertViewWithTitle:(NSString *)title message:(NSString *)message cancel:(NSString *)cancel  otherButtonTitles:(NSArray <NSString *>*)titles clickedBlock:(CompletionClickedBlock)clickedBlock cancelBlock:(CompletionCancelBlock)cancelBlock;

更多方法请大家自己在Demo里面进行查看，相信会对大家的开发有一定的帮助


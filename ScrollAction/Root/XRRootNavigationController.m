//
//  XRRootNavigationController.m
//  SouGu
//
//  Created by sougu on 2017/5/15.
//  Copyright © 2017年 NextXavier. All rights reserved.
//

#import "XRRootNavigationController.h"

@interface XRRootNavigationController ()
@end

@implementation XRRootNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.translucent = YES;
  
  
    //设置导航条颜色
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithWhite:1 alpha:0.5]];
    
    //设置按钮文字颜色 白色
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    //设置导航栏背景图片
//    UIImage *bgImage = [[UIImage imageWithColor: [UIColor colorWithWhite:1 alpha:0.5]] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0) resizingMode:UIImageResizingModeStretch];
//    [[UINavigationBar appearance] setBackgroundImage:bgImage forBarMetrics:UIBarMetricsDefault];

    //设置导航栏字体 大小 颜色
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys: [UIFont systemFontOfSize:19.0], NSFontAttributeName,[UIColor blackColor],NSForegroundColorAttributeName,nil]];
    
    //自定义返回按钮  (全局设置)
    UIImage *backImage = [UIImage imageNamed:@"back"];
    backImage = [backImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [UINavigationBar appearance].backIndicatorImage = backImage;
    [UINavigationBar appearance].backIndicatorTransitionMaskImage = backImage;
    
    //将返回按钮的文字设置不在屏幕上显示
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(NSIntegerMin,0) forBarMetrics:UIBarMetricsDefault];
    
    
    // Do any additional setup after loading the view.
}
//重写系统的push方法
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (self.childViewControllers.count == 1) {
        viewController.hidesBottomBarWhenPushed = YES; //viewController是将要被push的控制器
    }
    [super pushViewController:viewController animated:animated];
    
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

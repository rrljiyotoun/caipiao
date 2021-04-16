//
//  CYBNavController.m
//  01-基本框架搭建
//
//  Created by apple on 16/8/25.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CYBNavController.h"

@interface CYBNavController ()

@end

@implementation CYBNavController

- (void)viewDidLoad {
    [super viewDidLoad];

}
/**
 *  系统第一次使用这个类的时候调用
 */
+ (void)initialize{
    //获取导航控制器的主题
    UINavigationBar *navBar = [UINavigationBar appearance];
    //获取系统版本 [UIDevice currentDevice].systemVersion doubleValue]
    if ([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0) {
        //设置导稿控制器的主题背景图片
        [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    }else {
        
        [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar"] forBarMetrics:UIBarMetricsDefault];
    }
    
    //设置导航栏文字颜色
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];

    [navBar setTitleTextAttributes:dict];

}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    viewController.hidesBottomBarWhenPushed = YES;
    
    [super pushViewController:viewController animated:animated];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

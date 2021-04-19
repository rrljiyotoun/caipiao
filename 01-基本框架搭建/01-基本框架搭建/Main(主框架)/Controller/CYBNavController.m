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
    if (IOS7) {
        //设置 NavigationBa对象的 tintColor颜色 可以设置返回箭前和ButtonItem的颜色
        navBar.tintColor = [UIColor whiteColor];
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
    
    //纺一设置导航栏itme主题
    UIBarButtonItem *item = [UIBarButtonItem appearance];   //获取BarButtonItem主题
    
    NSMutableDictionary *itemDict = [NSMutableDictionary dictionary];
    itemDict[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    itemDict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    
    [item setTitleTextAttributes:itemDict forState:UIControlStateNormal];   //普通状态下的文字
    [item setTitleTextAttributes:itemDict forState:UIControlStateHighlighted];  //高亮状态下的文字
    
    
    if (!IOS7) {    //在iOS系纺下小7的时候就会调用
        [item setBackgroundImage:[UIImage imageNamed:@"NavBackButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        [item setBackgroundImage:[UIImage imageNamed:@"NavBackButtonPressed"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        
        //设置导航样返回按钮
        [item setBackButtonBackgroundImage:[UIImage imageNamed:@"NavButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        [item setBackButtonBackgroundImage:[UIImage imageNamed:@"NavButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    
    }

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

//
//  CYBMainController.m
//  01-基本框架搭建
//
//  Created by apple on 16/8/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CYBMainController.h"
#import "CYBTabBar.h"
#import "CYBButton.h"

@interface CYBMainController ()<CYBTabBarDelegate>

@end

@implementation CYBMainController

- (void)viewDidLoad {
    [super viewDidLoad];
#warning 技术点
    /*
    1,把系统自带的tabBar删除掉，换上自定义的view，自定义的view的frame等于系统tabBar的frame
    2，自定义按钮，通过for循环添加到自定义的view上，每个按钮的宽等于自定义view的 0.2 同时为每一个按钮设置背景图片
    3，给按钮添加点击事件
    
    selectedViewController    selectedIndex   可以设置 当前tabBarController控制器中当前选中的那一个子控制器
     */
   
    //替换系统的 tabBar
    [self.tabBar removeFromSuperview];
    
    CYBTabBar *tabBar = [[CYBTabBar alloc] init];
    tabBar.delegate = self;
    tabBar.frame = self.tabBar.frame;
    [self.view addSubview:tabBar];
    
}

#pragma mark <CYBTabBarDelegate>

- (void)tabBar:(CYBTabBar *)TabBar didSelectButtonFrom:(int)from to:(int)to{

    self.selectedIndex = to;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

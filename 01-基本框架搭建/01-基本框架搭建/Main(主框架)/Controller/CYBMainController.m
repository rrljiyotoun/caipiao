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
    
    NSLog(@"==========================");
#warning 技术点
    /*
    1,把系统自带的tabBar删除掉，换上自定义的view，自定义的view的frame等于系统tabBar的frame
    2，自定义按钮，通过for循环添加到自定义的view上，每个按钮的宽等于自定义view的 0.2 同时为每一个按钮设置背景图片
    3，给按钮添加点击事件
    
    selectedViewController    selectedIndex   可以设置 当前tabBarController控制器中当前选中的那一个子控制器
     */
   
    //替换系统的 tabBar
//    [self.tabBar removeFromSuperview];
    
    CYBTabBar *tabBar = [[CYBTabBar alloc] init];
    tabBar.delegate = self;
    tabBar.frame = self.tabBar.bounds;
    [self.tabBar addSubview:tabBar];
    
    for (int i = 0; i < self.viewControllers.count; i ++) {
        NSString *NormalImage = [NSString stringWithFormat:@"TabBar%d",i + 1];
        NSString *SelImage = [NSString stringWithFormat:@"TabBar%dsel",i + 1];
        
        [tabBar tabBarWithButtonNormalImage:NormalImage AndSelImage:SelImage];
    }
    

    
    //设置状态栏文字为白色 （最好写在 AppDelegate 里）
    //    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    
}

#warning 这个时候不用此方法来设置状态样的颜色，只能用 Application 来管理状态样颜色
//-(UIStatusBarStyle)preferredStatusBarStyle{
//    return UIStatusBarStyleLightContent;
//}
    


#pragma mark <CYBTabBarDelegate>

- (void)tabBar:(CYBTabBar *)TabBar didSelectButtonFrom:(int)from to:(int)to{

    self.selectedIndex = to;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

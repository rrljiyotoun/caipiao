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

@interface CYBMainController ()

@property (nonatomic, strong) UIButton *selButton;

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
    UIView *MTtabBar = [[UIView alloc] init];
    MTtabBar.frame = self.tabBar.frame;
    [self.view addSubview:MTtabBar];
    
    for (int i = 0; i < 5; i ++) {
        CYBButton *tabBarBtn = [CYBButton buttonWithType:UIButtonTypeCustom];
        
        tabBarBtn.tag = i;  //让当按钮的tag值等于i

        //未选中时的背景
        NSString *BtnIcon = [NSString stringWithFormat:@"TabBar%d",i + 1];
        [tabBarBtn setBackgroundImage:[UIImage imageNamed:BtnIcon] forState:UIControlStateNormal];

        //选中时的背景图片
        NSString *SelBtnIcon = [NSString stringWithFormat:@"TabBar%dsel",i + 1];
        [tabBarBtn setBackgroundImage:[UIImage imageNamed:SelBtnIcon] forState:UIControlStateSelected];
        [self.view addSubview:tabBarBtn];
        
        CGFloat tabBarBtnW = MTtabBar.frame.size.width * 0.2;
        CGFloat tabBarBtnH = MTtabBar.frame.size.height;
        CGFloat tabBarBtnY = MTtabBar.frame.origin.y;
        CGFloat tabBarBtnX = i * tabBarBtnW;
        tabBarBtn.frame = CGRectMake(tabBarBtnX, tabBarBtnY, tabBarBtnW, tabBarBtnH);
#warning 点击事件 
        //UIControlEventTouchUpInside点击抬起来才起作用   UIControlEventTouchDown点击就立即起作和
        [tabBarBtn addTarget:self action:@selector(ButtonClick:) forControlEvents:UIControlEventTouchDown];
        
        //设置一进来为第一个按钮为选中状态
        if (i == 0) {
            [self ButtonClick:tabBarBtn];
        }
        
    }
    
}

- (void)ButtonClick:(UIButton *)button{
#warning 技术点
    self.selButton.selected = NO; //设置一个按钮属性，上次为不选中状态
    
    button.selected = YES;  //设置本次点击按钮为选中状态
    
    self.selButton = button;    //把本次按钮点击状态赋值给上次按钮
    
    self.selectedIndex = button.tag;

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

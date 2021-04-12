//
//  CYBMainController.m
//  01-基本框架搭建
//
//  Created by apple on 16/8/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CYBMainController.h"
#import "CYBTabBar.h"

@interface CYBMainController ()

@property (nonatomic, strong) UIButton *selButton;

@end

@implementation CYBMainController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //替换系统的 tabBar
    [self.tabBar removeFromSuperview];
    UIView *MTtabBar = [[UIView alloc] init];
    MTtabBar.frame = self.tabBar.frame;
    [self.view addSubview:MTtabBar];
    
    for (int i = 0; i < 5; i ++) {
        UIButton *tabBarBtn = [UIButton buttonWithType:UIButtonTypeCustom];

        
 
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
    
        [tabBarBtn addTarget:self action:@selector(ButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        //设置一进来为第一个按钮为选中状态
        if (i == 0) {
            [self ButtonClick:tabBarBtn];
        }
        
    }
    
}

- (void)ButtonClick:(UIButton *)button{

    self.selButton.selected = NO; //设置上次为不选中状态
    
    button.selected = YES;  //设置本次点击按钮为选中状态
    
    self.selButton = button;    //把本次按钮点击状态赋值给上次按钮

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

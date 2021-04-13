//
//  CYBTabBar.m
//  01-基本框架搭建
//
//  Created by apple on 16/8/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CYBTabBar.h"
#import "CYBButton.h"

@interface CYBTabBar ()

@property (nonatomic, weak) CYBButton *selButton;

@end

@implementation CYBTabBar

- (void)tabBarWithButtonNormalImage:(NSString *)normalImage AndSelImage:(NSString *)SelImage{

        CYBButton *tabBarBtn = [CYBButton buttonWithType:UIButtonTypeCustom];
        
        //未选中时的背景
        [tabBarBtn setBackgroundImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
        
        //选中时的背景图片
        [tabBarBtn setBackgroundImage:[UIImage imageNamed:SelImage] forState:UIControlStateSelected];
        
        [self addSubview:tabBarBtn];
    
//        tabBarBtn.tag = self.subviews.count - 1; 
    
#warning 点击事件
        //UIControlEventTouchUpInside点击抬起来才起作用      UIControlEventTouchDown点击就立即起作和
        [tabBarBtn addTarget:self action:@selector(ButtonClick:) forControlEvents:UIControlEventTouchDown];
        
        //设置一进来为第一个按钮为选中状态
        if (self.subviews.count == 1) {
            [self ButtonClick:tabBarBtn];
        }

}


//设置子控件的 frame
- (void)layoutSubviews{
    [super layoutSubviews];
    
    for (int i = 0; i < self.subviews.count; ++i) {
        CYBButton *btn = self.subviews[i];
        
        btn.tag = i;
        
        CGFloat tabBarBtnW = self.frame.size.width * 0.2;
        CGFloat tabBarBtnH = self.frame.size.height;
        CGFloat tabBarBtnY = 0;
        CGFloat tabBarBtnX = i * tabBarBtnW;
        btn.frame = CGRectMake(tabBarBtnX, tabBarBtnY, tabBarBtnW, tabBarBtnH);
        
    }
 
}

- (void)ButtonClick:(CYBButton *)button{
    
    if ([self.delegate respondsToSelector:@selector(tabBar:didSelectButtonFrom:to:)]) {
        [self.delegate tabBar:self didSelectButtonFrom:self.selButton.tag to:button.tag];
    }
    
    
#warning 技术点
    self.selButton.selected = NO; //设置一个按钮属性，上次为不选中状态
    
    button.selected = YES;  //设置本次点击按钮为选中状态
    
    self.selButton = button;    //把本次按钮点击状态赋值给上次按钮

    
}

@end

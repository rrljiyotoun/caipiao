//
//  CYBTabBar.h
//  01-基本框架搭建
//
//  Created by apple on 16/8/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CYBTabBar;
@protocol CYBTabBarDelegate <NSObject>

@optional

- (void)tabBar:(CYBTabBar *)TabBar didSelectButtonFrom:(int)from to:(int)to;

@end

@interface CYBTabBar : UIView

@property (nonatomic, weak) id<CYBTabBarDelegate> delegate;

/**
 *  调用本方法设置 TabBar 里面的按钮的图片
 *
 *  @param normalImage 未选中时的图片
 *  @param SelImage    选中时的图片
 */
- (void)tabBarWithButtonNormalImage:(NSString *)normalImage AndSelImage:(NSString *)SelImage;

@end

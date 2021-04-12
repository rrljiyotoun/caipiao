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

@end

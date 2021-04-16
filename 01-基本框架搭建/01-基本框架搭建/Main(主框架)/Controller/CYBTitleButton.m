//
//  CYBTitleButton.m
//  01-基本框架搭建
//
//  Created by apple on 16/8/26.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CYBTitleButton.h"

@interface CYBTitleButton ()

@property (nonatomic, assign) UIFont *font;



@end

@implementation CYBTitleButton

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
        self.font = [UIFont systemFontOfSize:15];
        self.titleLabel.font = self.font;
        self.imageView.contentMode = UIViewContentModeCenter;  //设置 按钮内的图片居中，不接申
        
    }
    return self;
}



- (CGRect)titleRectForContentRect:(CGRect)contentRect{

    CGFloat titleX = 0;
    CGFloat titleY = 0;
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = self.font;
    CGFloat titleW = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size.width;
    CGFloat titleH = self.frame.size.height;
    
    return CGRectMake(titleX, titleY, titleW, titleH);
}

/**
 *  设置按钮 内部图片的位置
 */
- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = self.font;
    CGFloat titleW = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size.width;
    
    CGFloat imageX = titleW - 10;
    CGFloat imageY = 0;
    CGFloat imageW = self.frame.size.width - titleW;
    CGFloat imageH = self.frame.size.height;
    
    
    return CGRectMake(imageX, imageY, imageW, imageH);
    
}

@end

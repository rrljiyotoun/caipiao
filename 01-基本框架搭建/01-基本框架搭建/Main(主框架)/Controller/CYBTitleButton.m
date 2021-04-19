//
//  CYBTitleButton.m
//  01-基本框架搭建
//
//  Created by apple on 16/8/26.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CYBTitleButton.h"
#import <Availability.h>  //检查xcode版本

#define IOS7 [[UIDevice currentDevice].systemVersion doubleValue] >= 7.0
#define IOS6 [[UIDevice currentDevice].systemVersion doubleValue] < 7.0

@interface CYBTitleButton ()

@property (nonatomic, assign) UIFont *font;



@end

@implementation CYBTitleButton
//一个对象从 xib 或 sb中加载者会调用 awakeFromNib 一次
-(void)awakeFromNib{

    NSLog(@"awakeFromNib");
}

//从文件中解析一个对象的时候都会调用 initWithCoder 这个方法
- (instancetype)initWithCoder:(NSCoder *)coder
{
    NSLog(@"initWithCoder");
    self = [super initWithCoder:coder];
    if (self) {
        [self setup];
    }
    return self;
}
//一个控件从代码中创建时就一定会调用 initWithFrame
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

//自定义初始化方法
- (void)setup{
    self.font = [UIFont systemFontOfSize:15];
    self.titleLabel.font = self.font;
    self.imageView.contentMode = UIViewContentModeCenter;  //设置 按钮内的图片居中，不拉伸
}



- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    NSLog(@"titleRectForContentRect");

    CGFloat titleX = 0;
    CGFloat titleY = 0;
    CGFloat titleH = self.frame.size.height;
    CGFloat titleW;
    if (IOS7) {
        
#ifdef __IPHONE_7_0  //app运行在iOS7手机上，只用xcode5 开发的时候就是调用这里面的代码

        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSFontAttributeName] = self.font;
        
        titleW = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size.width;
#else
        //如果工发ios7以上程序，而是用xocde4开发工具就用这句
        titleW = [self.currentTitle sizeWithFont:self.font].width;
#endif
    }else{
        // app运行在小于iOS7的版本
        titleW = [self.currentTitle sizeWithFont:self.font].width;
    }
    
    return CGRectMake(titleX, titleY, titleW, titleH);
}

/**
 *  设置按钮 内部图片的位置
 */
- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = self.font;
    
    CGFloat titleW;
    if ([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0) {
        titleW = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size.width;
    }else{
        titleW = [self.currentTitle sizeWithFont:self.font].width;
    }
    
    CGFloat imageX = titleW - 10;
    CGFloat imageY = 0;
    CGFloat imageW = self.frame.size.width - titleW;
    CGFloat imageH = self.frame.size.height;
    
    
    return CGRectMake(imageX, imageY, imageW, imageH);
    
}

@end

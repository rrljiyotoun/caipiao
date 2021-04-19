//
//  UIImage+CYB.m
//  01-基本框架搭建
//
//  Created by apple on 16/8/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "UIImage+CYB.h"

@implementation UIImage (CYB)

+ (UIImage *)resizablImage:(NSString *)imageName{

    UIImage *name = [UIImage imageNamed:imageName];
    
    CGFloat nameW = name.size.width * 0.5;
    CGFloat nameH = name.size.height * 0.5;

    return [name resizableImageWithCapInsets:UIEdgeInsetsMake(nameH, nameW, nameH, nameW)];
}

@end

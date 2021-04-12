//
//  CYBButton.m
//  01-基本框架搭建
//
//  Created by apple on 16/8/22.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CYBButton.h"

@implementation CYBButton

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        NSLog(@"+++++");
    }
    return self;
}

#warning 重写按钮的这个方法，不调 super ，就可以没有高亮状态
- (void)setHighlighted:(BOOL)highlighted{
    //[super setHighlighted:highlighted];

}

@end

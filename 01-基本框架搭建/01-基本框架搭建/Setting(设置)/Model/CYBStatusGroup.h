//
//  CYBStatusGroup.h
//  01-基本框架搭建
//
//  Created by apple on 16/8/29.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYBStatusGroup : NSObject

/**
 *  组头部标题
 */
@property (nonatomic, copy) NSString *header;

/**
 *  组尾部标题
 */
@property (nonatomic, copy) NSString *footer;

/**
 *  每组每行的内容
 */
@property (nonatomic, strong) NSArray *items;

@end

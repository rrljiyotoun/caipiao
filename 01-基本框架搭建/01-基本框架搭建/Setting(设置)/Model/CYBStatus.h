//
//  CYBStatus.h
//  01-基本框架搭建
//
//  Created by apple on 16/8/29.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYBStatus : NSObject
/**
 *  cell图片
 */
@property (nonatomic, copy) NSString *icon;

/**
 *  cell文字
 */
@property (nonatomic, copy) NSString *title;

/**
 *  类名
 */
@property (nonatomic, assign) Class classVC;

+(instancetype)settingWithIcon:(NSString *)icon title:(NSString *)title classVc:(Class)Classvc;

@end

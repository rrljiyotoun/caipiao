//
//  CYBStatus.m
//  01-基本框架搭建
//
//  Created by apple on 16/8/29.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CYBStatus.h"


@implementation CYBStatus

+ (instancetype)settingWithIcon:(NSString *)icon title:(NSString *)title classVc:(Class)Classvc{

    CYBStatus *status = [[self alloc] init];
    
    status.icon = icon;
    status.title = title;
    status.classVC = Classvc;

    return status;
}

@end

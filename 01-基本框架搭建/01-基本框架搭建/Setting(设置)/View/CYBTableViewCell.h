//
//  CYBTableViewCell.h
//  01-基本框架搭建
//
//  Created by apple on 16/8/30.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>


@class CYBStatus;
@interface CYBTableViewCell : UITableViewCell

/**
 *  存放数据的模型
 */
@property (nonatomic, strong) CYBStatus *Status;

/**
 *  返回一个cell
 */
+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end

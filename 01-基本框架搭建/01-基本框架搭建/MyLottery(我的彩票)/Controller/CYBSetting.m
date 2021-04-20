//
//  CYBSetting.m
//  01-基本框架搭建
//
//  Created by apple on 16/8/29.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CYBSetting.h"
#import "CYBStatus.h"
#import "CYBOneController.h"
#import "CYBTestTwoViewController.h"
#import "CYBStatusGroup.h"
#import "CYBTableViewCell.h"
#import "CYBStatusArrows.h"
#import "CYBStatusSwitch.h"

@interface CYBSetting ()

@property (nonatomic, strong) NSMutableArray *status;

@end

@implementation CYBSetting

- (NSMutableArray *)status{

    if (_status == nil) {
        _status = [NSMutableArray array];
        
        CYBStatus *item00 = [CYBStatusArrows settingWithIcon:@"MorePush" title:@"提示设置" classVc:[CYBOneController class]];
        CYBStatus *item01 = [CYBStatusSwitch settingWithIcon:@"MoreMessage" title:@"信息" classVc:[CYBTestTwoViewController class]];
        CYBStatusGroup *group0 = [[CYBStatusGroup alloc] init];
        group0.header = @"头部标题1";
        group0.footer = @"尾部标题1";
        group0.items = @[item00,item01];
     
        CYBStatus *item10 = [CYBStatus settingWithIcon:@"handShake" title:@"摇一摇机选" classVc:[CYBOneController class]];
        CYBStatus *item11 = [CYBStatusArrows settingWithIcon:@"MoreUpdate" title:@"检查更新" classVc:[CYBTestTwoViewController class]];
        CYBStatusGroup *group1 = [[CYBStatusGroup alloc] init];
        group1.header = @"头部标题1";
        group1.items = @[item10,item11];
        
        [_status addObject:group0];
        [_status addObject:group1];
    }
    return _status;
}

- (instancetype)init{

    if (self = [super initWithStyle:UITableViewStyleGrouped]) {
        //
    }

    return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style{

    if (self = [super initWithStyle:UITableViewStyleGrouped]) {
        //
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"设置";

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.status.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    CYBStatusGroup *tatus = self.status[section];
    return tatus.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    static NSString *ID = @"cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
//    }
//    CYBStatusGroup *status = self.status[indexPath.section];
//    CYBStatus *st = status.items[indexPath.row];
//    cell.imageView.image = [UIImage imageNamed:st.icon];
//    cell.textLabel.text = st.title;
    
    
    CYBTableViewCell *cell = [CYBTableViewCell cellWithTableView:tableView];    //创建cell
    
    CYBStatusGroup *status = self.status[indexPath.section];
    cell.Status = status.items[indexPath.row]; //传模型
 
    return cell;    //返回cell
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CYBStatusGroup *status = self.status[indexPath.section];
    CYBStatus *st = status.items[indexPath.row];
    
    [self.navigationController pushViewController:[[st.classVC alloc] init] animated:YES];

}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{

    CYBStatusGroup *status = self.status[section];
    return status.header;

}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    CYBStatusGroup *status = self.status[section];
    return status.footer;
}

@end

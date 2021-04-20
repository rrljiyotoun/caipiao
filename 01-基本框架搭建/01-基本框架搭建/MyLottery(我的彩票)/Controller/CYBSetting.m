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


@interface CYBSetting ()

@property (nonatomic, strong) NSMutableArray *status;

@end

@implementation CYBSetting

- (NSMutableArray *)status{

    if (_status == nil) {
        _status = [NSMutableArray array];
        
       CYBStatus *item00 = [CYBStatus settingWithIcon:@"MorePush" title:@"提示设置" classVc:[CYBOneController class]];
        
        CYBStatus *item01 = [CYBStatus settingWithIcon:@"MoreMessage" title:@"信息" classVc:[CYBTestTwoViewController class]];
        
        NSArray *array0 = @[item00,item01];
        
        
        CYBStatus *item10 = [CYBStatus settingWithIcon:@"handShake" title:@"摇一摇机选" classVc:[CYBOneController class]];
        NSArray *array1 = @[item10];
        
        [_status addObject:array0];
        
        [_status addObject:array1];
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
    
    NSLog(@"123123%s",__func__);
    
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
    NSArray *tatus = self.status[section];
    return tatus.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *ID = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    CYBStatus *status = self.status[indexPath.section][indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:status.icon];
    cell.textLabel.text = status.title;
 
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CYBStatus *status = self.status[indexPath.section][indexPath.row];
    
    [self.navigationController pushViewController:[[status.classVC alloc] init] animated:YES];
    

}


@end

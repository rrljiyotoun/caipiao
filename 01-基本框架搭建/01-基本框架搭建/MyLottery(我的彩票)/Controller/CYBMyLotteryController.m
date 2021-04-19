//
//  CYBMyLotteryController.m
//  01-基本框架搭建
//
//  Created by apple on 16/8/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CYBMyLotteryController.h"

@interface CYBMyLotteryController ()

@end

@implementation CYBMyLotteryController


- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        NSLog(@"initWithCoder如果在storyboard设置Main.storyboard和代码设置一样");
        /*
         如果在storyboard设置Main.storyboard和代码设置一样
         
         如果控制器的view是普通的view时候，不是tableView与ScrollView的时候因为不滚动，可以顶部和底的扩展关掉
         
         UIRectEdgeNone   都不扩展
         UIRectEdgeTop    扩展顶部
         UIRectEdgeLeft   扩展左边
         UIRectEdgeBottom 扩展底部
         UIRectEdgeRight  扩展右边
         UIRectEdgeAll    上下左右都扩展
         */
        self.edgesForExtendedLayout = UIRectEdgeAll;
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

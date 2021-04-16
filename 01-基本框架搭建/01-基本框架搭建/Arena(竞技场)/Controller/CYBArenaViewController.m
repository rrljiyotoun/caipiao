//
//  CYBArenaViewController.m
//  01-基本框架搭建
//
//  Created by apple on 16/8/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CYBArenaViewController.h"
#import "CYBTitleButton.h"

@interface CYBArenaViewController ()

- (IBAction)ButtonClick:(CYBTitleButton *)sender;

@property (nonatomic, assign) CGAffineTransform transform;




@end

@implementation CYBArenaViewController

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


    
    
    
    
    
    

- (IBAction)ButtonClick:(CYBTitleButton *)sender {
    
    sender.imageView.transform = CGAffineTransformMakeRotation(M_PI);
    self.transform =  sender.imageView.transform ;
    
    
    UIView *addView = [[UIView alloc] initWithFrame:CGRectMake(10, 64, 200, 200)];
    addView.backgroundColor = [UIColor yellowColor];
    [self.view  addSubview:addView];
    
}
@end

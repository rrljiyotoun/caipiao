//
//  CYBMyLotteryController.m
//  01-基本框架搭建
//
//  Created by apple on 16/8/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CYBMyLotteryController.h"
#import "UIImage+CYB.h"

@interface CYBMyLotteryController ()

- (IBAction)ClickButton:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIButton *LongBtn;

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
    
//    UIImage *Normal  = [UIImage imageNamed:@"RedButton"];
//    UIImage *Highlighted = [UIImage imageNamed:@"RedButtonPressed"];
//    
//    //设置图片的拉伸位置
//    Normal = [Normal stretchableImageWithLeftCapWidth:Normal.size.width * 0.5 topCapHeight:Normal.size.height * 0.5];
//    Highlighted = [Highlighted stretchableImageWithLeftCapWidth:Highlighted.size.width *0.5 topCapHeight:Highlighted.size.height * 0.5];
//    
//    //下面两个方法也是设置图片的拉伸的
////    Normal = [Normal resizableImageWithCapInsets:UIEdgeInsetsMake(<#CGFloat top#>, <#CGFloat left#>, <#CGFloat bottom#>, <#CGFloat right#>)];
////    Normal = [Normal resizableImageWithCapInsets:<#(UIEdgeInsets)#> resizingMode:<#(UIImageResizingMode)#>];
//    
//    //设置图
//    [self.LongBtn setBackgroundImage:Normal forState:UIControlStateNormal];
//    [self.LongBtn setBackgroundImage:Highlighted forState:UIControlStateHighlighted];
    
    
    //用分类设置按钮
    UIImage *normal = [UIImage resizablImage:@"RedButton"];
    UIImage *Highlighted = [UIImage resizablImage:@"RedButtonPressed"];
    
        //设置图
    [self.LongBtn setBackgroundImage:normal forState:UIControlStateNormal];
    [self.LongBtn setBackgroundImage:Highlighted forState:UIControlStateHighlighted];

    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)ClickButton:(UIButton *)sender {
 
    
    
}
@end

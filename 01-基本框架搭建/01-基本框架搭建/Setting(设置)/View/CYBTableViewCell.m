//
//  CYBTableViewCell.m
//  01-基本框架搭建
//
//  Created by apple on 16/8/30.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CYBTableViewCell.h"
#import "CYBStatus.h"
#import "CYBStatusSwitch.h"
#import "CYBStatusArrows.h"

@implementation CYBTableViewCell

- (void)setStatus:(CYBStatus *)Status{

    _Status = Status;
    
    self.imageView.image = [UIImage imageNamed:Status.icon];
    self.textLabel.text = Status.title;
    
    if ([Status isKindOfClass:[CYBStatusArrows class]]) {
        
        self.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow_right"]];
        
    }else if ([Status isKindOfClass:[CYBStatusSwitch class]]){
    
        self.accessoryView = [[UISwitch alloc] init];
        
    }else{
    
        self.accessoryView = nil;
    }
    

}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
    }
    return self;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView{
    
    static NSString *ID = @"cell";
        CYBTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
        if (cell == nil) {
            cell = [[CYBTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        }
  
    return cell;

}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

//
//  moTableViewCell.m
//  分组样式
//
//  Created by mo on 2018/1/5.
//  Copyright © 2018年 momo. All rights reserved.
//

#import "moTableViewCell.h"

@implementation moTableViewCell

- (void)setFrame:(CGRect)frame{
    
    
    frame.origin.x = 10;//这里间距为10，可以根据自己的情况调整
    frame.size.width -= 2 * frame.origin.x;
    [super setFrame:frame];
    

    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerAllCorners  cornerRadii:CGSizeMake(8, 8)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds ;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
    
}

- (void)layoutSubviews{
    [super layoutSubviews];
    

    
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}



@end

//
//  WeekMenuCell.m
//  TRProject
//
//  Created by dentist on 16/7/23.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "WeekMenuCell.h"

@implementation WeekMenuCell
- (UILabel *)titleLb {
    if(_titleLb == nil) {
        _titleLb = [[UILabel alloc] init];
        [self.contentView addSubview:_titleLb];
        [_titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.photo280IV.mas_bottom).equalTo(12);
//            make.height.equalTo(25);
            make.left.equalTo(12);
            make.width.equalTo([UIScreen mainScreen].bounds.size.width-90);
            
        }];
        _titleLb.font = [UIFont systemFontOfSize:17];

    }
    return _titleLb;
}

- (UILabel *)nameLb {
    if(_nameLb == nil) {
        _nameLb = [[UILabel alloc] init];
        [self.contentView addSubview:_nameLb];
        [_nameLb mas_makeConstraints:^(MASConstraintMaker *make) {
            
            
            make.right.equalTo(self.photo60IV);
            make.centerY.equalTo(self.gradeLb);
        }];
        _nameLb.font = [UIFont systemFontOfSize:13];
        _nameLb.textColor = [UIColor grayColor];
        _nameLb.textAlignment = NSTextAlignmentCenter;
    }
    return _nameLb;
}

- (UILabel *)gradeLb {
    if(_gradeLb == nil) {
        _gradeLb = [[UILabel alloc] init];
        [self.contentView addSubview:_gradeLb];
        [_gradeLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.titleLb);
            make.bottom.equalTo(-10);
            make.top.equalTo(self.titleLb.mas_bottom).equalTo(10);
        }];
        _gradeLb.font = [UIFont systemFontOfSize:13];
        _gradeLb.textColor = [UIColor grayColor];
        _gradeLb.textAlignment = NSTextAlignmentLeft;
    }
    return _gradeLb;
}

- (UIImageView *)photo60IV {
    if(_photo60IV == nil) {
        _photo60IV = [[UIImageView alloc] init];
        [self.contentView addSubview:_photo60IV];
        [_photo60IV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(-20);
            make.top.equalTo([UIScreen mainScreen].bounds.size.width/2-15);
            make.width.height.equalTo(50);
        }];
        _photo60IV.layer.cornerRadius = 25;
        _photo60IV.layer.masksToBounds = YES;
    }
    return _photo60IV;
}

- (UIImageView *)photo280IV {
    if(_photo280IV == nil) {
        _photo280IV = [[UIImageView alloc] init];
        [self.contentView addSubview:_photo280IV];
        [_photo280IV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.right.equalTo(0);
            make.height.equalTo([UIScreen mainScreen].bounds.size.width/2);
        }];
    }
    return _photo280IV;
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

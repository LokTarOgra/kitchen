//
//  CommunityCell.m
//  TRProject
//
//  Created by tarena089 on 16/7/25.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "CommunityCell.h"

@implementation CommunityCell

- (UIView *)iconView {
    if(_iconView == nil) {
        _iconView = [[UIView alloc] init];
        [self.contentView addSubview:_iconView];
        _iconView.clipsToBounds = YES;
        _iconView.contentMode = UIViewContentModeScaleAspectFill;
        _iconView.layer.cornerRadius = 4;
        [_iconView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.equalTo(8);
            make.bottom.equalTo(-8);
            make.size.equalTo(CGSizeMake(113, 113));
        }];
    }
    return _iconView;
}

- (UILabel *)titleLb {
    if(_titleLb == nil) {
        _titleLb = [[UILabel alloc] init];
        [self.contentView addSubview:_titleLb];
        [_titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.iconView.mas_right).equalTo(8);
            make.top.equalTo(12);
        }];
    }
    return _titleLb;
}

- (UILabel *)detailLb {
    if(_detailLb == nil) {
        _detailLb = [[UILabel alloc] init];
        [self.contentView addSubview:_detailLb];
        _detailLb.textColor = [UIColor grayColor];
        _detailLb.font = [UIFont systemFontOfSize:14];
        [_detailLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.titleLb);
            make.top.equalTo(self.titleLb.mas_bottom).equalTo(8);
            make.right.equalTo(-2);
        }];
    }
    return _detailLb;
}

- (UIImageView *)firstIV {
    if(_firstIV == nil) {
        _firstIV = [[UIImageView alloc] init];
        _firstIV.contentMode = UIViewContentModeScaleAspectFill;
        _firstIV.clipsToBounds = YES;
        [self.iconView addSubview:_firstIV];
        [_firstIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.equalTo(0);
            make.size.equalTo(CGSizeMake(self.iconView.frame.size.width/2, self.iconView.frame.size.height/2));
        }];
    }
    return _firstIV;
}

- (UIImageView *)secondIV {
    if(_secondIV == nil) {
        _secondIV = [[UIImageView alloc] init];
        _secondIV.contentMode = UIViewContentModeScaleAspectFill;
        _secondIV.clipsToBounds = YES;
        [self.iconView addSubview:_secondIV];
        [_secondIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.firstIV.mas_right).equalTo(2);
            make.top.equalTo(0);
            make.size.equalTo(self.firstIV);
        }];
    }
    return _secondIV;
}

- (UIImageView *)thirdIV {
    if(_thirdIV == nil) {
        _thirdIV = [[UIImageView alloc] init];
        _thirdIV.contentMode = UIViewContentModeScaleAspectFill;
        _thirdIV.clipsToBounds = YES;
        [self.iconView addSubview:_thirdIV];
        [_thirdIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.firstIV);
            make.top.equalTo(self.firstIV.mas_bottom).equalTo(2);
            make.size.equalTo(self.secondIV);
        }];
    }
    return _thirdIV;
}

- (UIImageView *)fourthIV {
    if(_fourthIV == nil) {
        _fourthIV = [[UIImageView alloc] init];
        _fourthIV.contentMode = UIViewContentModeScaleAspectFill;
        _fourthIV.clipsToBounds = YES;
        [self.iconView addSubview:_fourthIV];
        [_fourthIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(0);
            make.left.equalTo(self.thirdIV.mas_right).equalTo(2);
            make.top.equalTo(self.secondIV.mas_bottom).equalTo(2);
            make.size.equalTo(self.thirdIV);
        }];
    }
    return _fourthIV;
}


- (UIImageView *)IV {
    if(_IV == nil) {
        _IV = [[UIImageView alloc] init];
        _IV.contentMode = UIViewContentModeScaleAspectFit;
        _IV.clipsToBounds = YES;
        [self.contentView addSubview:_IV];
        [_IV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(10);
            make.top.equalTo(0);
            make.right.equalTo(-10);
            make.bottom.equalTo(0);
        }];
    }
    return _IV;
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self iconView];
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

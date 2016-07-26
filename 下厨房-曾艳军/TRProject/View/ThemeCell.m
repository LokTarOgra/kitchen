//
//  ThemeCell.m
//  TRProject
//
//  Created by tarena089 on 16/7/25.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "ThemeCell.h"

@implementation ThemeCell

- (UIImageView *)iconIV {
    if(_iconIV == nil) {
        _iconIV = [[UIImageView alloc] init];
        _iconIV.contentMode = UIViewContentModeScaleAspectFill;
        _iconIV.clipsToBounds = YES;
        [self.contentView addSubview:_iconIV];
        [_iconIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.equalTo(CGSizeMake(78, 78));
            make.left.top.equalTo(12);
        }];
        _iconIV.layer.cornerRadius = 39;
    }
    return _iconIV;
}

- (UILabel *)nameLb {
    if(_nameLb == nil) {
        _nameLb = [[UILabel alloc] init];
        _nameLb.font = [UIFont systemFontOfSize:15];
        _nameLb.textColor = [UIColor grayColor];
        [self.contentView addSubview:_nameLb];
        [_nameLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.iconIV.mas_right).equalTo(5);
            make.top.equalTo(12);
        }];
        
    }
    return _nameLb;
}

- (UILabel *)contentLb {
    if(_contentLb == nil) {
        _contentLb = [[UILabel alloc] init];
        _contentLb.font = [UIFont systemFontOfSize:18];
        [self.contentView addSubview:_contentLb];
        [_contentLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.nameLb);
            make.top.equalTo(self.nameLb.mas_bottom).equalTo(5);
            make.right.equalTo(-5);
        }];
    }
    return _contentLb;
}

- (UILabel *)replyLb {
    if(_replyLb == nil) {
        _replyLb = [[UILabel alloc] init];
        _replyLb.textColor = [UIColor grayColor];
        _replyLb.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:_replyLb];
        [_replyLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.nameLb);
            make.bottom.equalTo(-12);
        }];
    }
    return _replyLb;
}

- (UILabel *)commentLb {
    if(_commentLb == nil) {
        _commentLb = [[UILabel alloc] init];
        _commentLb.textColor = [UIColor grayColor];
        _commentLb.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:_commentLb];
        [_commentLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.replyLb);
            make.right.equalTo(-12);
        }];
        
    }
    return _commentLb;
}




- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

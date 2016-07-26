//
//  LoginView.m
//  登录界面
//
//  Created by tarena on 16/7/24.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "LoginView.h"

@implementation LoginView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self cancelBt];
        [self iconIV];
        [self loginBt];
        [self phoneRegisterBt];
    }
    return self;
}

- (UIButton *)cancelBt {
    if(_cancelBt == nil) {
        _cancelBt = [UIButton buttonWithType:UIButtonTypeSystem];
        [_cancelBt setTitle:@"取消" forState:UIControlStateNormal];
        _cancelBt.tintColor = [UIColor redColor];
        _cancelBt.titleLabel.font = [UIFont systemFontOfSize:20];
        [self addSubview:_cancelBt];
        [_cancelBt mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(20);
            make.top.equalTo(30);
        }];
    }
    return _cancelBt;
}

- (UIImageView *)iconIV {
    if(_iconIV == nil) {
        _iconIV = [[UIImageView alloc] init];
        [self addSubview:_iconIV];
        _iconIV.image = [UIImage imageNamed:@"屏幕快照 2016-07-24 11.13.18"];
        [_iconIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(150);
            make.centerX.equalTo(0);
        }];
    }
    return _iconIV;
}

- (UIButton *)loginBt {
    if(_loginBt == nil) {
        _loginBt = [UIButton buttonWithType:UIButtonTypeSystem];
        [self addSubview:_loginBt];
        _loginBt.backgroundColor = [UIColor colorWithRed:1.0 green:0.5 blue:0.5 alpha:1.0];
        _loginBt.tintColor = [UIColor whiteColor];
        [_loginBt setTitle:@"登录" forState:UIControlStateNormal];
        _loginBt.titleLabel.font = [UIFont systemFontOfSize:20];
        _loginBt.layer.cornerRadius = 6;
        [_loginBt mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.phoneRegisterBt.mas_top).equalTo(-12);
            make.centerX.equalTo(0);
            make.height.equalTo(44);
            make.left.equalTo(20);
        }];
    }
    return _loginBt;
}

- (UIButton *)phoneRegisterBt {
    if(_phoneRegisterBt == nil) {
        _phoneRegisterBt = [UIButton buttonWithType:UIButtonTypeSystem];
        _phoneRegisterBt.backgroundColor = [UIColor colorWithRed:0 green:0.5 blue:1.0 alpha:1.0];
        _phoneRegisterBt.tintColor = [UIColor whiteColor];
        [_phoneRegisterBt setTitle:@"手机注册" forState:UIControlStateNormal];
        _phoneRegisterBt.titleLabel.font = [UIFont systemFontOfSize:20];
        _phoneRegisterBt.layer.cornerRadius = 6;
        [self addSubview:_phoneRegisterBt];
        [_phoneRegisterBt mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(-40);
            make.centerX.equalTo(0);
            make.height.equalTo(44);
            make.left.equalTo(20);
        }];
    }
    return _phoneRegisterBt;
}


@end

//
//  ViewController.m
//  登录界面
//
//  Created by tarena on 16/7/24.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ViewController.h"
#import "LoginView.h"
#import "PhoneViewController.h"
#import "LoginTableViewController.h"



@interface ViewController ()
@property (nonatomic) LoginView *registerMP;


@end

@implementation ViewController

- (void)viewDidLoad {
    LoginView *login = [[LoginView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:login];
    self.registerMP = login;
    //手机注册点击事件
    [self.registerMP.phoneRegisterBt addTarget:self action:@selector(phoneRegisterClicked) forControlEvents:UIControlEventTouchUpInside];
    //登录点击事件
    [self.registerMP.loginBt addTarget:self action:@selector(loginClicked) forControlEvents:UIControlEventTouchUpInside];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStyleDone target:self action:@selector(goBackMainMenu)];
    self.navigationItem.leftBarButtonItem = leftItem;
    [leftItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20]} forState:UIControlStateNormal];
    leftItem.tintColor = [UIColor redColor];
    
}
- (void)phoneRegisterClicked
{
    PhoneViewController *pvc = [[PhoneViewController alloc] initWithStyle:UITableViewStyleGrouped];
    [self.navigationController pushViewController:pvc animated:YES];
}

- (void)loginClicked
{
    LoginTableViewController *lvc = [[LoginTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    [self.navigationController pushViewController:lvc animated:YES];
}

- (void)goBackMainMenu
{
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

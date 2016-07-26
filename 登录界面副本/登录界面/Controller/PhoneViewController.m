//
//  PhoneViewController.m
//  登录界面
//
//  Created by tarena on 16/7/25.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "PhoneViewController.h"
#import "TableViewCell1.h"
#import "TableViewCell2.h"
#import "PasswordTableViewController.h"

@interface PhoneViewController ()

@property (nonatomic) UITextField *tf;

@end

@implementation PhoneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"手机注册";
   
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:21]}];
 //   self.navigationItem.hidesBackButton = YES;
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60) forBarMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance]setBackButtonBackgroundImage:[UIImage imageNamed:@"屏幕快照 2016-07-26 12.37.12"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [UIApplication sharedApplication].statusBarStyle=UIStatusBarStyleLightContent;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell1" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"Cell1"];
    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell2" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"Cell2"];
    
    self.tableView.contentInset = UIEdgeInsetsMake(-20, 0, 0, 0);
    self.tableView.sectionHeaderHeight = 1;
    self.tableView.sectionFooterHeight = 1;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.allowsSelection = NO;
    
    self.tableView.scrollEnabled = YES;
    self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    
    UIButton *phoneBt = [UIButton buttonWithType:UIButtonTypeSystem];
    [phoneBt setTitle:@"发送验证码" forState:UIControlStateNormal];
    phoneBt.tintColor = [UIColor whiteColor];
    phoneBt.titleLabel.font = [UIFont systemFontOfSize:20];
    phoneBt.backgroundColor = [UIColor colorWithRed:246/255.0 green:103/255.0 blue:85/255.0 alpha:1.0];
    self.tableView.tableFooterView = phoneBt;
    phoneBt.layer.cornerRadius = 6;
    [phoneBt mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(200);
        make.centerX.equalTo(0);
        make.height.equalTo(44);
        make.left.equalTo(20);
    }];
    
    [phoneBt addTarget:self action:@selector(setPassword) forControlEvents:UIControlEventTouchUpInside];

}
- (void)setPassword
{
    PasswordTableViewController *pvc = [[PasswordTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    [self.navigationController pushViewController:pvc animated:NO];
    pvc.num = self.tf.text;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        TableViewCell1 *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell1" forIndexPath:indexPath];
        return cell;
    }else{
        TableViewCell2 *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        self.tf = cell.phoneTextField;
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
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

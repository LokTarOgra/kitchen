//
//  LoginTableViewController.m
//  登录界面
//
//  Created by tarena on 16/7/26.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "LoginTableViewController.h"
#import "LoginTableViewCell1.h"
#import "LoginTableViewCell2.h"

@interface LoginTableViewController ()

@end

@implementation LoginTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"登录";
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:21]}];
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60) forBarMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance]setBackButtonBackgroundImage:[UIImage imageNamed:@"屏幕快照 2016-07-26 12.37.12"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    self.tableView.contentInset = UIEdgeInsetsMake(-20, 0, 0, 0);
    self.tableView.sectionHeaderHeight = 1;
    self.tableView.sectionFooterHeight = 1;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.allowsSelection = NO;
    
    self.tableView.scrollEnabled = YES;
    self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"LoginTableViewCell1" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"Cell1"];
    [self.tableView registerNib:[UINib nibWithNibName:@"LoginTableViewCell2" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"Cell2"];
    
    UIButton *phoneBt = [UIButton buttonWithType:UIButtonTypeSystem];
    [phoneBt setTitle:@"登录" forState:UIControlStateNormal];
    phoneBt.tintColor = [UIColor whiteColor];
    phoneBt.titleLabel.font = [UIFont systemFontOfSize:20];
    phoneBt.backgroundColor = [UIColor colorWithRed:246/255.0 green:103/255.0 blue:85/255.0 alpha:1.0];
    self.tableView.tableFooterView = phoneBt;
    phoneBt.layer.cornerRadius = 6;
    [phoneBt mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(160);
        make.centerX.equalTo(0);
        make.height.equalTo(44);
        make.left.equalTo(20);
    }];
    [phoneBt addTarget:self action:@selector(loginSuccessClick) forControlEvents:UIControlEventTouchUpInside];
    
   //通过短信验证
    
}

- (void)loginSuccessClick
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        LoginTableViewCell1 *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell1" forIndexPath:indexPath];
        return cell;
    }else{
        LoginTableViewCell2 *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        return cell;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

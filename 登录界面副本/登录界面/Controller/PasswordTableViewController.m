//
//  PasswordTableViewController.m
//  登录界面
//
//  Created by tarena on 16/7/26.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "PasswordTableViewController.h"
#import "PasswordTableViewCell1.h"
#import "PasswordTableViewCell2.h"
#import "TableViewCell2.h"

@interface PasswordTableViewController ()

@end

@implementation PasswordTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"设置密码";
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:21]}];
    [self.tableView registerNib:[UINib nibWithNibName:@"PasswordTableViewCell1" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"Cell1"];
    [self.tableView registerNib:[UINib nibWithNibName:@"PasswordTableViewCell2" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"Cell2"];
    
    self.tableView.contentInset = UIEdgeInsetsMake(25, 0, 0, 0);
    self.tableView.sectionHeaderHeight = 1;
    self.tableView.sectionFooterHeight = 1;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.allowsSelection = NO;
    
    self.tableView.scrollEnabled = YES;
    self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    
    UILabel *phoneLb = [[UILabel alloc] init];
    phoneLb.textAlignment = NSTextAlignmentCenter;
    phoneLb.font = [UIFont systemFontOfSize:20];
    phoneLb.text = self.num;
    [self.tableView addSubview:phoneLb];
    [phoneLb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(50);
        make.centerX.equalTo(0);
        make.top.equalTo(-5);
    }];
    
    UIButton *phoneBt = [UIButton buttonWithType:UIButtonTypeSystem];
    [phoneBt setTitle:@"下一步" forState:UIControlStateNormal];
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
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        PasswordTableViewCell1 *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell1" forIndexPath:indexPath];
        return cell;
    }else{
        PasswordTableViewCell2 *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
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

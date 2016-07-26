//
//  ViewController.m
//  TRProject
//
//  Created by yingxin on 16/7/10.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "ViewController.h"
#import "NetManager.h"
#import "WeekMenuVoewModel.h"
#import "WeekMenuCell.h"
#import "WeekMenuWebView.h"

@interface ViewController ()
@property (nonatomic)WeekMenuVoewModel *weekMenuVM;
@end
@implementation ViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"本周流行菜谱";
    
    self.tableView.sectionHeaderHeight = 4;
    self.tableView.sectionFooterHeight = 4;
    //    self.tableView.contentInset = UIEdgeInsetsMake(-30, 0, 0, 0);
    UIView *header = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 0, 8)];
    header.backgroundColor = [UIColor clearColor];
    self.tableView.tableHeaderView = header;
    
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [self.weekMenuVM getDataWithMode:RequestModeRefresh completionHandler:^(NSError *error) {
            [self.tableView reloadData];
            [self.tableView.mj_header endRefreshing];
        }];
    }];
    [self.tableView.mj_header beginRefreshing];
    
    self.tableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
        
        [self.weekMenuVM getDataWithMode:RequestModeMore completionHandler:^(NSError *error) {
            [self.tableView reloadData];
            [self.tableView.mj_footer endRefreshing];
        }];
    }];
    
    [self.tableView registerClass:[WeekMenuCell class] forCellReuseIdentifier:@"cell"];
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return self.weekMenuVM.rowNumber;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WeekMenuCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    [cell.photo280IV setImageURL:[self.weekMenuVM photo280:indexPath.section]];
    [cell.photo60IV setImageURL:[self.weekMenuVM photo60:indexPath.section]];
    cell.titleLb.text = [self.weekMenuVM title:indexPath.section];
    cell.nameLb.text = [self.weekMenuVM name:indexPath.section];
    cell.gradeLb.text = [self.weekMenuVM scoreAndN_cooked:indexPath.section];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    WeekMenuWebView *vc = [[WeekMenuWebView alloc]initWithURL:[self.weekMenuVM webURL:indexPath.section]];
    [self.navigationController pushViewController:vc animated:YES];
}


- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewAutomaticDimension;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (WeekMenuVoewModel *)weekMenuVM {
	if(_weekMenuVM == nil) {
		_weekMenuVM = [[WeekMenuVoewModel alloc] init];
	}
	return _weekMenuVM;
}

@end

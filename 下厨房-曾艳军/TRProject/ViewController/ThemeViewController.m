//
//  ThemeViewController.m
//  TRProject
//
//  Created by tarena089 on 16/7/26.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "ThemeViewController.h"
#import "ThemeViewModel.h"
#import "ThemeCell.h"
#import <UITableView+FDTemplateLayoutCell.h>


@interface ThemeViewController ()
@property(nonatomic)ThemeViewModel *themeVM;
@end

@implementation ThemeViewController
- (instancetype)initWithRow:(NSInteger)row{
    if (self = [super initWithStyle:UITableViewStylePlain]) {
        _row = row;
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _themeVM.rowNum;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ThemeCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.nameLb.text = [_themeVM name:indexPath.row];
    cell.contentLb.text = [_themeVM content:indexPath.row];
    cell.replyLb.text = [_themeVM latest_comment_time:indexPath.row];
    cell.commentLb.text = [_themeVM n_comments:indexPath.row];
    [cell.iconIV setImageURL:[_themeVM iconIV:indexPath.row]];
    cell.backgroundColor = [UIColor colorWithRed:247/255.0 green:247/255.0 blue:240/255.0 alpha:1.0];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    return [tableView fd_heightForCellWithIdentifier:@"cell" configuration:^(ThemeCell *cell) {
//        cell.nameLb.text = [_themeVM name:indexPath.row];
//        cell.contentLb.text = [_themeVM content:indexPath.row];
//        cell.replyLb.text = [_themeVM latest_comment_time:indexPath.row];
//        cell.commentLb.text = [_themeVM n_comments:indexPath.row];
//        [cell.iconIV setImageURL:[_themeVM iconIV:indexPath.row]];
//    }];
    return 125;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[ThemeCell class] forCellReuseIdentifier:@"cell"];
    
    
    __weak typeof(self)weakself = self;
    [self.tableView addHeaderRefresh:^{
       [weakself.themeVM getDataWithMode:RequestModeRefresh completionHandler:^(NSError *error) {
           [weakself.tableView reloadData];
           [weakself.tableView endHeaderRefresh];
       }];
    }];
    [self.tableView beginHeaderRefresh];
    
    [self.tableView addFooterRefresh:^{
       [weakself.themeVM getDataWithMode:RequestModeMore completionHandler:^(NSError *error) {
           [weakself.tableView reloadData];
           [weakself.tableView endFooterRefresh];
       }];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (ThemeViewModel *)themeVM {
	if(_themeVM == nil) {
		_themeVM = [[ThemeViewModel alloc] initWithRow:_row];
	}
	return _themeVM;
}

@end

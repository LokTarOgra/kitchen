//
//  CommunityTableViewController.m
//  TRProject
//
//  Created by tarena089 on 16/7/22.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "CommunityTableViewController.h"
#import "CommunityCell.h"
#import "CommunityViewModel.h"
#import <UITableView+FDTemplateLayoutCell.h>
#import "ThemeViewController.h"

@interface CommunityTableViewController ()
@property(nonatomic)CommunityViewModel * communityVM;
@end

@implementation CommunityTableViewController
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) return 2;
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CommunityCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if (indexPath.section == 0) {
        cell.titleLb.text = [self.communityVM shoutsTitle:indexPath.row];
        cell.detailLb.text = [self.communityVM detail:indexPath.row];
        if (indexPath.row == 0) {
            [cell.firstIV setImageURL:self.communityVM.model.shouts.latest_authors[0].photo60.yx_URL];
            [cell.secondIV setImageURL:self.communityVM.model.shouts.latest_authors[1].photo60.yx_URL];
            [cell.thirdIV setImageURL:self.communityVM.model.shouts.latest_authors[2].photo60.yx_URL];
            [cell.fourthIV setImageURL:self.communityVM.model.shouts.latest_authors[3].photo60.yx_URL];
        }if (indexPath.row == 1) {
        [cell.firstIV setImageURL:self.communityVM.model.forums[0].latest_authors[0].photo60.yx_URL];
        [cell.secondIV setImageURL:self.communityVM.model.forums[0].latest_authors[1].photo60.yx_URL];
        [cell.thirdIV setImageURL:self.communityVM.model.forums[0].latest_authors[2].photo60.yx_URL];
        [cell.fourthIV setImageURL:self.communityVM.model.forums[0].latest_authors[3].photo60.yx_URL];
        }
        return cell;
    }
    [cell.IV setImageURL:[self.communityVM pic_url]];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 1) {
        return [tableView fd_heightForCellWithIdentifier:@"cell" configuration:^(CommunityCell *cell) {
            [cell.IV setImageURL:[self.communityVM pic_url]];
        }];
    }
    return [tableView fd_heightForCellWithIdentifier:@"cell" configuration:^(CommunityCell *cell) {
        cell.titleLb.text = [self.communityVM shoutsTitle:indexPath.row];
        cell.detailLb.text = [self.communityVM detail:indexPath.row];
    }];
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.section == 0) {
        ThemeViewController *vc = [[ThemeViewController alloc] initWithRow:indexPath.row];
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[CommunityCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.backgroundColor = [UIColor colorWithRed:247/255.0 green:247/255.0 blue:240/255.0 alpha:1.0];
    self.title = @"社区";
    
    __weak typeof(self) weakself = self;
     [self.tableView addHeaderRefresh:^{
        [weakself.communityVM getDataWithMode:RequestModeRefresh completionHandler:^(NSError *error) {
            [weakself.tableView reloadData];
            [weakself.tableView endHeaderRefresh];
        }];
     }];
    [self.tableView beginHeaderRefresh];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CommunityViewModel *)communityVM {
	if(_communityVM == nil) {
		_communityVM = [[CommunityViewModel alloc] init];
	}
	return _communityVM;
}

@end

//
//  ViewController.m
//  TRProject
//
//  Created by yingxin on 16/7/10.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "ViewController.h"
#import "CommunityTableViewController.h"


@interface ViewController ()

@end
@implementation ViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:247/255.0 green:247/255.0 blue:240/255.0 alpha:1.0];
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    self.navigationItem.title = @"信箱";
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    dic[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [self.navigationController.navigationBar setTitleTextAttributes:dic];
    
    //左边Button
    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    leftBtn.frame = CGRectMake(0, 0, 40, 50);
    UIImage *img = [UIImage imageNamed:@"messageGroup_22x22_"];
    img = [img imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [leftBtn setImage: img forState:UIControlStateNormal];
    [leftBtn bk_addEventHandler:^(id sender) {
        CommunityTableViewController *vc = [[CommunityTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn bk_addEventHandler:^(id sender) {
            [self.navigationController popViewControllerAnimated:YES];
        } forControlEvents:UIControlEventTouchUpInside];
        btn.frame = CGRectMake(0, 0, 60, 40);
        [btn setImage:[UIImage imageNamed:@"backStretchBackgroundNormal_22x22_"] forState:UIControlStateNormal];
        UIBarButtonItem *leftBTN = [[UIBarButtonItem alloc] initWithCustomView:btn];
        UIBarButtonItem *fixedItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
        fixedItem.width = -25;
        vc.navigationItem.leftBarButtonItems = @[fixedItem, leftBTN];
        
        UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        btn1.frame = CGRectMake(0, 0, 60, 40);
        [btn1 setImage:[UIImage imageNamed:@"notification_22x22_"] forState:UIControlStateNormal];
        UIBarButtonItem *rightBTN = [[UIBarButtonItem alloc] initWithCustomView:btn1];
        vc.navigationItem.rightBarButtonItems = @[fixedItem, rightBTN];
        [self.navigationController pushViewController:vc animated:YES];
        
    } forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftbtn = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
    self.navigationItem.leftBarButtonItem = leftbtn;
    //右边Button
    UIButton *right = [UIButton buttonWithType:UIButtonTypeSystem];
    right.frame = CGRectMake(0, 0, 40, 50);
    UIImage *img1 = [UIImage imageNamed:@"pushSetting_22x22_"];
    img1 = [img1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [right setImage:img1 forState:UIControlStateNormal];
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithCustomView:right];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
//    
//    UILabel *writeLb = [[UILabel alloc] init];
//    [self.view addSubview:writeLb];
//    writeLb.font = [UIFont systemFontOfSize:24];
//    writeLb.textColor = [UIColor darkGrayColor];
//    writeLb.text = @"写一封信";
//    writeLb.textAlignment = NSTextAlignmentCenter;
//    [writeLb mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(78);
//        make.centerX.equalTo(0);
//        //make.left.right.equalTo(0);
//        //make.height.equalTo(40);
//    }];
    [self writeButton];
    [self adviceButton];
}

//写一封信button
- (void)writeButton{
    UIButton *btn = [[UIButton alloc] init];
    [btn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    //btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"写一封信" forState:UIControlStateNormal];
    [btn bk_addEventHandler:^(id sender) {
        NSLog(@"写一封信");
    } forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(78);
        make.centerX.equalTo(0);
    }];
}
- (void)adviceButton{
    UIButton *btn = [[UIButton alloc] init];
    [btn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    
    [self.view addSubview:btn];
    [btn setTitle:@"意见反馈" forState:UIControlStateNormal];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(0);
        make.bottom.equalTo(-10);
    }];
    [btn bk_addEventHandler:^(id sender) {
        NSLog(@"意见反馈");
    } forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  WeekMenuWebView.m
//  TRProject
//
//  Created by dentist on 16/7/23.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "WeekMenuWebView.h"

@interface WeekMenuWebView ()<UIWebViewDelegate>
@property (nonatomic)UIWebView *webView;
@end

@implementation WeekMenuWebView
- (instancetype)initWithURL:(NSURL *)url
{
    self = [super init];
    if (self) {
        _url = url;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _webView = [UIWebView new];
    [self.view addSubview:_webView];
    [_webView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(0);
    }];
    [_webView loadRequest:[NSURLRequest requestWithURL:_url]];
    _webView.delegate = self;
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [self.view showHUD];
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self.view hideHUD];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [self.view showWarning:@"加载失败"];
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

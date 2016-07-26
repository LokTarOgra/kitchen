//
//  WebViewController.h
//  TRProject
//
//  Created by tarena089 on 16/7/26.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

- (instancetype)initWithURL:(NSURL *)url;
@property(nonatomic)NSURL *url;

@end

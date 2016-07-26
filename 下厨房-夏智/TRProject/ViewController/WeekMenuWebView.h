//
//  WeekMenuWebView.h
//  TRProject
//
//  Created by dentist on 16/7/23.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeekMenuWebView : UIViewController
- (instancetype)initWithURL:(NSURL *)url;
@property (nonatomic,readonly)NSURL *url;

@end

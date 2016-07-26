//
//  ThemeViewModel.h
//  TRProject
//
//  Created by tarena089 on 16/7/25.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseViewModel.h"
#import "NetManager.h"

@interface ThemeViewModel : BaseViewModel

@property(nonatomic, readonly)NSInteger rowNum;

- (NSURL *)iconIV:(NSInteger)row;
- (NSString *)name:(NSInteger)row;
- (NSString *)content:(NSInteger)row;
- (NSString *)latest_comment_time:(NSInteger)row;
- (NSString *)n_comments:(NSInteger)row;


@property(nonatomic)NSMutableArray<ThemeTopicsModel *> *topicsData;

@property(nonatomic)NSMutableArray<ThemeNearbyShoutsModel *> *shoutsData;

- (instancetype)initWithRow:(NSInteger)row;
@property(nonatomic)NSInteger row;



@end

//
//  CommunityViewModel.h
//  TRProject
//
//  Created by tarena089 on 16/7/22.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseViewModel.h"
#import "NetManager.h"

@interface CommunityViewModel : BaseViewModel

- (NSString *)shoutsTitle:(NSInteger)row;
- (NSString *)detail:(NSInteger)row;


//下面掉肉不掉   好胃口URL
- (NSURL *)pic_url;
- (NSURL *)pic_Detailurl;

@property(nonatomic, readonly)NSArray *shoutsIconURLList;
@property(nonatomic, readonly)NSArray *forumsIconURLList;

@property(nonatomic,)NSMutableArray *shoutsDataList;
@property(nonatomic,)NSMutableArray<ConmmunityForumsModel *> *forumsDataList;

@property(nonatomic)ConmmunityModel *model;



@end

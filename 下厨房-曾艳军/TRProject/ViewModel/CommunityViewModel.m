//
//  CommunityViewModel.m
//  TRProject
//
//  Created by tarena089 on 16/7/22.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "CommunityViewModel.h"

@implementation CommunityViewModel


- (NSMutableArray<ConmmunityShoutsModel *> *)shorusDataList{
    if (!_shoutsDataList) {
        _shoutsDataList = [NSMutableArray new];
    }
    return _shoutsDataList;
}
- (NSMutableArray<ConmmunityForumsModel *> *)forumsDataList{
    if (!_forumsDataList) {
        _forumsDataList = [NSMutableArray new];
    }
    return _forumsDataList;
}

- (void)getDataWithMode:(RequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler{
    self.dataTask = [NetManager getcommunityData:^(ConmmunityModel *model, NSError *error) {
        if (!error) {
            
            if (requestMode == RequestModeRefresh) {
                [self.shoutsDataList removeAllObjects];
                [self.forumsDataList removeAllObjects];
            }
            [self.shoutsDataList addObjectsFromArray:model.shouts.latest_authors];
            [self.forumsDataList addObjectsFromArray:model.forums];
            _model = model;
        }
        !completionHandler ?: completionHandler(error);
    }];
}

- (NSString *)shoutsTitle:(NSInteger)row{
    if (row == 0) {
        return _forumsDataList[row].name;
    }
    return _model.shouts.name;
}
- (NSString *)detail:(NSInteger)row{
    if (row == 0) {
        return _forumsDataList[row].desc;
    }
    return _model.shouts.desc;
}
- (NSURL *)pic_url{
    return _model.pic_url.yx_URL;
}
- (NSURL *)pic_Detailurl{
    return _model.index_url.yx_URL;
}
- (NSArray *)shoutsIconURLList{
    NSMutableArray *arr = nil;
    [_model.shouts.latest_authors enumerateObjectsUsingBlock:^(Latest_Authors * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [arr addObject:obj.photo60];
    }];
        return arr.copy;
}
- (NSArray *)forumsIconURLList{
    NSMutableArray *arr = nil;
    [_model.forums.firstObject.latest_authors enumerateObjectsUsingBlock:^(Latest_Authors * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [arr addObject:obj.photo60];
    }];
    return arr.copy;
}

@end

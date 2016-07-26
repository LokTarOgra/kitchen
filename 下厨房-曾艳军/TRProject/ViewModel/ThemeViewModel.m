//
//  ThemeViewModel.m
//  TRProject
//
//  Created by tarena089 on 16/7/25.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "ThemeViewModel.h"

@implementation ThemeViewModel
- (instancetype)initWithRow:(NSInteger)row{
    if (self = [super init]) {
        _row = row;
    }
    return self;
}
- (NSMutableArray<ThemeNearbyShoutsModel *> *)shoutsData {
    if(_shoutsData == nil) {
        _shoutsData = [[NSMutableArray<ThemeNearbyShoutsModel *> alloc] init];
    }
    return _shoutsData;
}
- (NSMutableArray<ThemeTopicsModel *> *)topicsData{
    if (!_topicsData) {
        _topicsData = [NSMutableArray new];
    }
    return _topicsData;
}
-(void)getDataWithMode:(RequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler
{
    self.dataTask = [NetManager getThemeDatAa:_row completionHandler:^(ThemeModel *model, ThemeNearbyModel *model1, NSError *error) {
        if (!error) {
            if (requestMode == RequestModeRefresh) {
                [self.topicsData removeAllObjects];
                [self.shoutsData removeAllObjects];
            }
            if (_row == 0) {
                [_topicsData addObjectsFromArray:model.topics];
                !completionHandler ?: completionHandler(error);
                return ;
            }
            [_shoutsData addObjectsFromArray:model1.shouts];
        }
        !completionHandler ?: completionHandler(error);
        
    }];
}
- (NSInteger)rowNum{
    return _row == 0 ? _topicsData.count : _shoutsData.count;
}
- (NSURL *)iconIV:(NSInteger)row{
    return _row == 0 ? _topicsData[row].author.photo60.yx_URL : _shoutsData[row].photo60.yx_URL;
}
- (NSString *)name:(NSInteger)row{
    return _row == 0 ? _topicsData[row].author.name : _shoutsData[row].name;
}
-(NSString *)content:(NSInteger)row{
    return _row == 0 ? _topicsData[row].content : _shoutsData[row].content;
}
- (NSString *)n_comments:(NSInteger)row{
    NSInteger comments = _row == 0 ? _topicsData[row].n_comments : _shoutsData[row].n_comments;
    if (comments >= 10000) {
        return [NSString stringWithFormat:@"%.1f万评论", comments/10000.0];
    }
    return [NSString stringWithFormat:@"%ld评论", comments];
}
- (NSString *)latest_comment_time:(NSInteger)row{
    return [NSString stringWithFormat:@"2天前回复"];
}

@end

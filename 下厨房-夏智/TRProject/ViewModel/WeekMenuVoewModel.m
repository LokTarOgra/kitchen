//
//  WeekMenuVoewModel.m
//  TRProject
//
//  Created by dentist on 16/7/22.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "WeekMenuVoewModel.h"

@implementation WeekMenuVoewModel
- (void)getDataWithMode:(RequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler
{
    if (requestMode == RequestModeMore) {
        
    }
    self.dataTask = [NetManager getWeekMenuCompletionHandler:^(WeekMenuModel *model, NSError *error) {
        if (!error) {
            if (requestMode == RequestModeRefresh) {
                [self.recipes removeAllObjects];
            }
            [self.recipes addObjectsFromArray:model.content.recipes];
            !completionHandler ?: completionHandler(error);
        }
    }];
}


//=======================cell=====================
- (NSInteger)rowNumber
{
    return self.recipes.count;
}

- (NSMutableArray <RecipesModel *> *)recipes {
    if(_recipes == nil) {
        _recipes = [[NSMutableArray <RecipesModel *> alloc] init];
    }
    return _recipes;
}


- (NSString *)title:(NSInteger)row;
{
    return self.recipes[row].name;
}

- (NSString *)name:(NSInteger)row
{
    return  self.recipes[row].author.name;
}
- (NSString *)scoreAndN_cooked:(NSInteger)row
{
    NSString *cooked = self.recipes[row].stats.n_cooked;
    if (self.recipes[row].score==nil) {
       return [NSString stringWithFormat:@"%@人做过",cooked];
    }
    else
    {
        NSString *scoer = self.recipes[row].score;
        return [NSString stringWithFormat:@"%@分.%@人做过",scoer,cooked];
    }
    

}
- (NSURL *)photo60:(NSInteger)row
{
    NSString *str = self.recipes[row].author.photo60;
    return str.yx_URL;
}
- (NSURL *)photo280:(NSInteger)row
{
    return self.recipes[row].photo280.yx_URL;
}

//=================web=============
- (NSURL *)webURL:(NSInteger)row
{
    return self.recipes[row].url.yx_URL;
}
@end

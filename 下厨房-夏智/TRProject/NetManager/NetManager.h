//
//  NetManager.h
//  TRProject
//
//  Created by tarena on 16/7/14.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "BaseNetworking.h"
#import "WeekMenuModel.h"

@interface NetManager : BaseNetworking
+ getWeekMenuCompletionHandler:(void(^)(WeekMenuModel *model,NSError *error))completionHandler;
@end

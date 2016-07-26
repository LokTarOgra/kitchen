//
//  NetManager.h
//  TRProject
//
//  Created by tarena on 16/7/14.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "BaseNetworking.h"
#import "ConmmunityModel.h"
#import "ThemeModel.h"

@interface NetManager : BaseNetworking

+ (id)getcommunityData:(void(^)(ConmmunityModel *model, NSError *error))completionHandler;

+ (id)getThemeDatAa:(NSInteger)row completionHandler:(void(^)(ThemeModel *model, ThemeNearbyModel *model1, NSError *error))completionHandler;
@end

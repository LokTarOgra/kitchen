//
//  NetManager.m
//  TRProject
//
//  Created by tarena on 16/7/14.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "NetManager.h"

@implementation NetManager
+ (id)getWeekMenuCompletionHandler:(void (^)(WeekMenuModel *, NSError *))completionHandler
{
    return [self GET:@"http://api.xiachufang.com/v2/recipes/lookup.json?_ts=1469067257.874330&api_key=07397197043fafe11ce5c65c10febf84&api_sign=448447c997b79754adf1676b68e65c19&id=101854521%2C101852448%2C101843226%2C100638704%2C100099334%2C101854838%2C100042767%2C101693457%2C100390847%2C101852219%2C100576238%2C100414859%2C101798424%2C100378843%2C101838660%2C100098387%2C100477541%2C100393097%2C1046564%2C1007597&location_code=156440300000000&nonce=8F06EC12-D732-46FB-B4FA-DC6E26EE6AD6&origin=iphone&version=5.6.0" parameters:nil completionHandler:^(id repsonseObj, NSError *error) {
        !completionHandler ?: completionHandler([WeekMenuModel parse:repsonseObj],error);
    }];
}
@end

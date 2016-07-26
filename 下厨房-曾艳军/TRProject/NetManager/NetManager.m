//
//  NetManager.m
//  TRProject
//
//  Created by tarena on 16/7/14.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "NetManager.h"
#define kCommunityPath @"http://api.xiachufang.com/v2/social/init_page.json?_ts=1469444958.537974&api_key=07397197043fafe11ce5c65c10febf84&api_sign=f0fcb38594f20e827ce0386496f47c10&latitude=22.645174&location_code=156440300000000&longitude=114.198668&nonce=B6CDB919-15F2-4DFB-BA9A-600CD3B0D1E6&origin=iphone&sk=7p3Duxs4RX6YqdlMgSBCXw&version=5.6.0"

#define kThemePath @"http://api.xiachufang.com/v2/forums/2/topics.json?_ts=1469456287.328868&api_key=07397197043fafe11ce5c65c10febf84&api_sign=e4ad9af27f3227cd999b076d4edcd689&limit=20&location_code=156440300000000&nonce=ABFAC750-52B0-4711-AB28-75BD85D6D2A2&offset=0&origin=iphone&sk=7p3Duxs4RX6YqdlMgSBCXw&version=5.6.0"

#define kNearbyPath @"http://api.xiachufang.com/v2/shouts/nearby.json?_ts=1469522946.531101&api_key=07397197043fafe11ce5c65c10febf84&api_sign=a4c3087a55bd13f0a9508d7b4ecc44af&latitude=22.645178&limit=20&location_code=156440300000000&longitude=114.198660&nonce=3C5E8BB7-40FF-4A86-94F0-E34A1D9371D9&offset=0&origin=iphone&sk=7p3Duxs4RX6YqdlMgSBCXw&version=5.6.0"

@implementation NetManager
+ (id)getcommunityData:(void(^)(ConmmunityModel *model, NSError *error))completionHandler{
    return [self GET:kCommunityPath parameters:nil completionHandler:^(id repsonseObj, NSError *error) {
        !completionHandler ?: completionHandler([ConmmunityModel parse:repsonseObj], error);
    }];
}

+ (id)getThemeDatAa:(NSInteger)row completionHandler:(void (^)(ThemeModel *, ThemeNearbyModel *, NSError *))completionHandler{
    if (row == 0) {
        return [self GET:kThemePath parameters:nil completionHandler:^(id repsonseObj, NSError *error) {
            !completionHandler ?: completionHandler([ThemeModel parse:repsonseObj], nil, error);
        }];
    }
    return [self GET:kNearbyPath parameters:nil completionHandler:^(id repsonseObj, NSError *error) {
        !completionHandler ?: completionHandler(nil, [ThemeNearbyModel parse:repsonseObj], error);
    }];
}

@end

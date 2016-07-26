//
//  ConmmunityModel.m
//  TRProject
//
//  Created by tarena089 on 16/7/22.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "ConmmunityModel.h"

@implementation ConmmunityModel

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"shouts": @"content.shouts",
             @"reformation": @"content.reformation",
             @"forums": @"content.forums",
             @"pic_url": @"content.reformation.pic_url",
             @"index_url": @"content.reformation.index_url"};
}

+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"forums": [ConmmunityForumsModel class]};
}


@end


@implementation ConmmunityShoutsModel

+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"latest_authors": [Latest_Authors class]};
}

@end


@implementation Latest_Authors

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{@"ID": @"id"};
}

@end

@implementation ConmmunityForumsModel

+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"latest_authors": [Latest_Authors class]};
}

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{@"ID": @"id"};
}


@end




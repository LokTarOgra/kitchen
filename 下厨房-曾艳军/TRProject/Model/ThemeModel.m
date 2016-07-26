//
//  ThemeModel.m
//  TRProject
//
//  Created by tarena089 on 16/7/25.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "ThemeModel.h"

@implementation ThemeModel

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"count": @"content.count",
             @"total": @"content.total",
             @"topics": @"content.topics"};
}

+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"topics": [ThemeTopicsModel class]};
}

@end

@implementation ThemeTopicsModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"ID": @"id"};
}
@end


@implementation ThemeTopicsAuthorModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"ID": @"id"};
}
@end

@implementation ThemeNearbyModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"shouts": @"content.shouts",
             @"count": @"content.count",
             @"total": @"content.total"};
}
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"shouts": [ThemeNearbyShoutsModel class]};
}
@end

@implementation ThemeNearbyShoutsModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"mail": @"author.mail",
             @"photo60": @"author.photo60",
             @"photo160": @"author.photo160",
             @"photo": @"author.photo",
             @"name": @"author.name",
             @"is_expert": @"author.is_expert",
             @"ID": @"id"};
}
@end




//
//  WeekMenuModel.m
//  TRProject
//
//  Created by dentist on 16/7/22.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "WeekMenuModel.h"

@implementation WeekMenuModel

@end
@implementation ContentModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass
{
    return @{@"recipes":[RecipesModel class]};
}
@end


@implementation RecipesModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass
{
    return @{@"stats":[RecipesModel class],@"author":[AuthorModel class]};
}
@end


@implementation StatsModel

@end


@implementation Purchase_ButtonModel

@end


@implementation IconModel

@end


@implementation AuthorModel

@end


@implementation IngredientModel

@end


@implementation InstructionModel

@end



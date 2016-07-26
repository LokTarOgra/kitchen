//
//  WeekMenuModel.h
//  TRProject
//
//  Created by dentist on 16/7/22.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ContentModel,RecipesModel,StatsModel,Purchase_ButtonModel,IconModel,AuthorModel,IngredientModel,InstructionModel;
@interface WeekMenuModel : NSObject

@property (nonatomic, copy) NSString *status;

@property (nonatomic, strong) ContentModel *content;

@end
@interface ContentModel : NSObject

@property (nonatomic, strong) NSArray<RecipesModel *> *recipes;

@property (nonatomic, assign) NSInteger total;

@end

@interface RecipesModel : NSObject

@property (nonatomic, strong) NSArray *dish_author;

@property (nonatomic, copy) NSString *photo340;

@property (nonatomic, copy) NSString *video_url;

@property (nonatomic, copy) NSString *photo90;

@property (nonatomic, copy) NSString *photo140;

@property (nonatomic, strong) NSArray *recipe_cats;

@property (nonatomic, copy) NSString *ident;

@property (nonatomic, copy) NSString *create_time;

@property (nonatomic, copy) NSString *purchase_url;

@property (nonatomic, copy) NSString *url;

@property (nonatomic, strong) NSArray<InstructionModel *> *instruction;

@property (nonatomic, copy) NSString *summary;

@property (nonatomic, copy) NSString *score;

@property (nonatomic, copy) NSString *photo280;

@property (nonatomic, copy) NSString *friendly_create_time;

@property (nonatomic, copy) NSString *photo640;

@property (nonatomic, copy) NSString *photo80;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *id;

@property (nonatomic, copy) NSString *tips;

@property (nonatomic, copy) NSString *thumb;

@property (nonatomic, copy) NSString *video_page_url;

@property (nonatomic, copy) NSString *photo526;

@property (nonatomic, assign) BOOL is_exclusive;

@property (nonatomic, copy) NSString *photo580;
//
@property (nonatomic, strong) StatsModel *stats;

@property (nonatomic, strong) Purchase_ButtonModel *purchase_button;

@property (nonatomic, copy) NSString *photo;

@property (nonatomic, copy) NSString *desc;
//
@property (nonatomic, strong) AuthorModel *author;

@property (nonatomic, strong) NSArray<IngredientModel *> *ingredient;

@end

@interface StatsModel : NSObject

@property (nonatomic, copy) NSString *n_cooked_last_week;

@property (nonatomic, copy) NSString *n_comments;

@property (nonatomic, copy) NSString *n_cooked;

@property (nonatomic, assign) BOOL cooked_by_me;

@property (nonatomic, copy) NSString *n_collects;

@property (nonatomic, copy) NSString *n_dishes;

@property (nonatomic, copy) NSString *n_pv;

@end

@interface Purchase_ButtonModel : NSObject

@property (nonatomic, copy) NSString *link;

@property (nonatomic, strong) IconModel *icon;

@end

@interface IconModel : NSObject

@end

@interface AuthorModel : NSObject

@property (nonatomic, copy) NSString *mail;

@property (nonatomic, copy) NSString *id;

@property (nonatomic, copy) NSString *photo60;

@property (nonatomic, copy) NSString *photo160;

@property (nonatomic, copy) NSString *photo;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) BOOL is_expert;

@end

@interface IngredientModel : NSObject

@property (nonatomic, copy) NSString *amount;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *cat;

@end

@interface InstructionModel : NSObject

@property (nonatomic, copy) NSString *photo800;

@property (nonatomic, copy) NSString *ident;

@property (nonatomic, copy) NSString *url;

@property (nonatomic, copy) NSString *step;

@property (nonatomic, copy) NSString *text;

@end


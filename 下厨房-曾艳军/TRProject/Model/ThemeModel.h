//
//  ThemeModel.h
//  TRProject
//
//  Created by tarena089 on 16/7/25.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ThemeTopicsModel,ThemeTopicsAuthorModel;

@interface ThemeModel : NSObject

@property (nonatomic, copy) NSString *status;

//@property (nonatomic, strong) Content *content;
//@end
//@interface Content : NSObject
@property (nonatomic, assign) NSInteger count;

@property (nonatomic, assign) NSInteger total;

@property (nonatomic, strong) NSArray<ThemeTopicsModel *> *topics;

@end

@interface ThemeTopicsModel : NSObject

@property (nonatomic, copy) NSString *update_time;

@property (nonatomic, strong) ThemeTopicsAuthorModel *author;

@property (nonatomic, copy) NSString *content;

@property (nonatomic, assign) NSInteger n_comments;

@property (nonatomic, copy) NSString *latest_comment_time;
//id  -- > ID
@property (nonatomic, copy) NSString *ID;

@property (nonatomic, assign) BOOL is_sticked;

@property (nonatomic, copy) NSString *create_time;

@end

@interface ThemeTopicsAuthorModel : NSObject

@property (nonatomic, copy) NSString *mail;
//id  -- > ID
@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *photo60;

@property (nonatomic, copy) NSString *photo160;

@property (nonatomic, copy) NSString *photo;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) BOOL is_expert;

@end


@class ThemeNearbyShoutsModel;
@interface ThemeNearbyModel : NSObject

@property (nonatomic, copy) NSString *status;
//@property (nonatomic, strong) Content *content;
//@end
//@interface Content : NSObject
@property (nonatomic, strong) NSArray<ThemeNearbyShoutsModel *> *shouts;

@property (nonatomic, assign) NSInteger count;

@property (nonatomic, assign) NSInteger total;

@end

@interface ThemeNearbyShoutsModel : NSObject

@property (nonatomic, copy) NSString *update_time;

//@property (nonatomic, strong) Author *author;

@property (nonatomic, assign) CGFloat longitude;

@property (nonatomic, copy) NSString *content;

@property (nonatomic, assign) NSInteger n_comments;

@property (nonatomic, copy) NSString *latest_comment_time;
//id   - > ID
@property (nonatomic, copy) NSString *ID;

@property (nonatomic, assign) CGFloat latitude;

@property (nonatomic, copy) NSString *create_time;

@property (nonatomic, assign) BOOL is_sticked;
//@end
//@interface Author : NSObject
@property (nonatomic, copy) NSString *mail;

//@property (nonatomic, copy) NSString *id;

@property (nonatomic, copy) NSString *photo60;

@property (nonatomic, copy) NSString *photo160;

@property (nonatomic, copy) NSString *photo;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) BOOL is_expert;

@end


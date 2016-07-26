//
//  ConmmunityModel.h
//  TRProject
//
//  Created by tarena089 on 16/7/22.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import <Foundation/Foundation.h>


@class ConmmunityShoutsModel,Latest_Authors,ConmmunityForumsModel;
@interface ConmmunityModel : NSObject

@property (nonatomic, copy) NSString *status;
//@property (nonatomic, strong) Content *content;
//@end
//@interface Content : NSObject
@property (nonatomic, strong) ConmmunityShoutsModel *shouts;
//@property (nonatomic, strong) Reformation *reformation;
@property (nonatomic, strong) NSArray<ConmmunityForumsModel *> *forums;
//@end
//@interface Reformation : NSObject
@property (nonatomic, copy) NSString *pic_url;

@property (nonatomic, copy) NSString *index_url;

@end


@interface ConmmunityShoutsModel : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *desc;

@property (nonatomic, strong) NSArray<Latest_Authors *> *latest_authors;

@end

@interface Latest_Authors : NSObject

@property (nonatomic, copy) NSString *mail;
//id   -- > ID
@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *photo60;

@property (nonatomic, copy) NSString *photo160;

@property (nonatomic, copy) NSString *photo;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) BOOL is_expert;

@end

@interface ConmmunityForumsModel : NSObject

@property (nonatomic, strong) NSArray<Latest_Authors *> *latest_authors;
//   id     -- >   ID
@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *desc;

@end



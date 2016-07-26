//
//  WeekMenuVoewModel.h
//  TRProject
//
//  Created by dentist on 16/7/22.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeekMenuModel.h"
#import "BaseViewModel.h"
#import "NetManager.h"
@interface WeekMenuVoewModel : BaseViewModel

//===============cell==================
@property (nonatomic) NSInteger rowNumber;
@property (nonatomic) NSMutableArray <RecipesModel *> *recipes;
- (NSString *)title:(NSInteger)row;

- (NSString *)name:(NSInteger)row;
- (NSString *)scoreAndN_cooked:(NSInteger)row;
- (NSURL *)photo60:(NSInteger)row;
- (NSURL *)photo280:(NSInteger)row;

//===========web==============
- (NSURL *)webURL:(NSInteger)row;
@end

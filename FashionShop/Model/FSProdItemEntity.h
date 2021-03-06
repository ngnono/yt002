//
//  FSProdItemEntity.h
//  FashionShop
//
//  Created by gong yi on 11/24/12.
//  Copyright (c) 2012 Fashion. All rights reserved.
//

#import "FSModelBase.h"
#import "FSStore.h"
#import "FSUser.h"
#import "FSBrand.h"

@interface FSProdItemEntity : FSModelBase

@property (nonatomic, assign) NSInteger  id;
@property (nonatomic, assign) NSInteger  type;
@property (nonatomic, strong) FSStore * store;
@property (nonatomic,strong) NSMutableArray * resource;

@property (nonatomic, strong) NSString * descrip;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) FSUser * fromUser;
@property (nonatomic, strong) NSDate * inDate;
@property (nonatomic,assign) NSInteger couponTotal;
@property (nonatomic,assign) NSInteger favorTotal;
@property (nonatomic,strong) NSMutableArray *coupons;
@property (nonatomic, strong) NSMutableArray *comments;
@property (nonatomic,strong) FSBrand * brand;
@property (nonatomic,strong) NSNumber *price;
@property (nonatomic,assign) BOOL isFavored;
@property (nonatomic,assign) BOOL isCouponed;


@end

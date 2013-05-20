//
//  FSCommon.m
//  FashionShop
//
//  Created by HeQingshan on 13-5-10.
//  Copyright (c) 2013年 Fashion. All rights reserved.
//

#import "FSCommon.h"

@implementation FSCommon

+(RKObjectMapping *) getRelationDataMap
{
    RKObjectMapping *relationMap = [RKObjectMapping mappingForClass:[self class]];
    [relationMap mapKeyPath:@"rangefrom" toAttribute:@"rangefrom"];
    [relationMap mapKeyPath:@"rangeto" toAttribute:@"rangeto"];
    [relationMap mapKeyPath:@"ratio" toAttribute:@"ratio"];
    
    [relationMap mapKeyPath:@"excludes" toAttribute:@"excludes"];
    [relationMap mapKeyPath:@"storeid" toAttribute:@"storeid"];
    [relationMap mapKeyPath:@"storename" toAttribute:@"storename"];
    
    [relationMap mapKeyPath:@"downloadurl" toAttribute:@"downLoadURL"];
    [relationMap mapKeyPath:@"title" toAttribute:@"title"];
    [relationMap mapKeyPath:@"versionno" toAttribute:@"version"];
    [relationMap mapKeyPath:@"desc" toAttribute:@"desc"];
    [relationMap mapKeyPath:@"type" toAttribute:@"type"];
    [relationMap mapKeyPath:@"startimage_iphone5" toAttribute:@"startimage_iphone5"];
    [relationMap mapKeyPath:@"startimage" toAttribute:@"startimage"];
    [relationMap mapKeyPath:@"code" toAttribute:@"code"];
    
    return relationMap;
}

@end
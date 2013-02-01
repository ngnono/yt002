//
//  FSPagedFavor.m
//  FashionShop
//
//  Created by gong yi on 12/21/12.
//  Copyright (c) 2012 Fashion. All rights reserved.
//

#import "FSPagedFavor.h"
#import "FSFavor.h"

@implementation FSPagedFavor
+(NSString *)pagedKeyPath
{
    return @"items";
}

+(Class)pagedModel
{
    return [FSFavor class];
}
@end

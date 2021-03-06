//
//  FSImageUploadCell.h
//  FashionShop
//
//  Created by gong yi on 1/2/13.
//  Copyright (c) 2013 Fashion. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSTCollectionView.h"
#import "SpringboardLayout.h"

@interface FSImageUploadCell : UITableViewCell<SpringboardLayoutDelegate,PSUICollectionViewDataSource>
@property(nonatomic,strong) NSMutableArray *images;
@property(nonatomic) id imageRemoveDelegate;;
-(void)refreshImages;

@end

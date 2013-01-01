//
//  FSSettingViewController.h
//  FashionShop
//
//  Created by gong yi on 11/30/12.
//  Copyright (c) 2012 Fashion. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FSUser.h"

@protocol FSSettingCompleteDelegate;

@interface FSSettingViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tbAction;

@property(nonatomic,strong) FSUser *currentUser;

@property(nonatomic) id<FSSettingCompleteDelegate> delegate;

@end


@protocol FSSettingCompleteDelegate <NSObject>

-(void)settingView:(FSSettingViewController*)view didLogOut:(BOOL)flag;

@end
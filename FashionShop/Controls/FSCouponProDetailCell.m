//
//  FSCouponProDetailCell.m
//  FashionShop
//
//  Created by gong yi on 12/31/12.
//  Copyright (c) 2012 Fashion. All rights reserved.
//

#import "FSCouponProDetailCell.h"
#import "UITableViewCell+BG.h"

@implementation FSCouponProDetailCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self setBackgroundViewUniveral];
    }
    return self;
}



-(void) setData:(FSCoupon *)data
{
    _data = data;
    _lblCode.text = _data.code;
    _lblCode.font = ME_FONT(14);
    _lblCode.textColor = [UIColor redColor];
    _lblTitle.text = _data.productname;
    _lblTitle.font = ME_FONT(14);
    _lblTitle.textColor = [UIColor colorWithRed:0 green:0 blue:0];
    [_lblTitle sizeToFit];
    _lblStore.text = [NSString stringWithFormat:NSLocalizedString(@"User_Coupon_store%a", nil),_data.promotion.store.name];
    _lblStore.font = ME_FONT(12);
    _lblStore.textColor = [UIColor colorWithRed:102 green:102 blue:102];
    [_lblStore sizeToFit];
    
    
}


@end

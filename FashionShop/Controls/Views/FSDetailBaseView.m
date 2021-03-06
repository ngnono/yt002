//
//  FSDetailBaseView.m
//  FashionShop
//
//  Created by gong yi on 12/14/12.
//  Copyright (c) 2012 Fashion. All rights reserved.
//

#import "FSDetailBaseView.h"

#define UIVIEW_PROBASE_MASK_IDENTIFER 2002
@implementation FSDetailBaseView
@synthesize pType;
@synthesize showViewMask = _showViewMask;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void)setShowViewMask:(BOOL)showViewMask
{
    if (showViewMask ==_showViewMask)
        return;
    _showViewMask = showViewMask;
    if (showViewMask)
    {
        UIView *emptyView = (UIView *)[self viewWithTag:UIVIEW_PROBASE_MASK_IDENTIFER];
        if (!emptyView)
        {
            emptyView = [[UIView alloc] initWithFrame:self.frame];
            emptyView.backgroundColor = [UIColor whiteColor];
            UIImageView * loadMoreView= [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width/2-20,self.frame.origin.y+50, 40, 40)];
            [emptyView addSubview:loadMoreView];
            [loadMoreView.layer removeAllAnimations];
            loadMoreView.image = [UIImage imageNamed:@"refresh-spinner-dark"];
            CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform"];
            animation.fromValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI/180, 0, 0, 1.0)];
            animation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI, 0, 0, 1.0)];
            animation.duration = .4;
            animation.cumulative =YES;
            animation.repeatCount = 2000;
            [loadMoreView.layer addAnimation:animation forKey:@"animation"];
            [loadMoreView startAnimating];
            
            emptyView.tag = UIVIEW_PROBASE_MASK_IDENTIFER;
        }
        [self addSubview:emptyView];
        [self bringSubviewToFront:emptyView];
    } else
    {
        UIView *emptyView =(UIView *)[self viewWithTag:UIVIEW_PROBASE_MASK_IDENTIFER];
        if (emptyView)
        {
            if (emptyView.subviews.count>0)
            {
                UIImageView *loadMoreView =(UIImageView *)emptyView.subviews[0];
                if (loadMoreView)
                {
                    [loadMoreView.layer removeAllAnimations];
                    loadMoreView.image = nil;
                    [loadMoreView removeFromSuperview];
                }
            }
            [emptyView removeFromSuperview];
        }

    }
}
-(void)resetScrollViewSize
{}
-(void) updateInteraction:(id)updatedEntity{}

@end

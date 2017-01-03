//
//  UIView+TRHelper.h
//  TRHelperKit
//
//  Created by caozhen@neusoft on 2017/1/3.
//  Copyright © 2017年 Neusoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TRHelper)
// orgin
@property (nonatomic,assign) CGFloat tr_x;
@property (nonatomic,assign) CGFloat tr_y;
@property (nonatomic,assign) CGPoint tr_orgin;

// size
@property (nonatomic,assign) CGFloat tr_width;
@property (nonatomic,assign) CGFloat tr_height;
@property (nonatomic,assign) CGSize tr_size;
// center
@property (nonatomic,assign) CGFloat tr_centerX;
@property (nonatomic,assign) CGFloat tr_centerY;
@property (nonatomic,assign) CGPoint tr_center;

@end

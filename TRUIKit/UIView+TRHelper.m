//
//  UIView+TRHelper.m
//  TRHelperKit
//
//  Created by caozhen@neusoft on 2017/1/3.
//  Copyright © 2017年 Neusoft. All rights reserved.
//

#import "UIView+TRHelper.h"

@implementation UIView (TRHelper)
// orgin
- (void)setTr_x:(CGFloat)tr_x {
    [self setTr_orgin:CGPointMake(tr_x, self.tr_y)];
}

- (CGFloat)tr_x {
    return self.frame.origin.x;
}


- (void)setTr_y:(CGFloat)tr_y {
    [self setTr_orgin:CGPointMake( self.tr_x, tr_y)];
}
- (CGFloat)tr_y {
    return self.frame.origin.y;
}
- (void)setTr_orgin:(CGPoint)tr_orgin {
    CGRect frame = self.frame;
    frame.origin = tr_orgin;
    self.frame = frame;
    
}

- (CGPoint)tr_orgin {
    return self.frame.origin;
}

// size
- (void)setTr_width:(CGFloat)tr_width {
    [self setTr_size:CGSizeMake(tr_width, self.tr_height)];
}
- (CGFloat)tr_width {
    return self.frame.size.width;
}

- (void)setTr_height:(CGFloat)tr_height {
    [self setTr_size:CGSizeMake(self.tr_width, tr_height)];
}
-(CGFloat)tr_height {
    return self.frame.size.height;
}

- (void)setTr_size:(CGSize)tr_size {
    CGRect frame = self.frame;
    frame.size = tr_size;
    self.frame = frame;
}

- (CGSize)tr_size {
    return self.frame.size;
}
// center

- (void)setTr_centerX:(CGFloat)tr_centerX {
    [self setTr_center:CGPointMake(tr_centerX, self.tr_centerY)];
}

- (CGFloat)tr_centerX {
    return self.center.x;
}

- (void)setTr_centerY:(CGFloat)tr_centerY {
    [self setTr_center:CGPointMake(self.tr_centerX, tr_centerY)];
}

- (CGFloat)tr_centerY {
    return self.center.y;
}

- (void)setTr_center:(CGPoint)tr_center {
    
    self.center = tr_center;

}

- (CGPoint)tr_center {
    return self.center;
}


@end

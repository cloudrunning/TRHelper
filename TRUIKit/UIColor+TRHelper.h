//
//  UIColor+TRHelper.h
//  TRHelperKit
//
//  Created by caozhen@neusoft on 2017/1/3.
//  Copyright © 2017年 Neusoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (TRHelper)

// 颜色转图片
- (UIImage *)tr_toImage;
+ (UIImage *)tr_imageWithColor:(UIColor *)color;

- (UIImage *)tr_toImageWithSize:(CGSize)size;
+ (UIImage *)tr_imageWithColor:(UIColor *)color size:(CGSize)size;

@end

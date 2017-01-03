//
//  UIColor+TRHelper.m
//  TRHelperKit
//
//  Created by caozhen@neusoft on 2017/1/3.
//  Copyright © 2017年 Neusoft. All rights reserved.
//

#import "UIColor+TRHelper.h"

@implementation UIColor (TRHelper)

- (UIImage *)tr_toImage {
    return [UIColor tr_imageWithColor:self];
}
+ (UIImage *)tr_imageWithColor:(UIColor *)color {
    return [UIColor tr_imageWithColor:color size:CGSizeMake(1, 1)];
}

- (UIImage *)tr_toImageWithSize:(CGSize)size {
    return [UIColor tr_imageWithColor:self size:size];
}
+ (UIImage *)tr_imageWithColor:(UIColor *)color size:(CGSize)size {
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end

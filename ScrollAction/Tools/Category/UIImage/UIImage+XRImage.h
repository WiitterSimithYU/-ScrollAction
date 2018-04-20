//
//  UIImage+XRImage.h
//  SouGu
//
//  Created by sougu on 2017/5/26.
//  Copyright © 2017年 NextXavier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (XRImage)

//生成二维码
+ (UIImage *)creatWithCodeTitle:(NSString *)title andSize:(CGSize)size;

//获取指定大小、高清的图片。
+ (UIImage *)createNonInterpolatedUIImageFormCIImage:(CIImage *)image withSize:(CGSize) size;

/**
 创建纯色图片
 
 @param color color
 @return uiimage
 */
+ (UIImage *)imageWithColor:(UIColor *)color;

/**
 创建图片
 
 @param color 颜色
 @return 图片
 */
+ (UIImage *)createImageWithColor:(UIColor *)color;


@end

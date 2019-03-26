//
//  UIImage+Scale.h
//  LiveCL
//
//  Created by fan on 16/6/23.
//  Copyright © 2016年 tiange. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Scale)
+(UIImage *)resizeFitScaleWithSize:(CGSize)targetSize WithSourceImage:(UIImage *)sourceImage;

+ (UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize;
@end

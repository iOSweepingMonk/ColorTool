//
//  UIImage+maxSize.h
//  BeautyCamera
//
//  Created by tiange on 2017/6/9.
//  Copyright © 2017年 chenyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (maxSize)
/**
 *  处理宽高不超过最大尺寸
 *
 *  @param maxSize 最大尺寸
 *
 *  @return 新的图片对象
 */
- (UIImage*)imageWithMaxSize:(CGFloat)maxSize;
@end

//
//  UIImage+maxSize.m
//  BeautyCamera
//
//  Created by tiange on 2017/6/9.
//  Copyright © 2017年 chenyan. All rights reserved.
//

#import "UIImage+maxSize.h"

@implementation UIImage (maxSize)
/**
 *  处理宽高不超过最大尺寸
 *
 *  @param maxSize 最大尺寸
 *
 *  @return 新的图片对象
 */
- (UIImage*)imageWithMaxSize:(CGFloat)maxSize
{
    if(self.size.width<=maxSize&&self.size.height<=maxSize){
        return self;
    }
    CGSize imageSize = self.size;
    if(self.size.width>=self.size.height){
        if(self.size.width>maxSize){
            imageSize.width=maxSize;
            imageSize.height=maxSize*self.size.height/self.size.width;
        }
    }else{
        if(self.size.height>maxSize){
            imageSize.height=maxSize;
            imageSize.width=maxSize*self.size.width/self.size.height;
        }
    }
    // Create a graphics image context
    UIGraphicsBeginImageContext(imageSize);
    
    // Tell the old image to draw in this new context, with the desired
    // new size
    [self drawInRect:CGRectMake(0,0,(int)imageSize.width+1,(int)imageSize.height+1)];
    // Get the new image from the context
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // End the context
    UIGraphicsEndImageContext();
    
    // Return the new image.
    return newImage;
}
@end

//
//  UIView+Frame.h
//  ymwDispath
//
//  Created by 耿子杭 on 2018/2/9.
//  Copyright © 2018年 Ranmon  Chiu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

/*
 写分类：避免跟其他开发者发生冲突  加上前缀
 */
@property CGFloat view_x;
@property CGFloat view_y;
@property CGFloat view_width;
@property CGFloat view_height;
@property CGFloat view_centerX;
@property CGFloat view_centerY;

@end

//
//  UIView+Frame.m
//  ymwDispath
//
//  Created by 耿子杭 on 2018/2/9.
//  Copyright © 2018年 Ranmon  Chiu. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)
// x , y   setter getter 方法
- (void)setView_x:(CGFloat)view_x {
    CGRect rect = self.frame;
    rect.origin.x = view_x;
    self.frame = rect;
}

- (CGFloat)view_x {
    return self.frame.origin.x;
}

- (void)setView_y:(CGFloat)view_y {
    CGRect rect = self.frame;
    rect.origin.y = view_y;
    self.frame = rect;
}

- (CGFloat)view_y {
    return self.frame.origin.y;
}

/*
 width , height   setter getter 方法
 */
- (void)setView_width:(CGFloat)view_width {
    CGRect rect = self.frame;
    rect.size.width = view_width;
    self.frame = rect;
    
}

- (CGFloat)view_width {
    return self.frame.size.width;
}

- (void)setView_height:(CGFloat)view_height {
    CGRect rect = self.frame;
    rect.size.height = view_height;
    self.frame = rect;
}

- (CGFloat)view_height {
    return self.frame.size.height;
}

// centerX , centerY   setter getter 方法
- (void)setView_centerX:(CGFloat)view_centerX {
    CGPoint center = self.center;
    center.x = view_centerX;
    self.center  =center;
}

- (CGFloat)view_centerX {
    return self.center.x;
}

- (void)setView_centerY:(CGFloat)view_centerY {
    CGPoint center = self.center;
    center.y = view_centerY;
    self.center  =center;
}

- (CGFloat)view_centerY {
    return self.center.y;
}

@end

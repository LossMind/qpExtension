//
//  UIColor+Hex.h
//  ymwDispath
//
//  Created by qlp1990 on 2018/2/7.
//  Copyright © 2018年 Ranmon  Chiu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)
+(UIColor *)colorWithHexString:(NSString *)color;
+(UIColor *)colorWithHexString:(NSString *)color alpha:(float)alpha;
@end

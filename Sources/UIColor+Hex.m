


//
//  UIColor+Hex.m
//  ymwDispath
//
//  Created by qlp1990 on 2018/2/7.
//  Copyright © 2018年 Ranmon  Chiu. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)
//外部接口
+(UIColor *)colorWithHexString:(NSString *)color{
    return [self createColorWithString:color alpha:1.0];
}
+(UIColor *)colorWithHexString:(NSString *)color alpha:(float)alpha{
    return [self createColorWithString:color alpha:alpha];
}
//内部方法
+(UIColor *)createColorWithString:(NSString *)color alpha:(float)alpha{
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    // 字符串应该是6或8个字符
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    // 如果出现带0 x
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor clearColor];
    // 分离成r,g,b子字符串
    NSRange range;
    range.location = 0;
    range.length = 2;
    // r
    NSString *rString = [cString substringWithRange:range];
    // g
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    // b
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    // 扫描值
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}
@end

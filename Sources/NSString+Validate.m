//
//  NSString+Validate.m
//  ymwDispath
//
//  Created by 耿子杭 on 2018/2/8.
//  Copyright © 2018年 Ranmon  Chiu. All rights reserved.
//

#import "NSString+Validate.h"

@implementation NSString (Validate)

//手机号码校验
+ (BOOL)validateMobilePhone:(NSString *)phoneNumber {
    NSString *phoneRegex = @"^(13[0-9]|14[5|7]|15[0-9]|18[0-9])-?\\d{4}-?\\d{4}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
    return [phoneTest evaluateWithObject:phoneNumber];
}

@end

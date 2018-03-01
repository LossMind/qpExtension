//
//  NSString+Validate.h
//  ymwDispath
//
//  Created by 耿子杭 on 2018/2/8.
//  Copyright © 2018年 Ranmon  Chiu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Validate)

//手机号码校验
+ (BOOL)validateMobilePhone:(NSString *)phoneNumber;

@end

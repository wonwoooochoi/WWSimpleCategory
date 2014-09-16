//
//  NSArray+Simple.h
//  WWSimpleCategory
//
//  Created by ww on 14/9/16.
//  Copyright (c) 2014년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (JSON)

/*!
 @brief Array를 JSON 형식의 문자열로 변환. Array에 포함된 객체는 NSString, NSNumber 등 문자열로 변환 가능한 객체이어야 함.
 @brief ex) [a, b, c].
 @return JSON 문자열.
 */
- (NSString *)JSONString;

@end

//
//  NSData+Simple.m
//  WWSimpleCategory
//
//  Created by ww on 14/9/16.
//  Copyright (c) 2014년 Won Woo Choi. All rights reserved.
//

#import "NSData+Simple.h"

@implementation NSData (Base64)

- (NSString *)string {
	
	return [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
	
}

- (NSString *)base64EncodedString {
	
	return [self base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];

}


- (NSData *)base64EncodedData {
	
	return [self base64EncodedDataWithOptions:NSDataBase64Encoding64CharacterLineLength];
	
}

- (NSData *)base64DecodedData {
	
	return [[NSData alloc] initWithBase64EncodedData:self options:0];
	
}

@end

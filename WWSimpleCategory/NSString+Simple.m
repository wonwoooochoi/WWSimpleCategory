//
//  NSString+Simple.m
//  WWSimpleCategory
//
//  Created by ww on 14/9/16.
//  Copyright (c) 2014년 Won Woo Choi. All rights reserved.
//

#import "NSString+Simple.h"

@implementation NSString (Base64)

- (NSData *)data {
	
	return [self dataUsingEncoding:NSUTF8StringEncoding];
	
}


- (NSData *)base64EncodedData {
	
	return [[self data] base64EncodedDataWithOptions:NSDataBase64Encoding64CharacterLineLength];
	
}


- (NSString *)base64EncodedString {
	
	return [[self data] base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
	
}


- (NSString *)base64DecodedString {
	
	NSData *decodedData = [[NSData alloc] initWithBase64EncodedString:self options:0];
	return [[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding];
	
}

@end

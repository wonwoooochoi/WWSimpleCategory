//
//  NSDictionary+Simple.m
//  WWSimpleCategory
//
//  Created by ww on 14/9/16.
//  Copyright (c) 2014년 Won Woo Choi. All rights reserved.
//

#import "NSDictionary+Simple.h"

@implementation NSDictionary (JSON)

- (NSString *)JSONString {
	
	NSString *jsonString = nil;
	
	if ([NSJSONSerialization isValidJSONObject:self]) {
		
		NSError *error = nil;
		NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
																			options:NSJSONWritingPrettyPrinted
																			  error:&error];
		
		if (jsonData) {
			
			jsonString = [[NSString alloc] initWithData:jsonData
														  encoding:NSUTF8StringEncoding];
			
		}
		
		if (error) NSLog(@"ERROR: %@", error.localizedDescription);
		
	}
	else {
		
		NSLog(@"ERROR: This array can't convert to JSON string");
		
	}
	
	
	return jsonString;
	
}

@end

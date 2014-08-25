//
//  NSMutableArray.h
//  videoplayrecord
//
//  Created by Omer on 8/25/14.
//  Copyright (c) 2014 Javaid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (NullInit)
+(NSMutableArray *)mutableNullArrayWithSize:(NSUInteger)size;
+(NSMutableArray *)mutableNullArraysWithVisualFormat:(NSString *)string;
@end
//
//  Pixels.h
//  videoplayrecord
//
//  Created by Omer on 8/25/14.
//  Copyright (c) 2014 Javaid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pixels : NSObject
//package com.app.filmkit.image;

{
    
}

@property int width;
@property int height;


@property int originalWidth;

@property int originalHeight;

@property NSMutableArray *pixels;


@property NSMutableArray *originalPixels;


@property NSMutableArray *RGB1;
@property NSMutableArray *RGB2;
//@property NSMutableArray *RGB1 = [NSMutableArray mutableNullArraysWithVisualFormat:@"[3][12]"]; // 2-Dimensional Array

//@property NSString *RGB2[][];



@end

//
//  Pixels.m
//  videoplayrecord
//
//  Created by Omer on 8/25/14.
//  Copyright (c) 2014 Javaid. All rights reserved.
//

#import "Pixels.h"
#import "NSMutableArray.h"
@interface Pixels()

@end



@implementation Pixels



@synthesize originalHeight;

@synthesize originalWidth;
@synthesize width;
@synthesize height;
@synthesize pixels;
@synthesize RGB1;
@synthesize  RGB2;

-(void)Pixel

{
    
    originalWidth=0;
    
    originalHeight=0;
    
    width=0;
    
    height=0;
    // pixels = [NSMutableArray arrayWithObjects: nil];
  //  NSMutableArray* RGB1 = [[NSMutableArray alloc] init];
    
   RGB1 = [NSMutableArray mutableNullArraysWithVisualFormat:@"[][]"]; // 2-Dimensional Array
   RGB2 = [NSMutableArray mutableNullArraysWithVisualFormat:@"[][]"]; //2d array
  
    
    
    // RGB1=NULL;
    //RGB2=null;
    
}


@end

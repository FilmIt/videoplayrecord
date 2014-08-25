//
//  ImageEffect.h
//  classes
//
//  Created by Hooriya Anam on 14/08/2014.
//  Copyright (c) 2014 sophrosyne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Math.h>
@class Pixels;
@class Effect;

@interface ImageEffect : NSObject
{
    Pixels *p1;
    //Effect *temp;
    ImageEffect *img; //object made by myself for function calls
    
    /* package com.app.filmkit.image;
     
     import java.util.ArrayList;
     import java.util.Iterator;
     import java.util.Random;
     
     import com.app.filmkit.image.Effect.effectName;
     
     import android.graphics.Bitmap;
     import android.graphics.Color;
     
     public class ImageEffect implements EffectsInterface{
     */
    
    
    //end of class
}
//@property NSMutableArray *array;
-(void)ApplyEffect:(UIImage *) image1 :(Effect *) temp;
-(void) getpixels: (UIImage *) image :(Effect *) temp;
- (void) Flea;
-(void) Tint :(NSMutableArray *) pixels :(int)intensity;
-(void) GrayScale:(NSMutableArray *)pixels :(int) depth;
-(void) Pixelate:(UIImage *) photo :(int) intensity;
-(void) Blur:(UIImage *) photo :(int) intensity;//range from 0 to 100
-(void) Invert: (NSMutableArray *)pixels;
-(void) changeContrast:(NSMutableArray *) pixels :(float) intensity;
-(void) changeBrightness:(NSMutableArray *) pixels :(int) intensity;
- (void) changeSaturation:(NSMutableArray *) pixels :(float) amount;
-(void) UniColor:(NSMutableArray *) pixels :(int) depth :(double) red :(double) green :(double) blue;
- (void) Rotate: (NSMutableArray *)pixels :(int) direction;
- (void) Flip:(NSMutableArray *) pixels :(int) direction;
-(void) Mirror:(NSMutableArray *) pixels :(int) direction;
- (void) Bokeh_LightLeaks_LensFlare :(NSMutableArray *)pixels :(int) w :(int) h :(NSMutableArray *)RGB1 :(NSMutableArray *)RGB2 :(float) intensity;//seekbar range: 0-6
-(void) Vignette: (NSMutableArray *)pixels :(int) w :(int) h :(NSMutableArray *)RGB1  :(NSMutableArray *)RGB2 :(float) intensity;//seekbar range: 0-6
-(void) Vintage:(NSMutableArray *) pixels :(int) w :(int) h :(NSMutableArray *)RGB1 :(NSMutableArray *)RGB2 :(float) intensity;//seekbar
-(void) Frame: (NSMutableArray *) pixels :(int) w :(int) h :(NSMutableArray *) RGB1 :(NSMutableArray *) RGB2;//seekbar range: 0-6 range: 0-6
-(void) Old_Paper:(NSMutableArray *) pixels :(int) w :(int) h :(NSMutableArray *) RGB1 :(NSMutableArray *) RGB2 :(float) intensity;//seekbar range: 0-6
-(void) Twirl: (NSMutableArray *) pixels :(float) angle;

@end

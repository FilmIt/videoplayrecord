//
//  EffectsInterface.h
//  classes
//
//  Created by Hooriya Anam on 15/08/2014.
//  Copyright (c) 2014 sophrosyne. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EffectsInterface : NSObject

/*
 package com.app.filmkit.image;
 
 import java.util.ArrayList;
 import android.graphics.Bitmap;
 
 
 public interface EffectsInterface {
 */


//---------------------------------------Team 1---------------------------------------//
//- (UIImage *) ApplyEffect: (UIImage *) image1 :(Effect) e2;
//-(void) getpixels:(UIImage *) image :(Effect) temp;

/*
 //---------------------------------------Team 3---------------------------------------//
 public Bitmap ApplyEffect(Bitmap image1,ArrayList<Effect> e2);
 public void getpixels(Bitmap image);
 */
//-----------------------------------EffectsInterface-----------------------------------//

- (void) Flea;

-(void) Tint :(NSMutableArray *) pixels :(int)intensity;//range of seek bar 0-200

-(void) GrayScale:(NSMutableArray *)pixels :(int) depth;

-(void) Pixelate:(UIImage *) photo :(int) intensity;//range from 0 to 100

-(void) Blur:(UIImage *) photo :(int) intensity;//range from 0 to 100

-(void) Invert: (NSMutableArray *)pixels;

-(void) changeContrast:(NSMutableArray *) pixels :(float) intensity;//range -255 to 255

-(void) changeBrightness:(NSMutableArray *) pixels :(int) intensity;//range -255 to 255

- (void) changeSaturation:(NSMutableArray *) pixels :(float) amount; //seek bar range 0-200

-(void) UniColor:(NSMutableArray *) pixels :(int) depth :(double) red :(double) green :(double) blue;//need 3 seekbars

- (void) Rotate: (NSMutableArray *)pixels :(int) direction;//greater than 0 " > 0" ->rotate right, less than or equal to 0 "<= 0" ->rotate left

- (void) Flip:(NSMutableArray *) pixels :(int) direction;//greater than 0 " > 0" ->flip horizontally, less than or equal to 0 "<= 0" ->flip vertically

-(void) Mirror:(NSMutableArray *) pixels :(int) direction;//greater than 0 " > 0" ->mirror horizontally, less than or equal to 0 "<= 0" ->mirror vertically

- (void) Bokeh_LightLeaks_LensFlare :(NSMutableArray *)pixels :(int) w :(int) h :(NSMutableArray *)RGB1 :(NSMutableArray *)RGB2 :(float) intensity;//seekbar range: 0-6

-(void) Vignette: (NSMutableArray *)pixels :(int) w :(int) h :(NSMutableArray *)RGB1  :(NSMutableArray *)RGB2 :(float) intensity;//seekbar range: 0-6

-(void) Vintage:(NSMutableArray *) pixels :(int) w :(int) h :(NSMutableArray *)RGB1 :(NSMutableArray *)RGB2 :(float) intensity;//seekbar range: 0-6

-(void) Frame: (NSMutableArray *) pixels :(int) w :(int) h :(NSMutableArray *) RGB1 :(NSMutableArray *) RGB2;//seekbar range: 0-6 range: 0-6

-(void) Old_Paper:(NSMutableArray *) pixels :(int) w :(int) h :(NSMutableArray *) RGB1 :(NSMutableArray *) RGB2 :(float) intensity;//seekbar range: 0-6

-(void) Twirl: (NSMutableArray *) pixels :(float) angle;// range 0-10

@end

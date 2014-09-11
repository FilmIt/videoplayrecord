//
//  CustomEffects.m
//  videoplayrecord
//
//  Created by Omer on 8/25/14.
//  Copyright (c) 2014 Javaid. All rights reserved.
//

#import "CustomEffects.h"

@implementation CustomEffects
/*
 package com.app.filmkit.image;
 
 
 import com.app.filmkit.image.Effect.effectName;
 import com.app.filmkit.image.Effect.overlayNames;
 public class CustomEffects {
 */
//public enum effectName{RESET, Flea,Tint,Grayscale,Pixelate,Blur,Mirror,changeBrightness,changeContrast,Invert,changeSaturation,Rotate, Flip, UniColor, Bokeh, Vintage, Vignette, Old, LensFlare, LightLeaks, Frame, Paper, Twirl};
//private effectName EffectToApply;


-(void)CustomEffects;
{
    
    EffectToApply=NULL;
    prevEffect=NULL;
    Intensity=0;
    Red=0;
    Green=0;
    Blue=0;
    overlayType=NULL;
    overlayName=NULL;
}
/*
 public CustomEffects(CustomEffects arg)
 {
 EffectToApply=arg.EffectToApply;
 prevEffect=arg.prevEffect;
 Intensity=arg.Intensity;
 Red=arg.Red;
 Green=arg.Green;
 Blue=arg.Blue;
 overlayName=arg.overlayName;
 overlayType=arg.overlayType;
 }
 */
-(NSString *) getOverlayName
{
    return overlayName;
}

-(void) setOverlayName :(NSString *) overlayName
{
    self.overlayName = overlayName;
}
- (NSString *) getOverlayType
{
    return overlayType;
}

- (void) setOverlayType :(NSString *) overlayType
{
    self.overlayType = overlayType;
}

-(NSString *) getPrevEffect
{
    return prevEffect;
}

-(void) setPrevEffect: (NSString *) prevEffect
{
    self.prevEffect = prevEffect;
}

-(double) getRed
{
    return Red;
}

-(void) setRed:(double) red
{
    Red = red;
}

-(double) getGreen {
    return Green;
}

-(void) setGreen: (double) green {
    Green = green;
}

-(double) getBlue
{
    return Blue;
}

-(void) setBlue:(double) blue {
    Blue = blue;
}

-(NSString *) getEffectToApply{
    return EffectToApply;
}

-(void) setEffectToApply: (NSString *) effectToApply
{
    EffectToApply = effectToApply;
}

-(float) getIntensity
{
    return Intensity;
}

-(void) setIntensity: (float) intensity
{
    Intensity = intensity;
}



@end

//
//  Effect.h
//  classes
//
//  Created by Hooriya Anam on 18/08/2014.
//  Copyright (c) 2014 sophrosyne. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    RESET, Flea,Tint,Grayscale,Pixelate,Blur,Mirror,changeBrightness,changeContrast,Invert,changeSaturation,Rotate, Flip, UniColor, Bokeh, Vintage, Vignette, Old, LensFlare, LightLeaks, Frame, Paper, Twirl
} EffectNames;

@interface Effect : NSObject
//package com.app.filmkit.image;
//import java.io.Serializable;

//import java.util.HashMap;



//import android.graphics.Bitmap;



//public class Effect implements Serializable{

{
    
    //enum effectName  {RESET, Flea,Tint,Grayscale,Pixelate,Blur,Mirror,changeBrightness,changeContrast,Invert,changeSaturation,Rotate, Flip, UniColor, Bokeh, Vintage, Vignette, Old, LensFlare, LightLeaks, Frame, Paper, Twirl};
    
    
    
    //enum effectName EffectToApply;
    EffectNames EffectToApply;
    
    //enum effectName prevEffect;
    EffectNames prevEffect;
    
    float Intensity;
    
    UIImage *SourceImage;
    UIImage *editedBitmap;
    UIImage *OverlayImage;
    
    //NSData *OverlayImage;
    //private Bitmap SourceImage;
    
    //private Bitmap editedBitmap;
    
    //private Bitmap OverlayImage;	//fir overlay effects like bokeh, vignette
    
    double Red,Green,Blue;	//for UniColor
    
    
    
    enum overlayNames{b1,b2,b3,b4,b5,b51,b6,b7,lf1,lf2,lf3,lf4,lf5,lf6,lf7,ll1,ll2,ll3,ll5,ll9,ll6,ll7,o1,o3,p1,p2,p3,p4,p5,p6,p11,vig1,vig2,vig3,vig4,vig5,vig6,vig7,vin1,vin2,vin3,vin4,vin5,vin6,vin7,vin8};
    
    
    enum overlayNames overlayType;
    
    NSString *overlayName;
    
}

//@property (strong, nonatomic) enum effectName {RESET, Flea,Tint,Grayscale,Pixelate,Blur,Mirror,changeBrightness,changeContrast,Invert,changeSaturation,Rotate, Flip, UniColor, Bokeh, Vintage, Vignette, Old, LensFlare, LightLeaks, Frame, Paper, Twirl};
//@property enum effectName EffectToApply;

//@property enum effectName prevEffect;
//@property (assign) enum effectName Type;


-(void) Effect;
-(EffectNames) getPrevEffect;
- (UIImage *) getEditedBitmap;
-(void) setEditedBitmap: (UIImage *) editedBitmap;
-(void) setOverlayImage: (UIImage *) overlayImage;
- (UIImage *) getOverlayImage;
- (void) setSourceImage: (UIImage *) sourceImage;
- (UIImage *) getSourceImage;
- (void) setIntensity :(float) intensity;
- (float) getIntensity;
- (EffectNames) getEffectToApply;
-(void) setEffectToApply: (EffectNames) effectToApply;
-(void) setBlue: (double) blue;
- (double) getBlue;
-(void) setRed: (double) red;
- (double) getRed;
-(void) setGreen: (double) green;
- (double) getGreen;

-(void) setPrevEffect:(EffectNames) prevEffect;
-(void) setOverlayType:(enum overlayNames) overlayType;
-(NSString *) getOverlayName;
-(void) setOverlayName: (NSString *)overlayName;
-(enum overlayNames) getOverlayType;


//used instead
//@property(readonly, copy) NSData *SourceImage;
//@property(readonly, copy) NSData *editedBitmap;
//@property(readonly, copy) NSData *OverlayImage;

@end


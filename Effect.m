//
//  Effect.m
//  classes
//
//  Created by Hooriya Anam on 18/08/2014.
//  Copyright (c) 2014 sophrosyne. All rights reserved.
//

#import "Effect.h"

@interface Effect()



// add the private enums here to work with

@end



@implementation Effect

//@property effectName EffectToApply;

//@property effectName prevEffect;



-(void) Effect

{
    // bitmap class not changed yet
    //INSTEAD OF NULL WE WRITE -1
    
    EffectToApply= -1;
    
    
    prevEffect=-1;
    
    Intensity=0;
    
    SourceImage=NULL ;
    
    OverlayImage=NULL;
    
    Red=0;
    
    Green=0;
    
    Blue=0;
    
    overlayType=-1; // WRITE -1 INSTEAD OF NULL
    
    overlayName=NULL;
    
    
}

//@synthesize  effectName {RESET, Flea,Tint,Grayscale,Pixelate,Blur,Mirror,changeBrightness,changeContrast,Invert,changeSaturation,Rotate, Flip, UniColor, Bokeh, Vintage, Vignette, Old, LensFlare, LightLeaks, Frame, Paper, Twirl};

/*
 
 //This second effect doesn't need to be converted cuz of cloud processing
 
 
 
 -(void) Effect(Effect)
 
 {
 
 EffectToApply=arg.EffectToApply;
 
 prevEffect=arg.prevEffect;
 
 Intensity=arg.Intensity;
 
 SourceImage=arg.SourceImage;
 
 OverlayImage=arg.OverlayImage;
 
 Red=arg.Red;
 
 Green=arg.Green;
 
 Blue=arg.Blue;
 
 editedBitmap = arg.editedBitmap;
 
 overlayName=arg.overlayName;
 
 overlayType=arg.overlayType;
 
 }
 
 */



-(NSString *) getOverlayName

{
    
    return overlayName;
    
}



-(void) setOverlayName: (NSString *)overlayName

{
    
    
    self.overlayName = overlayName;
    
}



-(enum overlayNames) getOverlayType

{
    
    return overlayType;
    
}



-(void) setOverlayType:(enum overlayNames) overlayType

{
    
    self.overlayType = overlayType;
    
}



-(EffectNames) getPrevEffect

{
    
    return prevEffect;
    
}



-(void) setPrevEffect:(EffectNames) prevEffect

{
    
    self.prevEffect = prevEffect;
    
}



-(double) getRed

{
    
    return Red;
    
}



- (void) setRed: (double) red

{
    
    Red = red;
    
}



-(double) getGreen

{
    
    return Green;
    
}



- (void) setGreen:(double) green

{
    
    Green = green;
    
}



- (double) getBlue

{
    
    return Blue;
    
}



-(void) setBlue: (double) blue

{
    
    Blue = blue;
    
}



- (EffectNames) getEffectToApply

{
    
    return EffectToApply;
    
}



- (void) setEffectToApply: (EffectNames) effectToApply

{
    
    EffectToApply = effectToApply;
    
}



- (float) getIntensity

{
    
    return Intensity;
    
}



- (void) setIntensity :(float) intensity

{
    
    Intensity = intensity;
    
}



/* Search for the replacement of Bitmap class */

- (UIImage *) getSourceImage

{
    
    return SourceImage;
    
}



- (void) setSourceImage: (UIImage *) sourceImage

{
    
    SourceImage = sourceImage;
    
}



- (UIImage *) getOverlayImage

{
    
    return OverlayImage;
    
}



-(void) setOverlayImage: (UIImage *) overlayImage

{
    
    OverlayImage = overlayImage;
    
}


-(void) setEditedBitmap: (UIImage *) editedBitmap {
    
    self.editedBitmap = editedBitmap;
    
}



- (UIImage *) getEditedBitmap

{
    
    return editedBitmap;
    
}




@end

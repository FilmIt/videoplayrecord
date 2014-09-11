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
/*
{
    Pixels *p1;
    //Effect *temp;
    ImageEffect *img; //object made by myself for function calls
}
@property NSMutableArray *array;
*/

+ (UIImage *) ApplyEffect:(Effect *)temp onImage:(UIImage *)image;

+ (UIImage *) Flea:(UIImage *)image;
+ (UIImage *) Tint:(UIImage *)image withIntensity:(int)intensity;
+ (UIImage *) GrayScale:(UIImage *)image withIntensity:(int)intensity;
+ (UIImage *) Pixelate:(UIImage *)image withIntensity:(int)intensity;
+ (UIImage *) Blur:(UIImage *)image withIntensity:(int)intensity;//range from 0 to 100
+ (UIImage *) Invert:(UIImage *)image;
+ (UIImage *) changeContrast:(UIImage *)image withIntensity:(int)intensity;
+ (UIImage *) changeBrightness:(UIImage *)image withIntensity:(int)intensity;
+ (UIImage *) changeSaturation:(UIImage *)image withIntensity:(int)intensity;
+ (UIImage *) UniColor:(UIImage *)image withDepth:(int)depth withRed:(double)red andGreen:(double)green andBlue:(double)blue;
+ (UIImage *) Rotate:(UIImage *)image withDirection:(int)direction;
+ (UIImage *) Flip:(UIImage *)image withDirection:(int)direction;
+ (UIImage *) Mirror:(UIImage *)image withDirection:(int)direction;
+ (UIImage *) Bokeh_LightLeaks_LensFlare:(UIImage *)image withOverlay:(UIImage *)overlayImage withIntensity:(int)intensity;
+ (UIImage *) Vignette:(UIImage *)image withOverlay:(UIImage *)overlayImage withIntensity:(int)intensity;
+ (UIImage *) Vintage:(UIImage *)image withOverlay:(UIImage *)overlayImage withIntensity:(int)intensity;
+ (UIImage *) Frame:(UIImage *)image withOverlay:(UIImage *)overlayImage withIntensity:(int)intensity;
+ (UIImage *) Old_Paper:(UIImage *)image withOverlay:(UIImage *)overlayImage withIntensity:(int)intensity;
+ (UIImage *) Twirl:(UIImage *)image withAngle:(int)angle;

@end

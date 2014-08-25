//
//  ImageEffect.m
//  classes
//
//  Created by Hooriya Anam on 14/08/2014.
//  Copyright (c) 2014 sophrosyne. All rights reserved.
//

#import "ImageEffect.h"
#import "Pixels.h"
#import "Effect.h"
#import "NSMutableArray.h"

@implementation ImageEffect

//For Team1
-(UIImage *)ApplyEffect:(UIImage *) image1 :(Effect *) temp

{
    if([temp getPrevEffect]!=-1) //always true what we require instead of Null write -1
    {[img getpixels :image1 :temp];}
    else if([temp getPrevEffect]==-1 && ([temp getPrevEffect]!=[temp getEffectToApply]))// if not true it must be false
    {[img getpixels :image1 :temp];}
    
  //  UIColor* c= [UIColor purpleColor];
    
    switch([temp getEffectToApply])
    {
            //case Flea:
            //	[img Flea];
            //	break;
		case Tint:
			[img Tint :[p1 originalPixels] :(int)[temp getIntensity]];
            break;
            
		case Grayscale:
            [img GrayScale:[p1 originalPixels] :(int)[temp getIntensity]];
			break;
            //case Pixelate:
            //	[img Pixelate: image1 :(int)[temp getIntensity]];
            //	break;
            //case Blur:
            //	[img Blur :image1  :(int)[temp getIntensity]];
            //	break;
		case Invert:
			[img Invert:[p1 originalPixels]];
			break;
		case changeBrightness:
			[img changeBrightness:[p1 originalPixels] :(int)[temp getIntensity]];
			break;
		case changeContrast:
            [img changeContrast:[p1 originalPixels] :[temp getIntensity]];
			break;
		case changeSaturation:
			[img changeSaturation:[p1 originalPixels] :[temp getIntensity]];
			break;
		case Rotate:
			[img Rotate: [p1 originalPixels] :(int)[temp getIntensity]];
			break;
		case Flip:
            [img Flip:[p1 originalPixels ] :(int)[temp getIntensity ]];
			break;
		case Mirror:
			[img Mirror:[p1 originalPixels] :(int)[temp getIntensity]];
			break;
		case UniColor:
			[img UniColor:[p1 originalPixels] :5 :[temp getRed] :[temp getGreen] :[temp getBlue]];
			break;
		case Twirl:
			[img Twirl:[p1 originalPixels] :[temp getIntensity]];
			break;
		case Vintage:
			[img Vintage:[p1 originalPixels] :[p1 width] :[p1 height] :[p1 RGB1] :[p1 RGB2] :[temp getIntensity]];
            break;
		case Vignette:
			[img Vignette:[p1 originalPixels] :[p1 width] :[p1 height] :[p1 RGB1] :[p1 RGB2] :[temp getIntensity]];
	        break;
		case Bokeh:
		case LensFlare:
		case LightLeaks:
            [img  Bokeh_LightLeaks_LensFlare: [p1 originalPixels] :[p1 width]:[p1 height] :[p1 RGB1] :[p1 RGB2] :[temp getIntensity]];
            break;
		case Frame:
			[img Frame :[p1 originalPixels] :[p1 width] :[p1 height] :[p1 RGB1] :[p1 RGB2]];
			break;
		case Old:
		case Paper:
			[img Old_Paper:[p1 originalPixels] :[p1 width ] :[p1 height ] :[p1 RGB1 ] :[p1 RGB2 ] :[temp getIntensity]];
			break;
		case RESET:
			return image1;
            
    };
    //remove the next line when bitmap handled please
    return image1;
}
/*(UIImage *)returnBitmap = UIImage createBitmap(p1.width, p1.height, Bitmap.Config.ARGB_8888);
 returnBitmap.setPixels(p1.pixels, 0, p1.width, 0, 0, p1.width, p1.height);
 return returnBitmap;
 }
 */

/*
 //For Team1
 -(void) getpixels: (UIImage *) image :(Effect *) temp
 {
 p1.width= (int) image.size.width;
 p1.height=(int) image.size.height;
 int size= ([p1 width]*[p1 height]);
 
 // CGSize F= *(CGSize *) size;
 
 NSMutableArray *array = [NSMutableArray arrayWithCapacity:[p1 width]*[p1 height]];
 // To add an int to the array you will have to wrap it with a NSNumber so it will be an object and not a primitive, for example to add the primitive 31 int:
 //[array addObject:@(31)] EXAMPLE
 
 p1.pixels=array;
 p1.originalPixels=array;
 // image.getPixels(p1.pixels, 0, p1.width, 0, 0, p1.width, p1.height);
 // image.getPixels(p1.originalPixels, 0, p1.width, 0, 0, p1.width, p1.height);
 p1.originalHeight=p1.height;
 p1.originalWidth=p1.width;
 
 if([temp getEffectToApply]==Bokeh || [temp getEffectToApply] ==Frame || [temp getEffectToApply] == LensFlare || [temp getEffectToApply] == LightLeaks || [temp getEffectToApply]== Old || [temp getEffectToApply]== Paper || [temp getEffectToApply]== Vignette ||[temp getEffectToApply]== Vintage
 )
 {
 //UIImage * a= UIImage.createScaledBitmap(temp.getOverlayImage(),p1.width, p1.height, true);
 
 
 NSMutableArray *pixels2 = [NSMutableArray arrayWithCapacity:[p1 width]*[p1 height]];
 // To add an int to the array you will have to wrap it with a NSNumber so it will be an object and not a primitive, for example to add the primitive 31 int:
 //[array addObject:@(31)] EXAMPLE
 
 // int pixels2 = new int[p1.width*p1.height];
 //  p1.RGB1 = new int[4][p1.width*p1.height];
 
 p1.RGB2 = new int[4][p1.width*p1.height];
 int index = 0;
 a.getPixels(pixels2, 0, p1.width, 0, 0, p1.width, p1.height);
 for (int x = 0; x < p1.width; x++) {
 for (int y = 0; y < p1.height; y++) {
 p1.RGB1[0][index] = (p1.originalPixels[index] >> 16) & 0xFF;
 p1.RGB1[1][index] = (p1.originalPixels[index] >> 8) & 0xFF;
 p1.RGB1[2][index] = p1.originalPixels[index] & 0xFF;
 p1.RGB1[3][index] = (p1.originalPixels[index] >> 24) & 0xFF;
 
 p1.RGB2[0][index] = (pixels2[index] >> 16) & 0xFF;
 p1.RGB2[1][index] = (pixels2[index] >> 8) & 0xFF;
 p1.RGB2[2][index] = pixels2[index] & 0xFF;
 p1.RGB2[3][index] = (pixels2[index] >> 24) & 0xFF;
 
 ++index;
 }
 }
 }
 }
 */


/*
 //RANDOM NUMBER REPLACEMENT!
 - (void) Flea
 {
 Random random = new Random();
 int index = 0;
 for(int y = 0; y < p1.height; ++y) {
 for(int x = 0; x < p1.width; ++x) {
 // get random color
 p1.pixels[index] |=  0xff000000 |random.nextInt(0xFF)<<16 |
 random.nextInt(0xFF) <<8 | random.nextInt(0xFF);
 index++;
 }
 }
 }
 */

-(void) Tint :(NSMutableArray *)pixels :(int) intensity
{
    intensity+=20;
    int RY, BY, RYY, GYY, BYY, R, G, B, Y;
    double angle = (3.14 * (double)intensity) / 180;
    int index=0;
    int S = (int)(256 * sin(angle));
    int C = (int)(256 * cos(angle));
    int r,g,b;
    for (int y = 0; y < [p1 height]; y++)
        for (int x = 0; x < [p1 width]; x++)
        {
            NSNumber* rgNumber = [pixels objectAtIndex:index];
            
            r = ([rgNumber intValue] >> 16) & 0xff;
            g= ([rgNumber intValue] >> 8) & 0xff;
            b= ([rgNumber intValue]) & 0xff;
            RY = ( 70 * r - 59 * g - 11 * b ) / 100;
            //GY = (-30 * r + 41 * g - 11 * b ) / 100;
            BY = (-30 * r - 59 * g + 89 * b ) / 100;
            Y  = ( 30 * r + 59 * g + 11 * b ) / 100;
            RYY = ( S * BY + C * RY ) / 256;
            BYY = ( C * BY - S * RY ) / 256;
            GYY = (-51 * RYY - 19 * BYY ) / 100;
            R = Y + RYY;
            R = ( R < 0 ) ? 0 : (( R > 255 ) ? 255 : R );
            G = Y + GYY;
            G = ( G < 0 ) ? 0 : (( G > 255 ) ? 255 : G );
            B = Y + BYY;
            B = ( B < 0 ) ? 0 : (( B > 255 ) ? 255 : B );
            //[pixels insertObject:myObject atIndex:x]
            int newNumber = 0xff000000 | (R << 16) | (G << 8 ) | B;
            
            NSNumber *yourNumber = [NSNumber numberWithInt:newNumber];
            [pixels insertObject:yourNumber atIndex:index];
            index++;
        }
    
}

-(void) GrayScale:(NSMutableArray *)pixels :(int) depth
{
    // constant factors
    const double GS_RED = 0.299;
    const double GS_GREEN = 0.587;
    const double GS_BLUE = 0.114;
    
    // pixel information
    int R, G, B;
    
    // get image size
    
    int index = 0;
    // scan through every single pixel
    for(int x = 0; x < [p1 width]; ++x) {
        for(int y = 0; y < [p1 height]; ++y) {
            // get one pixel color
            NSNumber* rgNumber = [pixels objectAtIndex:index];
            
            R= ([rgNumber intValue] >> 16) & 0xFF;
            G= ([rgNumber intValue] >> 8) & 0xFF;
            B= ([rgNumber intValue]) & 0xFF;
            
            // take conversion up to one single value
            R = G = B = (int)(GS_RED * R + GS_GREEN * G + GS_BLUE * B);
            R -= (depth );
            if(R < 0) { R = 0; }
            
            G -= (depth );
            if(G < 0) { G = 0; }
            
            B -= (depth );
            if(B < 0) { B = 0; }
            // set new pixel color to output bitmap
            // p1.pixels[index] = 0xff000000 | (R << 16) | (G << 8) | B;
            
            int newNumber = 0xff000000 | (R << 16) | (G << 8 ) | B;
            
            NSNumber *yourNumber = [NSNumber numberWithInt:newNumber];
            [pixels insertObject:yourNumber atIndex:index];
            ++index;
        }
    }
    
    
}

/*
 -(void) Pixelate:(UIImage *) photo :(int) intensity//range from 0 to 100
 {
 if(intensity==0)
 {
 [photo getPixels:[p1 pixels] :[0] :[p1 width] :[0] :[0]  :[p1 width] :[p1 height]];
 }
 else
 {
 int max;
 
 if(p1.height>p1.width)
 max=p1.height;
 else
 max=p1.width;
 intensity=100-intensity;
 
 if(intensity>max)
 intensity=max;
 
 if(intensity<4)
 intensity=4;
 
 Bitmap temp=Bitmap.createScaledBitmap(photo, intensity, intensity, false);
 temp=Bitmap.createScaledBitmap(temp, p1.width, p1.height, false);
 temp.getPixels(p1.pixels, 0, p1.width, 0, 0, p1.width, p1.height);
 temp.recycle();
 }
 }
 
 -(void) Blur:(UIImage *) photo :(int) intensity;//range from 0 to 100
 
 {
 if(intensity==0)
 {
 photo.getPixels(p1.pixels, 0, p1.width, 0, 0, p1.width, p1.height);
 }
 else
 {
 int max;
 
 if(p1.height>p1.width)
 max=p1.height;
 else
 max=p1.width;
 intensity=100-intensity;
 
 if(intensity>max)
 intensity=max;
 
 if(intensity<4)
 intensity=4;
 
 Bitmap temp=Bitmap.createScaledBitmap(photo, intensity, intensity, true);
 temp=Bitmap.createScaledBitmap(temp, p1.width, p1.height, true);
 temp.getPixels(p1.pixels, 0, p1.width, 0, 0, p1.width, p1.height);
 temp.recycle();
 }
 }
 */

-(void) Invert: (NSMutableArray *)pixels
{
    
    int index = 0;
    int R,G,B;
    for (int x = 0; x < p1.width; x++) {
        for (int y = 0; y < p1.height; y++) {
            
            NSNumber* rgNumber = [pixels objectAtIndex:index];
            
            R = ([rgNumber intValue] >> 16) & 0xff;
            G= ([rgNumber intValue] >> 8) & 0xff;
            B= ([rgNumber intValue]) & 0xff;
            
            B=255-B;
            G=255-G;
            R=255-R;
            if(R > 255) { R = 255; }
            else if(R < 0) { R = 0; }
            
            if(G > 255) { G = 255; }
            else if(G < 0) { G = 0; }
            
            if(B > 255) { B = 255; }
            else if(B < 0) { B = 0; }
            
            //p1.pixels[index] = 0xff000000 | (R << 16) | (G << 8) | B;
            
            int newNumber = 0xff000000 | (R << 16) | (G << 8 ) | B;
            
            NSNumber *yourNumber = [NSNumber numberWithInt:newNumber];
            [pixels insertObject:yourNumber atIndex:index];
            
            ++index;
        }
    }
}

-(void) changeContrast:(NSMutableArray *) pixels :(float) intensity
{
    
    double contrast = pow((100 + intensity) / 100, 2);
    int index = 0;
    int R,G,B;
    for (int x = 0; x < p1.width; x++) {
        for (int y = 0; y < p1.height; y++) {
            //A = (pixels[index] >> 24) & 0xFF;
            NSNumber* rgNumber = [pixels objectAtIndex:index];
            
            R = ([rgNumber intValue] >> 16) & 0xff;
            G= ([rgNumber intValue] >> 8) & 0xff;
            B= ([rgNumber intValue]) & 0xff;
            
            //A+=intensity;
            B = (int)(((((B / 255.0) - 0.5) * contrast) + 0.5) * 255.0);
            G = (int)(((((G / 255.0) - 0.5) * contrast) + 0.5) * 255.0);
            R = (int)(((((R / 255.0) - 0.5) * contrast) + 0.5) * 255.0);
            if(R > 255) { R = 255; }
            else if(R < 0) { R = 0; }
            
            if(G > 255) { G = 255; }
            else if(G < 0) { G = 0; }
            
            if(B > 255) { B = 255; }
            else if(B < 0) { B = 0; }
            
            // p1.pixels[index] = 0xff000000 | (R << 16) | (G << 8) | B;
            int newNumber = 0xff000000 | (R << 16) | (G << 8 ) | B;
            
            NSNumber *yourNumber = [NSNumber numberWithInt:newNumber];
            [pixels insertObject:yourNumber atIndex:index];
            
            ++index;
        }
    }
}


-(void) changeBrightness:(NSMutableArray *) pixels :(int) intensity
{
    int index = 0;
    intensity-=220;
    int R,G,B;
    for (int x = 0; x < p1.width; x++) {
        for (int y = 0; y < p1.height; y++) {
            //A = (pixels[index] >> 24) & 0xFF;
            NSNumber* rgNumber = [pixels objectAtIndex:index];
            
            R = ([rgNumber intValue] >> 16) & 0xff;
            G= ([rgNumber intValue] >> 8) & 0xff;
            B= ([rgNumber intValue]) & 0xff;
            
            //A+=intensity;
            B+=intensity;
            G+=intensity;
            R+=intensity;
            if(R > 255) { R = 255; }
            else if(R < 0) { R = 0; }
            
            if(G > 255) { G = 255; }
            else if(G < 0) { G = 0; }
            
            if(B > 255) { B = 255; }
            else if(B < 0) { B = 0; }
            
            // p1.pixels[index] = 0xff000000 | (R << 16) | (G << 8) | B;
            
            int newNumber = 0xff000000 | (R << 16) | (G << 8 ) | B;
            
            NSNumber *yourNumber = [NSNumber numberWithInt:newNumber];
            [pixels insertObject:yourNumber atIndex:index];
            ++index;
        }
    }
}

- (void) changeSaturation:(NSMutableArray *) pixels :(float) amount
{
    
    amount=amount/100;
    if(amount<0.1)
        amount=0.1f;
    
    int red,blue,green,R,G,B;
    int index=0;
    
    for (int x = 0; x < p1.width; x++) {
        for (int y = 0; y <  p1.height; y++) {
            // alpha= ( pixels[index] >> 24) & 0xFF;
            NSNumber* rgNumber = [pixels objectAtIndex:index];
            
            red = ([rgNumber intValue] >> 16) & 0xff;
            green= ([rgNumber intValue] >> 8) & 0xff;
            blue= ([rgNumber intValue]) & 0xff;
            
            
            int v = ( red + green + blue )/3;
            R =  (int)(v + amount * (red-v)) ;
            G =  (int)(v + amount * (green-v)) ;
            B =  (int)(v + amount * (blue-v)) ;
            
            if(R > 255) { R = 255; }
            else if(R < 0) { R = 0; }
            
            if(G > 255) { G = 255; }
            else if(G < 0) { G = 0; }
            
            if(B > 255) { B = 255; }
            else if(B < 0) { B = 0; }
            
            // p1.pixels[index] = 0xff000000 | (R << 16) | (G << 8) |B;
            int newNumber = 0xff000000 | (R << 16) | (G << 8 ) | B;
            
            NSNumber *yourNumber = [NSNumber numberWithInt:newNumber];
            [pixels insertObject:yourNumber atIndex:index];
            
            
            ++index;
        }
    }
}


-(void) UniColor:(NSMutableArray *) pixels :(int) depth :(double) red :(double) green :(double) blue
{
    
    // constant grayscale
    const double GS_RED = 0.3;
    const double GS_GREEN = 0.59;
    const double GS_BLUE = 0.11;
    // color information
    int R, G, B;
    int index=0;
    // scan through all pixels
    for(int x = 0; x < p1.width; ++x) {
        for(int y = 0; y < p1.height; ++y) {
            // get color on each channel
            NSNumber* rgNumber = [pixels objectAtIndex:index];
            
            R = ([rgNumber intValue] >> 16) & 0xff;
            G= ([rgNumber intValue] >> 8) & 0xff;
            B= ([rgNumber intValue]) & 0xff;
            // apply grayscale sample
            B = G = R = (int)(GS_RED * R  + GS_GREEN * G + GS_BLUE * B);
            
            // apply intensity level for sepid-toning on each channel
            R += (depth * red);
            if(R > 255) { R = 255; }
            
            G += (depth * green);
            if(G > 255) { G = 255; }
            
            B += (depth * blue);
            if(B > 255) { B = 255; }
            
            // set new pixel color to output image
            // p1.pixels[index] = 0xff000000 | (R << 16) | (G << 8) | B;
            int newNumber = 0xff000000 | (R << 16) | (G << 8 ) | B;
            
            NSNumber *yourNumber = [NSNumber numberWithInt:newNumber];
            [pixels insertObject:yourNumber atIndex:index];
            
            
            
            ++index;
        }
    }
}

- (void) Rotate: (NSMutableArray *)pixels :(int) direction
{
    // int [] arr=new int[pixels.length];
    //considering pixels.length= [p1 width]*[p1 height];
    //[pixels count]= [p1 width]*[p1 height];
    
    //NSLog(@"The length is %lu",(unsigned long)[pixels count]);
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:([pixels count])];
    
    
    for(int i=0;i<[pixels count];i++)
        arr[i]=pixels[i];
    if(direction==1)
        direction=90;
    else if(direction==2)
        direction=180;
    else if(direction==3)
        direction=270;
    if(direction==90 || direction==270)
    {
        p1.pixels=  NULL;
        
        NSMutableArray *arr2 = [NSMutableArray arrayWithCapacity:([p1 originalHeight]*[p1 originalWidth])];
        //  p1.pixels=new int[p1.originalHeight*p1.originalWidth];
        
        p1.pixels=arr2;
        p1.height=p1.originalWidth;
        p1.width=p1.originalHeight;
    }
    else if(direction==180)
    {
        p1.pixels=  NULL;
        
        NSMutableArray *arr2 = [NSMutableArray arrayWithCapacity:([p1 originalWidth]*[p1 originalHeight])];
        
        p1.pixels=arr2;
        //p1.pixels=null;
        //p1.pixels=new int[p1.originalWidth*p1.originalHeight];
        p1.height=p1.originalHeight;
        p1.width=p1.originalWidth;
    }
    for (int i = 0; i < p1.width; i++) {
        for (int j = 0; j < p1.height; j++) {
            if(direction == 270 )
                p1.pixels[i+(p1.width*j)] = arr[(p1.height-j-1)+(p1.height*(p1.width-i-1))];
            else if(direction == 90 )
                p1.pixels[i+(p1.width*j)] = arr[j+(p1.height*i)];
            else if(direction == 180 )
                p1.pixels[i+(p1.width*(p1.height-j-1))] = arr[i+(p1.width*j)];
        }
    }
    
}


- (void) Flip:(NSMutableArray *) pixels :(int) direction
{
    // int [] arr;
    //arr=new int[pixels.length];
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:([pixels count])];
    
    
    for(int i=0;i<[pixels count];i++)
        arr[i]=pixels[i];
    for (int i = 0; i < p1.width; i++) {
        for (int j = 0; j < p1.height; j++) {
            if(direction > 0 )
                p1.pixels[(p1.width-i-1)+(p1.width*j)] = arr[i+(p1.width*j)];
            else
                p1.pixels[i+(p1.width*(p1.height-j-1))] = arr[i+(p1.width*j)];
        }
    }
}


-(void) Mirror:(NSMutableArray *) pixels :(int) direction
{
    //int [] arr;
    //arr=new int[pixels.length];
    
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:([pixels count])];
    for(int i=0;i<[pixels count];i++)
    {
        arr[i]=pixels[i];
        p1.pixels[i]=pixels[i];
    }
    if(direction==0)
    {
        for (int i = 0; i < p1.width; i++) {
            for (int j = 0; j < p1.height/2; j++) {
                p1.pixels[i+(p1.width*(p1.height-j-1))] = arr[i+(p1.width*j)];
            }
        }
    }
    else if(direction>0)
    {
        for (int i = 0; i < p1.width/2; i++) {
            for (int j = 0; j < p1.height; j++) {
                p1.pixels[(p1.width-i-1)+(p1.width*j)] = arr[i+(p1.width*j)];
            }
        }
    }
    
}

- (void) Bokeh_LightLeaks_LensFlare :(NSMutableArray *)pixels :(int) w :(int) h :(NSMutableArray *)RGB1 :(NSMutableArray *)RGB2 :(float) intensity//seekbar range: 0-6
{
    intensity+=3;
    double v2=intensity/10;
    double v1=1-v2;
    int index = 0;
    int R,G,B;
    for (int x = 0; x < w; x++) {
        for (int y = 0; y < h; y++) {
        
             //R=(int)((RGB1[0][index])+(RGB2[0][index]*v2));
            NSNumber* K= RGB1[0][index];
            NSNumber* L= RGB2[0][index];
             int M = [K integerValue];
            int N =[L integerValue]*v2;
            R=M+N;
          
            //G=(int)((RGB1[1][index])+(RGB2[1][index]*v2));
            K= RGB1[1][index];
            L= RGB2[1][index];
            M = [K integerValue];
            N =[L integerValue]*v2;
            G=M+N;

            
             //B=(int)((RGB1[2][index])+(RGB2[2][index]*v2));
            K= RGB1[2][index];
            L= RGB2[2][index];
            M = [K integerValue];
            N =[L integerValue]*v2;
            B=M+N;
            
            if(R > 255) { R = 255; }
            else if(R < 0) { R = 0; }
            
            if(G > 255) { G = 255; }
            else if(G < 0) { G = 0; }
            
            if(B > 255) { B = 255; }
            else if(B < 0) { B = 0; }
            // p1.pixels[index] = 0xff000000 | (R << 16) | (G << 8) | B;
            int newNumber = 0xff000000 | (R << 16) | (G << 8 ) | B;
            
            NSNumber *yourNumber = [NSNumber numberWithInt:newNumber];
            [pixels insertObject:yourNumber atIndex:index];
            
            
            ++index;
        }
    }
}


-(void) Vignette: (NSMutableArray *)pixels :(int) w :(int) h :(NSMutableArray *)RGB1  :(NSMutableArray *)RGB2 :(float) intensity//seekbar range: 0-6
{
    intensity+=3;
    double v2=intensity/10;
    double v1=1-v2;
    int index = 0;
    int R,G,B;
    for (int x = 0; x < w; x++) {
        for (int y = 0; y < h; y++) {
            
           
             
            // R=(int)((RGB1[0][index]*v1)+(RGB2[0][index]*v2));
            NSNumber* K= RGB1[0][index];
            NSNumber* L= RGB2[0][index];
            int M = [K integerValue]*v1;
            int N =[L integerValue]*v2;
            R=M+N;

            //G=(int)((RGB1[1][index]*v1)+(RGB2[1][index]*v2));
            K= RGB1[1][index];
            L= RGB2[1][index];
            M = [K integerValue]*v1;
            N =[L integerValue]*v2;
            G=M+N;
            
          //  B=(int)((RGB1[2][index]*v1)+(RGB2[2][index]*v2));
            K= RGB1[2][index];
            L= RGB2[2][index];
            M = [K integerValue]*v1;
            N =[L integerValue]*v2;
            B=M+N;
            
            if(R > 255) { R = 255; }
            else if(R < 0) { R = 0; }
            
            if(G > 255) { G = 255; }
            else if(G < 0) { G = 0; }
            
            if(B > 255) { B = 255; }
            else if(B < 0) { B = 0; }
            // p1.pixels[index] = 0xff000000 | (R << 16) | (G << 8) | B;
            int newNumber = 0xff000000 | (R << 16) | (G << 8 ) | B;
            
            NSNumber *yourNumber = [NSNumber numberWithInt:newNumber];
            [pixels insertObject:yourNumber atIndex:index];
            
            ++index;
        }
    }
}


-(void) Vintage:(NSMutableArray *) pixels :(int) w :(int) h :(NSMutableArray *)RGB1 :(NSMutableArray *)RGB2 :(float) intensity//seekbar range: 0-6
{
    intensity+=3;
    double v2=intensity/10;
    double v1=1-v2;
    int index = 0;
    int R,G,B;
    for (int x = 0; x < w; x++) {
        for (int y = 0; y < h; y++) {
           
             
             //R=(int)((RGB1[0][index])+(RGB2[0][index]*v2));
            NSNumber* K= RGB1[0][index];
            NSNumber* L= RGB2[0][index];
            int M = [K integerValue];
            int N =[L integerValue]*v2;
            R=M+N;
            
            //G=(int)((RGB1[1][index])+(RGB2[1][index]*v2));
            K= RGB1[1][index];
            L= RGB2[1][index];
            M = [K integerValue];
            N =[L integerValue]*v2;
            G=M+N;
            
            
            //B=(int)((RGB1[2][index])+(RGB2[2][index]*v2));
            K= RGB1[2][index];
            L= RGB2[2][index];
            M = [K integerValue];
            N =[L integerValue]*v2;
            B=M+N;
            
            R/=(1+v2);
            G/=(1+v2);
            B/=(1+v2);
            if(R > 255) { R = 255; }
            else if(R < 0) { R = 0; }
            
            if(G > 255) { G = 255; }
            else if(G < 0) { G = 0; }
            
            if(B > 255) { B = 255; }
            else if(B < 0) { B = 0; }
            // p1.pixels[index] = 0xff000000 | (R << 16) | (G << 8) | B;
            
            int newNumber = 0xff000000 | (R << 16) | (G << 8 ) | B;
            
            NSNumber *yourNumber = [NSNumber numberWithInt:newNumber];
            [pixels insertObject:yourNumber atIndex:index];
            
            ++index;
        }
    }
}


-(void) Frame: (NSMutableArray *) pixels :(int) w :(int) h :(NSMutableArray *) RGB1 :(NSMutableArray *) RGB2//seekbar range: 0-6
{
    int index = 0;
    int R=0,G=0,B=0;
    for (int x = 0; x < w; x++) {
        for (int y = 0; y < h; y++) {
            
             
             if(RGB2[3][index] <= 0)
             {
                 
            //R=RGB1[0][index];
                 NSNumber* K= RGB1[0][index];
                 R = [K integerValue];
                
            //G=RGB1[1][index];
                 K= RGB1[1][index];
                 G = [K integerValue];
                 
            //B=RGB1[2][index];
                 K= RGB1[2][index];
                 B = [K integerValue];
             }
             else if(RGB2[3][index] > 0)
             {
             //R=RGB2[0][index];
                 NSNumber* K= RGB2[0][index];
                 R = [K integerValue];
                 
             //G=RGB2[1][index];
                 K= RGB2[1][index];
                 G = [K integerValue];
                 
             //B=RGB2[2][index];
                 K= RGB2[2][index];
                 B = [K integerValue];
             }
            
            //  p1.pixels[index] = 0xff000000 | (R << 16) | (G << 8) | B;
            
            int newNumber = 0xff000000 | (R << 16) | (G << 8 ) | B;
            
            NSNumber *yourNumber = [NSNumber numberWithInt:newNumber];
            [pixels insertObject:yourNumber atIndex:index];
            
            
            ++index;
        }
    }
}


-(void) Old_Paper:(NSMutableArray *) pixels :(int) w :(int) h :(NSMutableArray *) RGB1 :(NSMutableArray *) RGB2 :(float) intensity//seekbar range: 0-6
{
    intensity+=3;
    double v2=intensity/10;
    double v1=1-v2;
    int index = 0;
    int R,G,B;
    for (int x = 0; x < w; x++) {
        for (int y = 0; y < h; y++) {
            
             //R=RGB1[0][index]*RGB2[0][index]/255;
            NSNumber* K= RGB1[0][index];
            NSNumber* L= RGB2[0][index];
            int M = [K integerValue];
            int N =[L integerValue]/255;
            R=M*N;
            
            
            //G=RGB1[1][index]*RGB2[1][index]/255;
            K= RGB1[1][index];
            L= RGB2[1][index];
            M = [K integerValue];
            N =[L integerValue]/255;
            G=M*N;
            
            // B=RGB1[2][index]*RGB2[2][index]/255;
            K= RGB1[2][index];
            L= RGB2[2][index];
            M = [K integerValue];
            N =[L integerValue]/255;
            B=M*N;
            
            
            // R=(int)((R)+(RGB2[0][index]*v2));
            K= RGB2[0][index];
            M = [K integerValue]*v2;
            R= R+M;
            
            
            // G=(int)((G)+(RGB2[1][index]*v2));
            K= RGB2[1][index];
            M = [K integerValue]*v2;
            G=G+M;

            //B=(int)((B)+(RGB2[2][index]*v2));
             
            K= RGB2[2][index];
            M = [K integerValue]*v2;
            B=B+M;
            
            R/=(1+v2);
            G/=(1+v2);
            B/=(1+v2);
            if(R > 255) { R = 255; }
            else if(R < 0) { R = 0; }
            
            if(G > 255) { G = 255; }
            else if(G < 0) { G = 0; }
            
            if(B > 255) { B = 255; }
            else if(B < 0) { B = 0; }
            //p1.pixels[index] = 0xff000000 | (R << 16) | (G << 8) | B;
            
            int newNumber = 0xff000000 | (R << 16) | (G << 8 ) | B;
            
            NSNumber *yourNumber = [NSNumber numberWithInt:newNumber];
            [pixels insertObject:yourNumber atIndex:index];
            
            ++index;
        }
    }
}


-(void) Twirl: (NSMutableArray *) pixels :(float) angle
{
    int index=0;
    if(angle==0)
    {
        for (int x = 0; x < p1.width; x++) {
            for (int y = 0; y < p1.height; y++) {
                p1.pixels[index]=pixels[index];
                index++;
            }
        }
    }
    else
    {
        int u, v;
        float radius;
        float hw=p1.width/2;
        float hh=p1.height/2;
        double cX = (float)p1.width * 0.5;
        double cY =  (float)p1.height * 0.5;
        if(p1.width>p1.height)
            radius=hw;
        else
            radius=hh;
        int R,G,B;
        //float radius2 = radius*radius;
        index=0;
        for (int x = 0; x < p1.width; x++) {
            for (int y = 0; y < p1.height; y++) {
                float dx = (float) (x-cX);
                float dy = (float) (y-cY);
                float distance = dx*dx + dy*dy;
                distance = (float)sqrt(distance);
                float a = (float) ((float)atan2(dy, dx) + angle * (radius-distance) / radius);
                u = (int) (cX + distance*(float)cos(a));
                v = (int) (cY + distance*(float)sin(a));
                if(u>=p1.width) u=p1.width-1;
                if(u<0) u=0;
                if(v>=p1.height) v=p1.height-1;
                if(v<0) v=0;
                index=x+(p1.width*y);
                NSNumber* rgNumber = [pixels objectAtIndex:index];
                
                R = ([rgNumber intValue] >> 16) & 0xff;
                G= ([rgNumber intValue] >> 8) & 0xff;
                B= ([rgNumber intValue]) & 0xff;
                index=u+(p1.width*v);
                //p1.pixels[index] = 0xff000000 | (R << 16) | (G << 8) | B;
                int newNumber = 0xff000000 | (R << 16) | (G << 8 ) | B;
                
                NSNumber *yourNumber = [NSNumber numberWithInt:newNumber];
                [pixels insertObject:yourNumber atIndex:index];
                
            }
        }
    }
}


@end

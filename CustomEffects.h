//
//  CustomEffects.h
//  videoplayrecord
//
//  Created by Omer on 8/25/14.
//  Copyright (c) 2014 Javaid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CustomEffects : NSObject
{
    NSString *EffectToApply;
    NSString *prevEffect;
    float Intensity;
    double Red,Green,Blue;	//for UniColor
    
    NSString *overlayType;
    NSString *overlayName;
}
@end

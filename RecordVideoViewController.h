//
//  RecordVideoViewController.h
//  videoplayrecord
//
//  Created by Omer on 7/24/14.
//  Copyright (c) 2014 Javaid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <MobileCoreServices/UTCoreTypes.h>
#import <AssetsLibrary/AssetsLibrary.h>

@interface RecordVideoViewController : UIViewController

-(IBAction)recordAndPlay:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *recordAndPlay;
-(BOOL)startCameraControllerFromViewController:(UIViewController*)controller
        usingDelegate:(id )delegate;
-(void)video:(NSString *)videoPath didFinishSavingWithError:(NSError *)error contextInfo:(void*)contextInfo;

@end

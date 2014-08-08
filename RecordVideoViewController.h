//
//  RecordVideoViewController.h
//  videoplayrecord
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <MobileCoreServices/UTCoreTypes.h>
#import <AssetsLibrary/AssetsLibrary.h>

@interface RecordVideoViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIButton *recordAndPlay;
-(BOOL)startCameraControllerFromViewController:(UIViewController*)controller
        usingDelegate:(id )delegate;
-(void)video:(NSString *)videoPath didFinishSavingWithError:(NSError *)error contextInfo:(void*)contextInfo;

@end

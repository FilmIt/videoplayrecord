//
//  EffectsViewController.m
//  videoplayrecord
//
//  Created by Shoaib on 08/09/2014.
//  Copyright (c) 2014 Javaid. All rights reserved.
//

#import "EffectsViewController.h"
#import "Effect.h"
#import "ImageEffect.h"

@interface EffectsViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *ProcessedImageView;

@end

@implementation EffectsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onProcessButtonPress:(UIButton *)sender {
    Effect *effect = [[Effect alloc] init];
    //EffectNames name = Tint;
    [effect setIntensity:3.0f];
    [effect setEffectToApply:Blur];
    UIImage *image = [self.ProcessedImageView image];
    
    image = [ImageEffect ApplyEffect:effect onImage:image];
    
    [self.ProcessedImageView setImage:image];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

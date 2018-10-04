//
//  ViewController.m
//  MyFirstApp
//
//  Created by ruroot on 10/4/18.
//  Copyright © 2018 Eray Alparslan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.catButton.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.mLabel.hidden = true;
    
    NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundID);
}



- (IBAction)catButtonPressed:(id)sender {
    
    self.mLabel.hidden = false;
    AudioServicesPlaySystemSound(soundID);
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(catDelay) userInfo:nil repeats:false];
}

-(void) catDelay {
    self.mLabel.hidden = true;
}


@end

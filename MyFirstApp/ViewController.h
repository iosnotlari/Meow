//
//  ViewController.h
//  MyFirstApp
//
//  Created by ruroot on 10/4/18.
//  Copyright © 2018 Eray Alparslan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
@interface ViewController : UIViewController {
    SystemSoundID soundID;
}

@property (weak, nonatomic) IBOutlet UILabel *mLabel;
@property (weak, nonatomic) IBOutlet UIButton *catButton;
- (IBAction)catButtonPressed:(id)sender;

@end


//
//  ViewController.m
//  MRP_ParamControl
//
//  Created by Jeff Gregorio on 11/7/12.
//  Copyright (c) 2012 Jeff Gregorio. All rights reserved.
//

#import "ViewController.h"

@implementation UIToggleButton


-(void) setHighlighted:(BOOL)highlighted
{
    //    if(highlighted) {
    //        self.backgroundColor = [self.mainColor darkerShade];
    //    } else {
    //        self.backgroundColor = self.mainColor;
    //    }
    //    [super setHighlighted:highlighted];
}


-(void) setSelected:(BOOL)selected
{
    //    if(selected) {
    //        self.backgroundColor = [self.mainColor darkerShade];
    //    } else {
    //        self.backgroundColor = self.mainColor;
    //    }
    //    [super setSelected:selected];
}

@end


@interface ViewController ()

@end

@implementation ViewController

@synthesize kObjectMasterVol;

// ====================================
// ========== Initialization ==========
// ====================================
- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    kParameterMuteButton_ = NO;
    kParameterBasicState_ = NO;
    kParameterReedsState_ = NO;
    kParameterCrescendoState_ = NO;
    kParameterBeatsState_ = NO;
    kParameterGlissSlowState_ = NO;
    kParameterGlissFastState_ = NO;    
    
    // Initialize slider values
    kParameterMasterVol_ = kObjectMasterVol.value = 1.0f;
    
    kParameterCurrentPatch_ = 0;
    
    kObjectBasic.tag = 1;
    kObjectReeds.tag = 2;
    
    kObjectCrescendo.tag = 3;
    kObjectBeats.tag = 4;
    kObjectGlissSlow.tag = 5;
    kObjectGlissFast.tag = 6;    
    
    // Set a heartbeat so iOS doesn't shut down the network connection when it's not being used
    [NSTimer scheduledTimerWithTimeInterval:100 target:self selector:@selector(heartbeat) userInfo:nil repeats:YES];
    
    // Set up OSC sender
//    hostName_ = "144.118.51.21";
    hostName_ = "10.0.1.196"; 
    portName_ = 7770;
    sender_.setup(hostName_, portName_);
}

-(bool) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
            toInterfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
 
// ====================================
// ==== Parameter Change Callbacks ====
// ====================================
//-(IBAction)hostNameChange:(id)sender
//{
//    UITextField *textField = (UITextField*)sender;
//    
//    hostName_ = *(string*)textField.text;
//
//    portName_ = 7770;
//    sender_.setup(hostName_, portName_);
//}
-(IBAction)masterVolChange:(id)sender
{
    // Update the internal variables
    UISlider *slider = (UISlider*)sender;
    kParameterMasterVol_ = slider.value;
    NSLog(@"Volume: %f", kParameterMasterVol_);
    
    // Send OSC to MRP
    ofxOscMessage message;
    
    message.setAddress("/mrp/ui/volume");
    message.addFloatArg(kParameterMasterVol_);
    sender_.sendMessage(message);
}

-(IBAction)muteButtnChange:(id)sender
{
    ofxOscMessage message;
    message.setAddress("/mrp/ui/volume");
    
    if (kParameterMuteButton_ == NO)
    {
        kParameterMuteButton_ = YES;
        kParameterPreviousMasterVol_ = kParameterMasterVol_;
        kParameterMasterVol_ = 0.0;
        kObjectMuteButton.alpha = 0.5;
        kObjectMuteButton.selected = YES;
        kObjectMasterVol.enabled = NO;
    }
    else
    {
        kParameterMuteButton_ = NO;
        kParameterMasterVol_ = kParameterPreviousMasterVol_;
        kObjectMuteButton.alpha = 1.0;
        kObjectMuteButton.selected = NO;
        kObjectMasterVol.enabled = YES;
    }
    
    // Update the slider for the GUI
    kObjectMasterVol.value = kParameterMasterVol_;
    
    // Send the OSC message
    message.addFloatArg(kParameterMasterVol_);
    sender_.sendMessage(message);
    
    NSLog(@"Mute Button Clicked");
}


-(IBAction)patchChange:(id)sender
{
    UIButton *button = (UIButton *)sender;
    
    ofxOscMessage message;
    message.setAddress("/mrp/ui/patch/set");
    message.addIntArg(button.tag);
    
    sender_.sendMessage(message);
    
    kParameterCurrentPatch_ = button.tag;
    
    // Set all buttons to off, set the sender on
    [self allButtonsOff];
    
    button.alpha = 0.5;
    button.selected = YES;
    
    NSLog(@"Patch Change: %d", kParameterCurrentPatch_);
}

// ====================================
// ========== OSC Callbacks ===========
// ====================================
// We do a heartbeat on iOS as the phone will shut down the network connection to save power
// this keeps the network alive as it thinks it is being used.
-(void) heartbeat
{
    ofxOscMessage message;
    message.setAddress("/misc/heartbeat");
//    message.addIntArg(ofGetFrameNum());
    sender_.sendMessage(message);
}

-(void) doSomethingElse
{
    while(YES)
    {
        NSLog(@"Doing something");
        usleep(1000000);        //! Value in microseconds
        
        //! In order to access data outside this new thread
        [self performSelectorOnMainThread:@selector(sendOSCcallback) withObject:nil waitUntilDone:YES];
    }
}

-(void) OSCcallback
{
    
    
    
}

-(void) allButtonsOff
{
    kObjectBasic.alpha = 1.0;
    kObjectBasic.selected = NO;
    
    kObjectReeds.alpha = 1.0;
    kObjectReeds.selected = NO;
    
    kObjectCrescendo.alpha = 1.0;
    kObjectCrescendo.selected = NO;
    
    kObjectBeats.alpha = 1.0;
    kObjectBeats.selected = NO;
    
    kObjectGlissSlow.alpha = 1.0;
    kObjectGlissSlow.selected = NO;
    
    kObjectGlissFast.alpha = 1.0;
    kObjectGlissFast.selected = NO;
}

@end



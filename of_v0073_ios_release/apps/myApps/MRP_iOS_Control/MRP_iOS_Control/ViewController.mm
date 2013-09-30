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
@synthesize kObjectCurrentPatchDisp;

// ====================================
// ========== Initialization ==========
// ====================================
- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    kParameterMuteButton_ = NO;
    kParameterMasterVol_ = 0.5;
    
    kParameterCurrentPatch_ = 0;
    kObjectCurrentPatchDisp.text = [NSString stringWithFormat:@"%d", kParameterCurrentPatch_];
    
//    [self.view setNeedsDisplay];
    
    int x_o = -265;
    int harmonicSliderPosition_y = 280;
    int harmonicSliderHeight     = 456;
    int harmonicSliderWidth      = 23;
    
    // Place the harmonic sliders
    kObjectHarmonic1.frame = CGRectMake(x_o + 110, harmonicSliderPosition_y, harmonicSliderHeight, harmonicSliderWidth);
    kObjectHarmonic2.frame = CGRectMake(x_o + 220, harmonicSliderPosition_y, harmonicSliderHeight, harmonicSliderWidth);
    kObjectHarmonic3.frame = CGRectMake(x_o + 330, harmonicSliderPosition_y, harmonicSliderHeight, harmonicSliderWidth);
    kObjectHarmonic4.frame = CGRectMake(x_o + 440, harmonicSliderPosition_y, harmonicSliderHeight, harmonicSliderWidth);
    kObjectHarmonic5.frame = CGRectMake(x_o + 550, harmonicSliderPosition_y, harmonicSliderHeight, harmonicSliderWidth);
    kObjectHarmonic6.frame = CGRectMake(x_o + 660, harmonicSliderPosition_y, harmonicSliderHeight, harmonicSliderWidth);
    kObjectHarmonic7.frame = CGRectMake(x_o + 770, harmonicSliderPosition_y, harmonicSliderHeight, harmonicSliderWidth);
    kObjectHarmonic8.frame = CGRectMake(x_o + 880, harmonicSliderPosition_y, harmonicSliderHeight, harmonicSliderWidth);
    kObjectHarmonic9.frame = CGRectMake(x_o + 990, harmonicSliderPosition_y, harmonicSliderHeight, harmonicSliderWidth);
    
    // Rotate the harmonic sliders
    kObjectHarmonic1.transform = CGAffineTransformRotate(kObjectHarmonic1.transform, M_PI_2);
    kObjectHarmonic2.transform = CGAffineTransformRotate(kObjectHarmonic2.transform, M_PI_2);
    kObjectHarmonic3.transform = CGAffineTransformRotate(kObjectHarmonic3.transform, M_PI_2);
    kObjectHarmonic4.transform = CGAffineTransformRotate(kObjectHarmonic4.transform, M_PI_2);
    kObjectHarmonic5.transform = CGAffineTransformRotate(kObjectHarmonic5.transform, M_PI_2);
    kObjectHarmonic6.transform = CGAffineTransformRotate(kObjectHarmonic6.transform, M_PI_2);
    kObjectHarmonic7.transform = CGAffineTransformRotate(kObjectHarmonic7.transform, M_PI_2);
    kObjectHarmonic8.transform = CGAffineTransformRotate(kObjectHarmonic8.transform, M_PI_2);
    kObjectHarmonic9.transform = CGAffineTransformRotate(kObjectHarmonic9.transform, M_PI_2);
    
    //! Initialize slider values
    kParameterMasterVol_ = kObjectMasterVol.value = 1.0f;
    
    kParameterHarmonic1_ = kObjectHarmonic1.value = 1.0f;
    kParameterHarmonic2_ = kObjectHarmonic2.value = 0.0f;
    kParameterHarmonic3_ = kObjectHarmonic3.value = 0.0f;
    kParameterHarmonic4_ = kObjectHarmonic4.value = 0.0f;
    kParameterHarmonic5_ = kObjectHarmonic5.value = 0.0f;
    kParameterHarmonic6_ = kObjectHarmonic6.value = 0.0f;
    kParameterHarmonic7_ = kObjectHarmonic7.value = 0.0f;
    kParameterHarmonic8_ = kObjectHarmonic8.value = 0.0f;
    kParameterHarmonic9_ = kObjectHarmonic9.value = 0.0f;
    
    //! Initialize presets
    kParameterPreset1H1_ = 1.0f;
    kParameterPreset1H2_ = 0.0f;
    kParameterPreset1H3_ = 0.0f;
    kParameterPreset1H4_ = 0.0f;
    kParameterPreset1H5_ = 0.0f;
    kParameterPreset1H6_ = 0.0f;
    kParameterPreset1H7_ = 0.0f;
    kParameterPreset1H8_ = 0.0f;
    kParameterPreset1H9_ = 0.0f;
    
    kParameterPreset2H1_ = 1.0f;
    kParameterPreset2H2_ = 1.0f;
    kParameterPreset2H3_ = 1.0f;
    kParameterPreset2H4_ = 1.0f;
    kParameterPreset2H5_ = 0.0f;
    kParameterPreset2H6_ = 0.0f;
    kParameterPreset2H7_ = 0.0f;
    kParameterPreset2H8_ = 0.0f;
    kParameterPreset2H9_ = 0.0f;
    
    kParameterPreset3H1_ = 1.0f;
    kParameterPreset3H2_ = 1.0f;
    kParameterPreset3H3_ = 1.0f;
    kParameterPreset3H4_ = 1.0f;
    kParameterPreset3H5_ = 0.0f;
    kParameterPreset3H6_ = 1.0f;
    kParameterPreset3H7_ = 0.0f;
    kParameterPreset3H8_ = 0.0f;
    kParameterPreset3H9_ = 1.0f;
    
    kParameterPreset4H1_ = 1.0f;
    kParameterPreset4H2_ = 0.4f;
    kParameterPreset4H3_ = 1.0f;
    kParameterPreset4H4_ = 0.4f;
    kParameterPreset4H5_ = 1.0f;
    kParameterPreset4H6_ = 0.4f;
    kParameterPreset4H7_ = 1.0f;
    kParameterPreset4H8_ = 0.4f;
    kParameterPreset4H9_ = 1.0f;
    
//    [kParameterHarmonics_ setValue:@1.0f forKey:@"1"];
//    [kParameterHarmonics_ setValue:@0.0f forKey:@"2"];
//    [kParameterHarmonics_ setValue:@0.0f forKey:@"3"];
//    [kParameterHarmonics_ setValue:@0.0f forKey:@"4"];
//    [kParameterHarmonics_ setValue:@0.0f forKey:@"5"];
//    [kParameterHarmonics_ setValue:@0.0f forKey:@"6"];
//    [kParameterHarmonics_ setValue:@0.0f forKey:@"7"];
//    [kParameterHarmonics_ setValue:@0.0f forKey:@"8"];
//    [kParameterHarmonics_ setValue:@0.0f forKey:@"9"];
//    
//    // Initialize the harmonic presets
//    [kParameterPreset1_ setValue:@1.0f forKey:@"1"];
//    [kParameterPreset1_ setValue:@1.0f forKey:@"2"];
//    [kParameterPreset1_ setValue:@1.0f forKey:@"3"];
//    [kParameterPreset1_ setValue:@1.0f forKey:@"4"];
//    [kParameterPreset1_ setValue:@0.5f forKey:@"5"];
//    [kParameterPreset1_ setValue:@0.0f forKey:@"6"];
//    [kParameterPreset1_ setValue:@0.0f forKey:@"7"];
//    [kParameterPreset1_ setValue:@0.0f forKey:@"8"];
//    [kParameterPreset1_ setValue:@0.0f forKey:@"9"];
    
    
    // Set a heartbeat so iOS doesn't shut down the network connection when it's not being used
    [NSTimer scheduledTimerWithTimeInterval:100 target:self selector:@selector(heartbeat) userInfo:nil repeats:YES];
    
    // OR, set a timer in a new thread
//   [NSThread detachNewThreadSelector:@selector(heartbeat) toTarget:self withObject:nil];
    
    // Set up OSC sender
    hostName_ = "144.118.51.21";
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

-(IBAction)harmonic1Change:(id)sender
{
    UISlider *slider = (UISlider*)sender;
    ofxOscMessage message;
    message.setAddress("/mrp/global/harmonics");
    
    // *** Using Individual Float Values ***
    kParameterHarmonic1_ = slider.value;
    
    message.addIntArg(1);
    message.addFloatArg(kParameterHarmonic1_);
    sender_.sendMessage(message);
    
    NSLog(@"Harmonic 1: %f", slider.value);
    
    // *** Using NSMutableDictionary ***
//    [kParameterHarmonics_ setValue:[NSNumber numberWithFloat:slider.value]  forKey:@"1"];
//    
//    float number;
//    number = [[kParameterHarmonics_ valueForKey:@"1"] floatValue];
//
//    message.addIntArg(1);
//    message.addFloatArg([[kParameterHarmonics_ valueForKey:@"1"] floatValue]);
//    sender_.sendMessage(message);
//    
//    NSLog(@"Harmonic1: %f, %f %f", [[kParameterHarmonics_ valueForKey:@"1"] floatValue], slider.value, number);
}
-(IBAction)harmonic2Change:(id)sender
{
    UISlider *slider = (UISlider*)sender;
    ofxOscMessage message;
    message.setAddress("/mrp/global/harmonics");
    
    // *** Using Individual Float Values ***
    kParameterHarmonic2_ = slider.value;
    
    message.addIntArg(2);
    message.addFloatArg(kParameterHarmonic2_);
    sender_.sendMessage(message);
    
    NSLog(@"Harmonic 2: %f", slider.value);
//
//    [kParameterHarmonics_ setValue:[NSNumber numberWithFloat:slider.value]  forKey:@"2"];
//    
//    message.addIntArg(2);
//    message.addFloatArg([[kParameterHarmonics_ valueForKey:@"2"] floatValue]);
//    sender_.sendMessage(message);
//    
//    NSLog(@"Harmonic2: %f, %f", [[kParameterHarmonics_ valueForKey:@"2"] floatValue], slider.value);
}
-(IBAction)harmonic3Change:(id)sender
{
    UISlider *slider = (UISlider*)sender;
    ofxOscMessage message;
    message.setAddress("/mrp/global/harmonics");
    
    // *** Using Individual Float Values ***
    kParameterHarmonic3_ = slider.value;
    
    message.addIntArg(3);
    message.addFloatArg(kParameterHarmonic3_);
    sender_.sendMessage(message);
    
    NSLog(@"Harmonic 3: %f", slider.value);
    
//    [kParameterHarmonics_ setValue:[NSNumber numberWithFloat:slider.value]  forKey:@"3"];
//    
//    message.addIntArg(3);
//    message.addFloatArg([[kParameterHarmonics_ valueForKey:@"3"] floatValue]);
//    sender_.sendMessage(message);
//    
//    NSLog(@"Harmonic3: %f, %f", [[kParameterHarmonics_ valueForKey:@"3"] floatValue], slider.value);
}
-(IBAction)harmonic4Change:(id)sender
{
    UISlider *slider = (UISlider*)sender;
    ofxOscMessage message;
    message.setAddress("/mrp/global/harmonics");
    
    // *** Using Individual Float Values ***
    kParameterHarmonic4_ = slider.value;
    
    message.addIntArg(4);
    message.addFloatArg(kParameterHarmonic4_);
    sender_.sendMessage(message);
    
    NSLog(@"Harmonic 4: %f", slider.value);
    
//    [kParameterHarmonics_ setValue:[NSNumber numberWithFloat:slider.value]  forKey:@"4"];
//    
//    message.addIntArg(4);
//    message.addFloatArg([[kParameterHarmonics_ valueForKey:@"4"] floatValue]);
//    sender_.sendMessage(message);
//    
//    NSLog(@"Harmonic4: %f, %f", [[kParameterHarmonics_ valueForKey:@"4"] floatValue], slider.value);
}
-(IBAction)harmonic5Change:(id)sender
{
    UISlider *slider = (UISlider*)sender;
    ofxOscMessage message;
    message.setAddress("/mrp/global/harmonics");
    
    // *** Using Individual Float Values ***
    kParameterHarmonic5_ = slider.value;
    
    message.addIntArg(5);
    message.addFloatArg(kParameterHarmonic5_);
    sender_.sendMessage(message);
    
    NSLog(@"Harmonic 5: %f", slider.value);
    
//    [kParameterHarmonics_ setValue:[NSNumber numberWithFloat:slider.value]  forKey:@"5"];
//    
//    message.addIntArg(5);
//    message.addFloatArg([[kParameterHarmonics_ valueForKey:@"5"] floatValue]);
//    sender_.sendMessage(message);
//    
//    NSLog(@"Harmonic5: %f, %f", [[kParameterHarmonics_ valueForKey:@"5"] floatValue], slider.value);
}
-(IBAction)harmonic6Change:(id)sender
{
    UISlider *slider = (UISlider*)sender;
    ofxOscMessage message;
    message.setAddress("/mrp/global/harmonics");
    
    // *** Using Individual Float Values ***
    kParameterHarmonic6_ = slider.value;
    
    message.addIntArg(6);
    message.addFloatArg(kParameterHarmonic6_);
    sender_.sendMessage(message);
    
    NSLog(@"Harmonic 6: %f", slider.value);
    
//    [kParameterHarmonics_ setValue:[NSNumber numberWithFloat:slider.value]  forKey:@"6"];
//    
//    message.addIntArg(6);
//    message.addFloatArg([[kParameterHarmonics_ valueForKey:@"6"] floatValue]);
//    sender_.sendMessage(message);
//    
//    NSLog(@"Harmonic6: %f, %f", [[kParameterHarmonics_ valueForKey:@"6"] floatValue], slider.value);
}
-(IBAction)harmonic7Change:(id)sender
{
    UISlider *slider = (UISlider*)sender;
    ofxOscMessage message;
    message.setAddress("/mrp/global/harmonics");
    
    // *** Using Individual Float Values ***
    kParameterHarmonic7_ = slider.value;
    
    message.addIntArg(7);
    message.addFloatArg(kParameterHarmonic7_);
    sender_.sendMessage(message);
    
    NSLog(@"Harmonic 7: %f", slider.value);
    
//    [kParameterHarmonics_ setValue:[NSNumber numberWithFloat:slider.value]  forKey:@"7"];
//    
//    message.addIntArg(7);
//    message.addFloatArg([[kParameterHarmonics_ valueForKey:@"7"] floatValue]);
//    sender_.sendMessage(message);
//    
//    NSLog(@"Harmonic7: %f, %f", [[kParameterHarmonics_ valueForKey:@"7"] floatValue], slider.value);
}
-(IBAction)harmonic8Change:(id)sender
{
    UISlider *slider = (UISlider*)sender;
    ofxOscMessage message;
    message.setAddress("/mrp/global/harmonics");
    
    // *** Using Individual Float Values ***
    kParameterHarmonic8_ = slider.value;
    
    message.addIntArg(8);
    message.addFloatArg(kParameterHarmonic8_);
    sender_.sendMessage(message);

    NSLog(@"Harmonic 8: %f", slider.value);
    
//    [kParameterHarmonics_ setValue:[NSNumber numberWithFloat:slider.value]  forKey:@"8"];
//    
//    message.addIntArg(8);
//    message.addFloatArg([[kParameterHarmonics_ valueForKey:@"8"] floatValue]);
//    sender_.sendMessage(message);
//    
//    NSLog(@"Harmonic8: %f, %f", [[kParameterHarmonics_ valueForKey:@"8"] floatValue], slider.value);
}
-(IBAction)harmonic9Change:(id)sender
{
    UISlider *slider = (UISlider*)sender;
    ofxOscMessage message;
    message.setAddress("/mrp/global/harmonics");
    
    // *** Using Individual Float Values ***
    kParameterHarmonic9_ = slider.value;
    
    message.addIntArg(9);
    message.addFloatArg(kParameterHarmonic9_);
    sender_.sendMessage(message);
    
    NSLog(@"Harmonic 9: %f", slider.value);
    
//    [kParameterHarmonics_ setValue:[NSNumber numberWithFloat:slider.value]  forKey:@"9"];
//    
//    message.addIntArg(9);
//    message.addFloatArg([[kParameterHarmonics_ valueForKey:@"9"] floatValue]);
//    sender_.sendMessage(message);
//    
//    NSLog(@"Harmonic9: %f, %f", [[kParameterHarmonics_ valueForKey:@"9"] floatValue], slider.value);
}
-(IBAction)patchChange:(id)sender
{
    UIStepper *stepper = (UIStepper *)sender;
    ofxOscMessage message;
    
    message.setAddress("/mrp/ui/patch/set");
    message.addIntArg(stepper.value);
    
    sender_.sendMessage(message);
    
    kParameterCurrentPatch_ = stepper.value;
    kObjectCurrentPatchDisp.text = [NSString stringWithFormat:@"%d", kParameterCurrentPatch_];
    
    NSLog(@"Patch Change: %d", kParameterCurrentPatch_);
    
}

-(IBAction)savePreset:(id)sender
{    
    NSLog(@"Save Preset");
}

-(IBAction)loadPreset1:(id)sender
{
    if(kObjectSavePreset.highlighted == YES)
    {
        kParameterPreset1H1_ = kObjectHarmonic1.value;
        kParameterPreset1H2_ = kObjectHarmonic2.value;
        kParameterPreset1H3_ = kObjectHarmonic3.value;
        kParameterPreset1H4_ = kObjectHarmonic4.value;
        kParameterPreset1H5_ = kObjectHarmonic5.value;
        kParameterPreset1H6_ = kObjectHarmonic6.value;
        kParameterPreset1H7_ = kObjectHarmonic7.value;
        kParameterPreset1H8_ = kObjectHarmonic8.value;
        kParameterPreset1H9_ = kObjectHarmonic9.value;
        
        kObjectSavePreset.highlighted = NO;
        
        NSLog(@"Harmonics saved as Preset 1");
    }
    else
    {
        kObjectHarmonic1.value = kParameterHarmonic1_ = kParameterPreset1H1_;
        kObjectHarmonic2.value = kParameterHarmonic2_ = kParameterPreset1H2_;
        kObjectHarmonic3.value = kParameterHarmonic3_ = kParameterPreset1H3_;
        kObjectHarmonic4.value = kParameterHarmonic4_ = kParameterPreset1H4_;
        kObjectHarmonic5.value = kParameterHarmonic5_ = kParameterPreset1H5_;
        kObjectHarmonic6.value = kParameterHarmonic6_ = kParameterPreset1H6_;
        kObjectHarmonic7.value = kParameterHarmonic7_ = kParameterPreset1H7_;
        kObjectHarmonic8.value = kParameterHarmonic8_ = kParameterPreset1H8_;
        kObjectHarmonic9.value = kParameterHarmonic9_ = kParameterPreset1H9_;
        
//        kParameterHarmonics_ = kParameterPreset1_;
//        
//        kObjectHarmonic1.value = [[kParameterHarmonics_ valueForKey:@"1"] floatValue];
//        kObjectHarmonic2.value = [[kParameterHarmonics_ valueForKey:@"2"] floatValue];
//        kObjectHarmonic3.value = [[kParameterHarmonics_ valueForKey:@"3"] floatValue];
//        kObjectHarmonic4.value = [[kParameterHarmonics_ valueForKey:@"4"] floatValue];
//        kObjectHarmonic5.value = [[kParameterHarmonics_ valueForKey:@"5"] floatValue];
//        kObjectHarmonic6.value = [[kParameterHarmonics_ valueForKey:@"6"] floatValue];
//        kObjectHarmonic7.value = [[kParameterHarmonics_ valueForKey:@"7"] floatValue];
//        kObjectHarmonic8.value = [[kParameterHarmonics_ valueForKey:@"8"] floatValue];
//        kObjectHarmonic9.value = [[kParameterHarmonics_ valueForKey:@"9"] floatValue];
        
        NSLog(@"Load Preset 1");
    }
}

-(IBAction)loadPreset2:(id)sender
{
    if(kObjectSavePreset.highlighted == YES)
    {
        kParameterPreset2H1_ = kObjectHarmonic1.value;
        kParameterPreset2H2_ = kObjectHarmonic2.value;
        kParameterPreset2H3_ = kObjectHarmonic3.value;
        kParameterPreset2H4_ = kObjectHarmonic4.value;
        kParameterPreset2H5_ = kObjectHarmonic5.value;
        kParameterPreset2H6_ = kObjectHarmonic6.value;
        kParameterPreset2H7_ = kObjectHarmonic7.value;
        kParameterPreset2H8_ = kObjectHarmonic8.value;
        kParameterPreset2H9_ = kObjectHarmonic9.value;
        
        kObjectSavePreset.highlighted = NO;
        
        NSLog(@"Harmonics saved as Preset 2");
    }
    else
    {
        kObjectHarmonic1.value = kParameterHarmonic1_ = kParameterPreset2H1_;
        kObjectHarmonic2.value = kParameterHarmonic2_ = kParameterPreset2H2_;
        kObjectHarmonic3.value = kParameterHarmonic3_ = kParameterPreset2H3_;
        kObjectHarmonic4.value = kParameterHarmonic4_ = kParameterPreset2H4_;
        kObjectHarmonic5.value = kParameterHarmonic5_ = kParameterPreset2H5_;
        kObjectHarmonic6.value = kParameterHarmonic6_ = kParameterPreset2H6_;
        kObjectHarmonic7.value = kParameterHarmonic7_ = kParameterPreset2H7_;
        kObjectHarmonic8.value = kParameterHarmonic8_ = kParameterPreset2H8_;
        kObjectHarmonic9.value = kParameterHarmonic9_ = kParameterPreset2H9_;
        
        NSLog(@"Load Preset 2");
    }
}

-(IBAction)loadPreset3:(id)sender
{
    if(kObjectSavePreset.highlighted == YES)
    {
        kParameterPreset3H1_ = kObjectHarmonic1.value;
        kParameterPreset3H2_ = kObjectHarmonic2.value;
        kParameterPreset3H3_ = kObjectHarmonic3.value;
        kParameterPreset3H4_ = kObjectHarmonic4.value;
        kParameterPreset3H5_ = kObjectHarmonic5.value;
        kParameterPreset3H6_ = kObjectHarmonic6.value;
        kParameterPreset3H7_ = kObjectHarmonic7.value;
        kParameterPreset3H8_ = kObjectHarmonic8.value;
        kParameterPreset3H9_ = kObjectHarmonic9.value;
        
        kObjectSavePreset.highlighted = NO;
        
        NSLog(@"Harmonics saved as Preset 3");
    }
    else
    {
        kObjectHarmonic1.value = kParameterHarmonic1_ = kParameterPreset3H1_;
        kObjectHarmonic2.value = kParameterHarmonic2_ = kParameterPreset3H2_;
        kObjectHarmonic3.value = kParameterHarmonic3_ = kParameterPreset3H3_;
        kObjectHarmonic4.value = kParameterHarmonic4_ = kParameterPreset3H4_;
        kObjectHarmonic5.value = kParameterHarmonic5_ = kParameterPreset3H5_;
        kObjectHarmonic6.value = kParameterHarmonic6_ = kParameterPreset3H6_;
        kObjectHarmonic7.value = kParameterHarmonic7_ = kParameterPreset3H7_;
        kObjectHarmonic8.value = kParameterHarmonic8_ = kParameterPreset3H8_;
        kObjectHarmonic9.value = kParameterHarmonic9_ = kParameterPreset3H9_;
        
        NSLog(@"Load Preset 3");
    }
}

-(IBAction)loadPreset4:(id)sender
{
    if(kObjectSavePreset.highlighted == YES)
    {
        kParameterPreset4H1_ = kObjectHarmonic1.value;
        kParameterPreset4H2_ = kObjectHarmonic2.value;
        kParameterPreset4H3_ = kObjectHarmonic3.value;
        kParameterPreset4H4_ = kObjectHarmonic4.value;
        kParameterPreset4H5_ = kObjectHarmonic5.value;
        kParameterPreset4H6_ = kObjectHarmonic6.value;
        kParameterPreset4H7_ = kObjectHarmonic7.value;
        kParameterPreset4H8_ = kObjectHarmonic8.value;
        kParameterPreset4H9_ = kObjectHarmonic9.value;
        
        kObjectSavePreset.highlighted = NO;
        
        NSLog(@"Harmonics saved as Preset 4");
    }
    else
    {
        kObjectHarmonic1.value = kParameterHarmonic1_ = kParameterPreset4H1_;
        kObjectHarmonic2.value = kParameterHarmonic2_ = kParameterPreset4H2_;
        kObjectHarmonic3.value = kParameterHarmonic3_ = kParameterPreset4H3_;
        kObjectHarmonic4.value = kParameterHarmonic4_ = kParameterPreset4H4_;
        kObjectHarmonic5.value = kParameterHarmonic5_ = kParameterPreset4H5_;
        kObjectHarmonic6.value = kParameterHarmonic6_ = kParameterPreset4H6_;
        kObjectHarmonic7.value = kParameterHarmonic7_ = kParameterPreset4H7_;
        kObjectHarmonic8.value = kParameterHarmonic8_ = kParameterPreset4H8_;
        kObjectHarmonic9.value = kParameterHarmonic9_ = kParameterPreset4H9_;
        
        NSLog(@"Load Preset 4");
    }
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

@end



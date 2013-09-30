//
//  ViewController.h
//  MRP_ParamControl
//
//  Created by Jeff Gregorio on 11/7/12.
//  Copyright (c) 2012 Jeff Gregorio. All rights reserved.
//

#import <UIKit/UIKit.h> 
#import "ofxOsc.h"

@interface UIToggleButton : UIButton {
}

-(void) setHighlighted:(BOOL)highlighted;
-(void) setSelected:(BOOL)selected;

@end


@interface ViewController : UIViewController {
    
    // ====================================
    // ======== Interface Objects =========
    // ====================================    
    // Volume Parameters
    IBOutlet UISlider *kObjectMasterVol;
    IBOutlet UIButton *kObjectMuteButton;
    
    // Patch Change
    IBOutlet UIButton *kObjectBasic;
    IBOutlet UIButton *kObjectReeds;
    IBOutlet UIButton *kObjectCrescendo;
    IBOutlet UIButton *kObjectBeats;
    IBOutlet UIButton *kObjectGlissSlow;
    IBOutlet UIButton *kObjectGlissFast;
    
    IBOutlet UITextField *kObjectHostName;
    
    // ====================================
    // =========== Data Members ===========
    // ====================================
    // Volume parameters
    float kParameterMasterVol_;
    bool  kParameterMuteButton_;
    float kParameterPreviousMasterVol_;
    
    // Patch Change
    int kParameterCurrentPatch_;
    
    bool kParameterBasicState_;
    bool kParameterReedsState_;
    bool kParameterCrescendoState_;
    bool kParameterBeatsState_;
    bool kParameterGlissSlowState_;
    bool kParameterGlissFastState_;
    
    // ====================================
    // =============== OSC ================
    // ====================================
    // To Do: add interface for setting host name and port name
    string hostName_;
    int portName_;
    ofxOscSender sender_;
}

@property(nonatomic, retain) IBOutlet UISlider *kObjectMasterVol;

// ====================================
// ==== Parameter Change Callbacks ====
// ====================================
//-(IBAction)hostNameChange:(id)sender;
-(IBAction)masterVolChange:(id)sender;
-(IBAction)muteButtnChange:(id)sender;
-(IBAction)harmonic1Change:(id)sender;
-(IBAction)harmonic2Change:(id)sender;
-(IBAction)harmonic3Change:(id)sender;
-(IBAction)harmonic4Change:(id)sender;
-(IBAction)harmonic5Change:(id)sender;
-(IBAction)harmonic6Change:(id)sender;
-(IBAction)harmonic7Change:(id)sender;
-(IBAction)harmonic8Change:(id)sender;
-(IBAction)harmonic9Change:(id)sender;
-(IBAction)patchChange:(id)sender;
-(IBAction)savePreset:(id)sender;
-(IBAction)loadPreset1:(id)sender;
-(IBAction)loadPreset2:(id)sender;
-(IBAction)loadPreset3:(id)sender;
-(IBAction)loadPreset4:(id)sender;

// ====================================
// ========== OSC Callbacks ===========
// ====================================
-(void) doSomething;
-(void) doSomethingElse;
-(void) OSCcallback;
-(void) allButtonsOff;

@end

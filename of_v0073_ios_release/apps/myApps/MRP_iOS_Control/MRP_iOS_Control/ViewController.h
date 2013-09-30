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
    //! Volume Parameters
    IBOutlet UISlider *kObjectMasterVol;
    IBOutlet UIButton *kObjectMuteButton;
    
    //! Harmonic Drawbars
    IBOutlet UISlider *kObjectHarmonic1;
    IBOutlet UISlider *kObjectHarmonic2;
    IBOutlet UISlider *kObjectHarmonic3;
    IBOutlet UISlider *kObjectHarmonic4;
    IBOutlet UISlider *kObjectHarmonic5;
    IBOutlet UISlider *kObjectHarmonic6;
    IBOutlet UISlider *kObjectHarmonic7;
    IBOutlet UISlider *kObjectHarmonic8;
    IBOutlet UISlider *kObjectHarmonic9;
    
    //! Patch Change
    IBOutlet UIStepper *kObjectPatchChange;
    IBOutlet UILabel   *kObjectCurrentPatchDisp;
    IBOutlet UILabel   *kObjectPatchText;
    
    //! Harmonic Presets
    IBOutlet UIButton *kObjectSavePreset;
    IBOutlet UIButton *kObjectPreset1;
    IBOutlet UIButton *kObjectPreset2;
    IBOutlet UIButton *kObjectPreset3;
    IBOutlet UIButton *kObjectPreset4;
    
    // ====================================
    // =========== Data Members ===========
    // ====================================
    //! Volume parameters
    float kParameterMasterVol_;
    bool  kParameterMuteButton_;
    float kParameterPreviousMasterVol_;
    
    //! Harmonic Drawbars
    float kParameterHarmonic1_;
    float kParameterHarmonic2_;
    float kParameterHarmonic3_;
    float kParameterHarmonic4_;
    float kParameterHarmonic5_;
    float kParameterHarmonic6_;
    float kParameterHarmonic7_;
    float kParameterHarmonic8_;
    float kParameterHarmonic9_;
    
    //! Presets    
    float kParameterPreset1H1_;
    float kParameterPreset1H2_;
    float kParameterPreset1H3_;
    float kParameterPreset1H4_;
    float kParameterPreset1H5_;
    float kParameterPreset1H6_;
    float kParameterPreset1H7_;
    float kParameterPreset1H8_;
    float kParameterPreset1H9_;
    
    float kParameterPreset2H1_;
    float kParameterPreset2H2_;
    float kParameterPreset2H3_;
    float kParameterPreset2H4_;
    float kParameterPreset2H5_;
    float kParameterPreset2H6_;
    float kParameterPreset2H7_;
    float kParameterPreset2H8_;
    float kParameterPreset2H9_;
    
    float kParameterPreset3H1_;
    float kParameterPreset3H2_;
    float kParameterPreset3H3_;
    float kParameterPreset3H4_;
    float kParameterPreset3H5_;
    float kParameterPreset3H6_;
    float kParameterPreset3H7_;
    float kParameterPreset3H8_;
    float kParameterPreset3H9_;
    
    float kParameterPreset4H1_;
    float kParameterPreset4H2_;
    float kParameterPreset4H3_;
    float kParameterPreset4H4_;
    float kParameterPreset4H5_;
    float kParameterPreset4H6_;
    float kParameterPreset4H7_;
    float kParameterPreset4H8_;
    float kParameterPreset4H9_;
    
    //! Patch Change
    int kParameterCurrentPatch_;

    
//    NSMutableDictionary *kParameterHarmonics_;
    
    //! Harmonic Presets
//    NSMutableDictionary *kParameterPreset1_;
//    NSMutableDictionary *kParameterPreset2_;
//    NSMutableDictionary *kParameterPreset3_;
//    NSMutableDictionary *kParameterPreset4_;
    
    // ====================================
    // =============== OSC ================
    // ====================================
    // To Do: add interface for setting host name and port name
    string hostName_;
    int portName_;
    ofxOscSender sender_;
    
}

@property(nonatomic, retain) IBOutlet UISlider *kObjectMasterVol;
@property(nonatomic, retain) IBOutlet UILabel *kObjectCurrentPatchDisp;

// ====================================
// ==== Parameter Change Callbacks ====
// ====================================
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

@end

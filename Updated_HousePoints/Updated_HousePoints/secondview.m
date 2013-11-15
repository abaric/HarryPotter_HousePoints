//
//  secondview.m
//  Views_switch
//
//  Created by Andrea Baric on 11/5/13.
//  Copyright (c) 2013 Andrea Baric. All rights reserved.
//

#import "ViewController.h"
#import "secondview.h"

@interface secondview()
@end

@implementation secondview
@synthesize ourStepper;
@synthesize stepperValueLabel;
@synthesize ourStepper1;
@synthesize stepperValueLabel1;
@synthesize ourStepper2;
@synthesize stepperValueLabel2;
@synthesize ourStepper3;
@synthesize stepperValueLabel3;

-(IBAction)Next:(id)sender {
   secondview *second=[[secondview alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:second animated:YES completion:NULL];
}

# define action for first stepper

- (IBAction)stepperValueChanged:(id)sender
{
    double stepperValue = ourStepper.value;
    self.stepperValueLabel.text = [NSString stringWithFormat:@"%.f", stepperValue];
    
}

# define second stepper action
- (IBAction)stepperValue1Changed:(id)sender
{
    double stepperValue1 = ourStepper1.value;
    self.stepperValueLabel1.text = [NSString stringWithFormat:@"%.f", stepperValue1];
    
}

# define the tercera stepper action
- (IBAction)stepperValue2Changed:(id)sender
{
    double stepperValue2 = ourStepper2.value;
    self.stepperValueLabel2.text = [NSString stringWithFormat:@"%.f", stepperValue2];
    
}


# define last stepper action
- (IBAction)stepperValue3Changed:(id)sender
{
    double stepperValue3 = ourStepper3.value;
    self.stepperValueLabel3.text = [NSString stringWithFormat:@"%.f", stepperValue3];
    
}

#define stepper attributes

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.ourStepper.minimumValue = 0;
    self.ourStepper.maximumValue = 1000;
    self.ourStepper.stepValue = 5;
    self.ourStepper.wraps = NO;
    self.ourStepper.autorepeat = YES;
    self.ourStepper.continuous = YES;
    self.stepperValueLabel.text = [NSString stringWithFormat:@"%.f", ourStepper.value];
    [[self view] setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"logo"]]];
    
    self.ourStepper1.minimumValue = 0;
    self.ourStepper1.maximumValue = 1000;
    self.ourStepper1.stepValue = 5;
    self.ourStepper1.wraps = NO;
    self.ourStepper1.autorepeat = YES;
    self.ourStepper1.continuous = YES;
    self.stepperValueLabel1.text = [NSString stringWithFormat:@"%.f", ourStepper1.value];
    
    self.ourStepper2.minimumValue = 0;
    self.ourStepper2.maximumValue = 1000;
    self.ourStepper2.stepValue = 5;
    self.ourStepper2.wraps = NO;
    self.ourStepper2.autorepeat = YES;
    self.ourStepper2.continuous = YES;
    self.stepperValueLabel2.text = [NSString stringWithFormat:@"%.f", ourStepper2.value];
    
    self.ourStepper3.minimumValue = 0;
    self.ourStepper3.maximumValue = 1000;
    self.ourStepper3.stepValue = 5;
    self.ourStepper3.wraps = NO;
    self.ourStepper3.autorepeat = YES;
    self.ourStepper3.continuous = YES;
    self.stepperValueLabel3.text = [NSString stringWithFormat:@"%.f", ourStepper3.value];
    
}

- (void)customizeAppearance
{
    // Customize the stepper control
    [[UIStepper appearance] setTintColor:[UIColor colorWithRed:0 green:175.0/255.0 blue:176.0/255.0 alpha:1.0]];
    [[UIStepper appearance] setIncrementImage:[UIImage imageNamed:@"up"] forState:UIControlStateNormal];
    [[UIStepper appearance] setDecrementImage:[UIImage imageNamed:@"down"] forState:UIControlStateNormal];
    
}
- (void)viewDidUnload
{
    [self setOurStepper:nil];
    [self setStepperValueLabel:nil];
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end


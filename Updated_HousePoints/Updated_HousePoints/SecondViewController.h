//
//  SecondViewController.h
//  FINALHOUSEPoints1
//
//  Created by Andrea Baric on 11/1/13.
//  Copyright (c) 2013 Andrea Baric. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIStepper *ourStepper;
@property (strong, nonatomic) IBOutlet UILabel *stepperValueLabel;
@property (strong, nonatomic) IBOutlet UIStepper *ourStepper1;
@property (strong, nonatomic) IBOutlet UILabel *stepperValueLabel1;
@property (strong, nonatomic) IBOutlet UIStepper *ourStepper2;
@property (strong, nonatomic) IBOutlet UILabel *stepperValueLabel2;
@property (strong, nonatomic) IBOutlet UIStepper *ourStepper3;
@property (strong, nonatomic) IBOutlet UILabel *stepperValueLabel3;

- (IBAction)stepperValueChanged:(id)sender;
- (IBAction)stepperValue1Changed:(id)sender;
- (IBAction)stepperValue2Changed:(id)sender;
- (IBAction)stepperValue3Changed:(id)sender;


@end

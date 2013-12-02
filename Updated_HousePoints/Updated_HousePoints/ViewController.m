//
//  ViewController.m
//  Updated_HousePoints
//
//  Created by Andrea Baric on 11/7/13.
//  Copyright (c) 2013 Andrea Baric. All rights reserved.
//

#import "ViewController.h"
#import "secondview.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"schoolseal"]]];
}

-(IBAction)switchview:(id)sender
{
    secondview *second = [[secondview alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:second animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesEnded: (NSSet *)touches withEvent: (UIEvent *)event {
	for (UIView* view in self.view.subviews) {
		if ([view isKindOfClass:[UITextField class]])
			[view resignFirstResponder];
	}
}

@end

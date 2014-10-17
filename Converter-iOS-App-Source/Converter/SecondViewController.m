//
//  SecondViewController.m
//  Converter
//
//  Created by Jake Rocheleau on 10/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController
@synthesize distResult, auResult, distTextBox;

- (void)distanceConvert:(id)sender
{
    double miles = [distTextBox.text doubleValue];
    double km = miles * 1.61;     // multiply miles by ~1.609 kilometers
    double au = miles / 92956000; // divide miles by 92,956,000AU
    
    [distTextBox resignFirstResponder];
    
    NSString *kiloResult = [[NSString alloc] initWithFormat: @"Kilometers: %f", km];
    NSString *ausResult = [[NSString alloc] initWithFormat: @"AUs: %f", au];
    distResult.text = kiloResult;
    auResult.text = ausResult;
}

- (void)backgroundTouchedHideKeyboard:(id)sender
{
    [distTextBox resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.distResult = nil;
    self.auResult = nil;
    self.distTextBox = nil;
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
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

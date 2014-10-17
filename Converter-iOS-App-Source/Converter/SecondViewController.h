//
//  SecondViewController.h
//  Converter
//
//  Created by Jake Rocheleau on 10/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController {
    UITextField *distTextBox;
    UILabel     *distResult;
    UILabel     *auResult;
}
@property (nonatomic, retain) IBOutlet UILabel *distResult;
@property (nonatomic, retain) IBOutlet UILabel *auResult;
@property (nonatomic, retain) IBOutlet UITextField *distTextBox;
- (IBAction)distanceConvert:(id)sender;
- (IBAction)backgroundTouchedHideKeyboard:(id)sender;
@end
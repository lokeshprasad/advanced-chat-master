//
//  FirstViewController.h
//  Converter
//
//  Created by Jake Rocheleau on 10/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController {
    UITextField *tempTextBox;
    UILabel     *calcResult;
}
@property (nonatomic, retain) IBOutlet UILabel *calcResult;
@property (nonatomic, retain) IBOutlet UITextField *tempTextBox;
- (IBAction)degreeConvert:(id)sender;
- (IBAction)backgroundTouchedHideKeyboard:(id)sender;
@end

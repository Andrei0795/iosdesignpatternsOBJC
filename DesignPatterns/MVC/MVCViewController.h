//
//  MVCViewController.h
//  DesignPatterns
//
//  Created by Andrei Ionescu on 27/11/2017.
//  Copyright © 2017 Andrei Ionescu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MathsComputationObject.h"
@interface MVCViewController : UIViewController
{
    IBOutlet UIButton *plusButton;
    IBOutlet UIButton *minusButton;
    IBOutlet UIButton *multiplyButton;
    IBOutlet UIButton *divideButton;
    IBOutlet UIButton *equalsButton;
    
    IBOutlet UIButton *oneButton;
    IBOutlet UIButton *twoButton;
    IBOutlet UIButton *threeButton;
    IBOutlet UIButton *fourButton;
    IBOutlet UIButton *fiveButton;
    IBOutlet UIButton *sixButton;
    IBOutlet UIButton *sevenButton;
    IBOutlet UIButton *eightButton;
    IBOutlet UIButton *nineButton;
    IBOutlet UIButton *zeroButton;
    
    IBOutlet UILabel *resultLabel;

    MathsComputationObject *mathscomputeObject;
}

- (IBAction)plusButtonTapped:(UIButton *)sender;
- (IBAction)minusButtonTapped:(UIButton *)sender;
- (IBAction)oneButtonTapped:(UIButton *)sender;
- (IBAction)twoButtonTapped:(UIButton *)sender;
- (IBAction)threeButtonTapped:(UIButton *)sender;
- (IBAction)fourButtonTapped:(UIButton *)sender;
- (IBAction)fiveButtonTapped:(UIButton *)sender;
- (IBAction)sixButtonTapped:(UIButton *)sender;
- (IBAction)sevenButtonTapped:(UIButton *)sender;
- (IBAction)eightButtonTapped:(UIButton *)sender;
- (IBAction)nineButtonTapped:(UIButton *)sender;
- (IBAction)zeroButtonTapped:(UIButton *)sender;
- (IBAction)multiplyButtonTapped:(UIButton *)sender;
- (IBAction)divideButtonTapped:(UIButton *)sender;
- (IBAction)equalsButtonTapped:(UIButton *)sender;

- (void)changeLabelText:(NSString*)text;

@end

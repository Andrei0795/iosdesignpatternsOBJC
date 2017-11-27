//
//  MVCViewController.m
//  DesignPatterns
//
//  Created by Andrei Ionescu on 27/11/2017.
//  Copyright © 2017 Andrei Ionescu. All rights reserved.
//

#import "MVCViewController.h"

@interface MVCViewController ()

@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [mathscomputeObject setSelectedNumberToZero];
    mathscomputeObject = [[MathsComputationObject alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)changeLabelText:(NSString *)text {
    resultLabel.text = text;
}

- (void)checkComputations {
    switch (mathscomputeObject.computingType) {
        case kPlus: {
            NSString *result = [mathscomputeObject returnAddition:mathscomputeObject.selectedNumber];
            [self changeLabelText:result];
            break;
        }
        case kMinus: {
            NSString *result = [mathscomputeObject returnSubstraction:mathscomputeObject.selectedNumber];
            [self changeLabelText:result];
            break;
        }
        case kMultiply: {
            NSString *result = [mathscomputeObject returnMultiplication:mathscomputeObject.selectedNumber];
            [self changeLabelText:result];
            break;
        }
        case kDivide: {
            NSString *result = [mathscomputeObject returnDivision:mathscomputeObject.selectedNumber];
            [self changeLabelText:result];
            break;
        }
        case kNothing: {
            NSString *result = [mathscomputeObject returnTotal];
            [self changeLabelText:result];
            break;
        }
        default:
            break;
    }
    
    [mathscomputeObject setSelectedNumberToZero];
}

- (IBAction) equalsButtonTapped:(UIButton *)sender {
    
    [self checkComputations];
    mathscomputeObject.computingType = kNothing;

}

- (IBAction) plusButtonTapped:(UIButton *)sender {
    mathscomputeObject.computingType = kPlus;
    [self checkComputations];

}

- (IBAction) minusButtonTapped:(UIButton *)sender {
    mathscomputeObject.computingType = kMinus;
    [self checkComputations];
    
}

- (IBAction) multiplyButtonTapped:(UIButton *)sender {
    mathscomputeObject.computingType = kMultiply;
    [mathscomputeObject checkIfWantsToUseResult];
    [self checkComputations];
    
}

- (IBAction) divideButtonTapped:(UIButton *)sender {
    mathscomputeObject.computingType = kDivide;
    [mathscomputeObject checkIfWantsToUseResult];
    [self checkComputations];
    
}

#pragma mark - Numbered Buttons
- (IBAction)oneButtonTapped:(UIButton *)sender {
    NSString *result = [NSString stringWithFormat:@"%d", 1];
    mathscomputeObject.selectedNumber = 1;
    [self changeLabelText:result];
    [mathscomputeObject checkIfNewOperation];
    
}

- (IBAction)twoButtonTapped:(UIButton *)sender {
    NSString *result = [NSString stringWithFormat:@"%d", 2];
    mathscomputeObject.selectedNumber = 2;
    [self changeLabelText:result];
    [mathscomputeObject checkIfNewOperation];
}

- (IBAction)threeButtonTapped:(UIButton *)sender {
    NSString *result = [NSString stringWithFormat:@"%d", 3];
    mathscomputeObject.selectedNumber = 3;
    [self changeLabelText:result];
    [mathscomputeObject checkIfNewOperation];
}

- (IBAction)fourButtonTapped:(UIButton *)sender {
    NSString *result = [NSString stringWithFormat:@"%d", 4];
    mathscomputeObject.selectedNumber = 4;
    [self changeLabelText:result];
    [mathscomputeObject checkIfNewOperation];
}

- (IBAction)fiveButtonTapped:(UIButton *)sender {
    NSString *result = [NSString stringWithFormat:@"%d", 5];
    mathscomputeObject.selectedNumber = 5;
    [self changeLabelText:result];
    [mathscomputeObject checkIfNewOperation];
}

- (IBAction)sixButtonTapped:(UIButton *)sender {
    NSString *result = [NSString stringWithFormat:@"%d", 6];
    mathscomputeObject.selectedNumber = 6;
    [self changeLabelText:result];
    [mathscomputeObject checkIfNewOperation];
}

- (IBAction)sevenButtonTapped:(UIButton *)sender {
    NSString *result = [NSString stringWithFormat:@"%d", 7];
    mathscomputeObject.selectedNumber = 7;
    [self changeLabelText:result];
    [mathscomputeObject checkIfNewOperation];
}

- (IBAction)eightButtonTapped:(UIButton *)sender {
    NSString *result = [NSString stringWithFormat:@"%d", 8];
    mathscomputeObject.selectedNumber = 8;
    [self changeLabelText:result];
    [mathscomputeObject checkIfNewOperation];
}

- (IBAction)nineButtonTapped:(UIButton *)sender {
    NSString *result = [NSString stringWithFormat:@"%d", 9];
    mathscomputeObject.selectedNumber = 9;
    [self changeLabelText:result];
    [mathscomputeObject checkIfNewOperation];
}

- (IBAction)zeroButtonTapped:(UIButton *)sender {
    NSString *result = [NSString stringWithFormat:@"%d", 0];
    mathscomputeObject.selectedNumber = 0;
    [self changeLabelText:result];
    [mathscomputeObject checkIfNewOperation];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

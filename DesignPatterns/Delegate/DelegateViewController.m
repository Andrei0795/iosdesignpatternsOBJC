//
//  DelegateViewController.m
//  DesignPatterns
//
//  Created by Andrei Ionescu on 27/11/2017.
//  Copyright © 2017 Andrei Ionescu. All rights reserved.
//

#import "DelegateViewController.h"
#import "AddressObject.h"
#import "AddressViewController.h"

@interface DelegateViewController ()

@end

@implementation DelegateViewController

AddressObject *address;

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    if (address == nil) {
        NSLog(@"user did not enter second screen yet");
        statusImage.hidden = statusLabel.hidden = yourCompleteAddressIsLabel.hidden = addressLabel.hidden = YES;
    } else {
        statusImage.hidden = statusLabel.hidden = yourCompleteAddressIsLabel.hidden = addressLabel.hidden = NO;
        
        if ([address areThereEmptyFields]) {
            yourCompleteAddressIsLabel.hidden = addressLabel.hidden = YES;
            statusLabel.text = @"Warning, some of the fields are empty. Please make sure you have filled everything!";
            statusLabel.textColor = [UIColor redColor];
            statusImage.image = [UIImage imageNamed:@"bad"];
        } else {
            yourCompleteAddressIsLabel.hidden = addressLabel.hidden = NO;
            statusLabel.text = @"Thank you for providing your full address!";
            statusLabel.textColor = [UIColor greenColor];
            statusImage.image = [UIImage imageNamed:@"good"];
            addressLabel.text = [address getDescription];
        }
        
    }
    
}

- (IBAction)addressButtonTapped:(id)sender {
    [self performSegueWithIdentifier:@"Addresssegue" sender:self];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    AddressViewController *vc = [segue destinationViewController];
    vc.delegate = self;
}

#pragma mark - Delegate

- (void)setAddressObject:(AddressObject *)addressObject {
    address = addressObject;
}


@end

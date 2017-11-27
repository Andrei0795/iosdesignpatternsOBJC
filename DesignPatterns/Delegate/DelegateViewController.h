//
//  DelegateViewController.h
//  DesignPatterns
//
//  Created by Andrei Ionescu on 27/11/2017.
//  Copyright © 2017 Andrei Ionescu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddressViewController.h"


@interface DelegateViewController : UIViewController <AddressViewControllerDelegate>
{
    IBOutlet UIButton *addressButton;
    IBOutlet UIImageView *statusImage;
    IBOutlet UILabel *statusLabel;
    IBOutlet UILabel *addressLabel;
    IBOutlet UILabel *yourCompleteAddressIsLabel;

}

- (IBAction)addressButtonTapped:(id)sender;

@end

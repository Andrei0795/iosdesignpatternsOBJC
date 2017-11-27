//
//  AddressViewController.h
//  DesignPatterns
//
//  Created by Andrei Ionescu on 27/11/2017.
//  Copyright © 2017 Andrei Ionescu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddressObject.h"

@protocol AddressViewControllerDelegate
-(void)setAddressObject:(AddressObject *)addressObject;
@end

@interface AddressViewController : UIViewController<UITextFieldDelegate>
{
    IBOutlet UITextField *name;
    IBOutlet UITextField *surname;
    IBOutlet UITextField *postcode;
    IBOutlet UITextField *houseStreetNumber;
    IBOutlet UITextField *cityCountry;
}
@property (weak) id <AddressViewControllerDelegate> delegate;

@end

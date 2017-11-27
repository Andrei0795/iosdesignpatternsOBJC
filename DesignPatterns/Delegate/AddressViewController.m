//
//  AddressViewController.m
//  DesignPatterns
//
//  Created by Andrei Ionescu on 27/11/2017.
//  Copyright © 2017 Andrei Ionescu. All rights reserved.
//

#import "AddressViewController.h"

@interface AddressViewController ()
@property AddressObject *addressObject;
@property CGFloat initialViewY;

@end

@implementation AddressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.addressObject = [[AddressObject alloc]init];
    name.delegate = surname.delegate = postcode.delegate = houseStreetNumber.delegate = cityCountry.delegate = self;
    self.initialViewY = self.view.frame.origin.y;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - TextField Delegates

// This method is called once we click inside the textField
-(void)textFieldDidBeginEditing:(UITextField *)textField {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
}

// This method is called once we complete editing
-(void)textFieldDidEndEditing:(UITextField *)textField {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];
    [self changeAndSendAddressObject];
    
}

-(void)changeAndSendAddressObject {
    self.addressObject.name = name.text;
    self.addressObject.surname = surname.text;
    self.addressObject.postcode = postcode.text;
    self.addressObject.streetHouseNumber = houseStreetNumber.text;
    self.addressObject.cityCountry = cityCountry.text;
    
    [self.delegate setAddressObject: self.addressObject];
}


// This method enables or disables the processing of return key
-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    if(range.length + range.location > textField.text.length)
    {
        return NO;
    }
    
    NSUInteger newLength = [textField.text length] + [string length] - range.length;
    return newLength <= 25;
}

- (void)keyboardDidShow:(NSNotification *)notification
{
    if ([houseStreetNumber isFirstResponder]) {
        [self.view setFrame:CGRectMake(self.view.frame.origin.x,self.view.frame.origin.y-50,self.view.frame.size.width,self.view.frame.size.height)];
    } else if ([cityCountry isFirstResponder]) {
        [self.view setFrame:CGRectMake(self.view.frame.origin.x,self.view.frame.origin.y-100,self.view.frame.size.width,self.view.frame.size.height)];
    }
}

-(void)keyboardDidHide:(NSNotification *)notification
{
    [self.view setFrame:CGRectMake(self.view.frame.origin.x, self.initialViewY,self.view.frame.size.width,self.view.frame.size.height)];
}

@end

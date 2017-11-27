//
//  AddressObject.h
//  DesignPatterns
//
//  Created by Andrei Ionescu on 27/11/2017.
//  Copyright © 2017 Andrei Ionescu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressObject : NSObject

@property NSString *name;
@property NSString *surname;
@property NSString *postcode;
@property NSString *streetHouseNumber;
@property NSString *cityCountry;

-(BOOL)areThereEmptyFields;
-(NSString *)getDescription;

@end

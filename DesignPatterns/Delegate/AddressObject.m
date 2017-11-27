//
//  AddressObject.m
//  DesignPatterns
//
//  Created by Andrei Ionescu on 27/11/2017.
//  Copyright © 2017 Andrei Ionescu. All rights reserved.
//

#import "AddressObject.h"

@implementation AddressObject

-(BOOL)areThereEmptyFields {
    BOOL result = NO;
    if (self.name == nil || [self.name  isEqual: @""]) {
        return YES;
    }
    if (self.surname == nil || [self.surname  isEqual: @""]) {
        return YES;
    }
    if (self.postcode == nil || [self.postcode  isEqual: @""]) {
        return YES;
    }
    if (self.streetHouseNumber == nil || [self.streetHouseNumber  isEqual: @""]) {
        return YES;
    }
    if (self.cityCountry == nil || [self.cityCountry  isEqual: @""]) {
        return YES;
    }
    return result;
}

- (NSString*)getDescription {
    return [NSString stringWithFormat:@"Name and Surname: %@ %@ \nFull Address: %@, %@, %@", self.name, self.surname, self.postcode, self.streetHouseNumber, self.cityCountry];
}

@end

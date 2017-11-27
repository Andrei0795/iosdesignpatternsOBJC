//
//  MathsComputationObject.m
//  DesignPatterns
//
//  Created by Andrei Ionescu on 27/11/2017.
//  Copyright © 2017 Andrei Ionescu. All rights reserved.
//

#import "MathsComputationObject.h"

@implementation MathsComputationObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.totalResult = 0;
        self.computingType = kNothing;
    }
    return self;
}

- (void) checkIfNewOperation {
    if (self.computingType == kNothing) {
        self.totalResult = 0;
    }
}

-(void) setSelectedNumberToZero {
    self.selectedNumber = 0;
}

- (void) checkIfWantsToUseResult {
    if (self.selectedNumber == 0 && (self.computingType == kMultiply || self.computingType == kDivide) ) {
        self.selectedNumber = 1;
    } 
    
    //Also check if total is zero
    if (self.totalResult == 0 && (self.computingType == kMultiply || self.computingType == kDivide) ) {
        self.totalResult = 1;
    }
}

- (NSString *)returnTotal {
    return [NSString stringWithFormat:@"%f", self.totalResult];
}


- (NSString *)returnAddition:(double)element {
    self.totalResult += element;
    return [NSString stringWithFormat:@"%f", self.totalResult];
}

- (NSString *)returnSubstraction:(double)element {
    self.totalResult -= element;
    return [NSString stringWithFormat:@"%f", self.totalResult];
}

- (NSString *)returnMultiplication:(double)element {
    self.totalResult *= element;
    return [NSString stringWithFormat:@"%f", self.totalResult];
}

- (NSString *)returnDivision:(double)element {
    self.totalResult /= element;
    return [NSString stringWithFormat:@"%f", self.totalResult];
}

@end

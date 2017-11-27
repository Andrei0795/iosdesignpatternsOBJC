//
//  MathsComputationObject.h
//  DesignPatterns
//
//  Created by Andrei Ionescu on 27/11/2017.
//  Copyright © 2017 Andrei Ionescu. All rights reserved.
//

#import <Foundation/Foundation.h>

enum ComputingType{
    kPlus,
    kMinus,
    kMultiply,
    kDivide,
    kNothing
};

@interface MathsComputationObject : NSObject

- (NSString*) returnAddition:(double)element;
- (NSString*) returnSubstraction:(double)element;
- (NSString*) returnMultiplication:(double)element;
- (NSString*) returnDivision:(double)element;
- (NSString*) returnTotal;

- (void) checkIfNewOperation;
- (void) checkIfWantsToUseResult;
- (void) setSelectedNumberToZero;

@property (nonatomic, assign) enum ComputingType computingType;
@property double totalResult;
@property double selectedNumber;

@end

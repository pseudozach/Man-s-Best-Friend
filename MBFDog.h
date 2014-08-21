//
//  MBFDog.h
//  Man's Best Friend
//
//  Created by Mac on 8/20/14.
//  Copyright (c) 2014 Pseudozach. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *name;

-(void)bark;
-(void)barkANumberOfTimes:(int)numberOfTimes;
-(void)changeBreedToWerewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(int)ageinDogYearsFromAge:(int)regularAge;

-(void)printBelow:(int)input;
-(void)printBetween:(int)firstNumber secondNumber:(int)secondNumber;

@end

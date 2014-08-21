//
//  MBFDog.m
//  Man's Best Friend
//
//  Created by Mac on 8/20/14.
//  Copyright (c) 2014 Pseudozach. All rights reserved.
//

#import "MBFDog.h"

@implementation MBFDog

-(void)bark
{
    NSLog(@"hav hav");
}

-(void)barkANumberOfTimes:(int)numberOfTimes
{
    for (int bark = 1; bark < numberOfTimes ; bark++)
    {
        [self bark];
    }
}


-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if(!isLoud)
    {
        //do nada
    }
}

-(void)changeBreedToWerewolf
{
    self.breed = @"Werewolf";
}

-(int)ageinDogYearsFromAge:(int)regularAge
{
    int newAge = regularAge * 7;
    return newAge;
}

-(void)printBelow:(int)input
{
    for(int i = input; i > 0; i--)
    {
        NSLog(@"%i", i);
    }
}

-(void)printBetween:(int)firstNumber secondNumber:(int)secondNumber
{
    for(int i = firstNumber; i > secondNumber; i--)
    {
        NSLog(@"%i", i);
    }
}

@end

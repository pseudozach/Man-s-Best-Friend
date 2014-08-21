//
//  MBFViewController.m
//  Man's Best Friend
//
//  Created by Mac on 8/20/14.
//  Copyright (c) 2014 Pseudozach. All rights reserved.
//

#import "MBFViewController.h"
#import "MBFDog.h"

@interface MBFViewController ()

@end

@implementation MBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.name = @"Seven";
    myDog.breed = @"Bulldog";
    myDog.age = 1;
//    int dogYears = [myDog ageinDogYearsFromAge:myDog.age];
//    [myDog printBelow:3];
//    [myDog printBetween:6 secondNumber:2];
    myDog.image = [UIImage imageNamed:@"buying-bike_17477_600x450.jpg"];
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    MBFDog *secondDog = [[MBFDog alloc] init];
    secondDog.name = @"Marin";
    secondDog.breed = @"kron";
    secondDog.image = [UIImage imageNamed:@"Marin_bike.jpg"];
    
    MBFDog *thirdDog = [[MBFDog alloc] init];
    thirdDog.name = @"velespit";
    thirdDog.breed = @"bmx";
    thirdDog.image = [UIImage imageNamed:@"bike.jpg"];    
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender {
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    MBFDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
//    self.myImageView.image = randomDog.image;
//    self.nameLabel.text = randomDog.name;
//    self.breedLabel.text = randomDog.breed;
    
    [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
    }];
    
    sender.title = @"daha fazla";
    
}
@end

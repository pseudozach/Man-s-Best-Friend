//
//  MBFViewController.h
//  Man's Best Friend
//
//  Created by Mac on 8/20/14.
//  Copyright (c) 2014 Pseudozach. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MBFViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;

@property (strong, nonatomic) NSMutableArray *myDogs;
- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;

@end

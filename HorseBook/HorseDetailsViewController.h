//
//  HorseDetailsViewController.h
//  HorseBook
//
//  Created by Ryan Verner on 2/28/14.
//  Copyright (c) 2014 Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HorseDetailsViewController : UIViewController

@property NSDictionary *horseInfo;
@property (weak, nonatomic) IBOutlet UIImageView *picture;
@property (weak, nonatomic) IBOutlet UINavigationItem *name;
@property (weak, nonatomic) IBOutlet UILabel *bio;

@end

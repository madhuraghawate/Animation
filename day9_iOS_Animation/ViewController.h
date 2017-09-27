//
//  ViewController.h
//  day9_iOS_Animation
//
//  Created by Student 5 on 14/09/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *Ballimage;
- (IBAction)animateBall:(id)sender;

@property CGRect ballFrame;
@end


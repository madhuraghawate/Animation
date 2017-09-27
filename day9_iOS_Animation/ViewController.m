//
//  ViewController.m
//  day9_iOS_Animation
//
//  Created by Student 5 on 14/09/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ballFrame=self.Ballimage.frame;
    //NSLog(@"height=%lf",self.Ballimage.frame.size.height);
    //NSLog(@"width=%lf",self.Ballimage.frame.size.width);
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)animateBall:(id)sender
{
    UIButton *localButton=sender;
    switch (localButton.tag)
    {
        case 101:
            [self animateNorthWest];
            break;
          
        case 102:
            [self animateNorth];
            break;
            
        case 103:
            [self animateNorthEast];
            break;
            
        case 104:
            [self animateWest];
            break;
            
        case 105:
            [self animateCenter];
            break;
            
        case 106:
            [self animateEast];
            break;
            
        case 107:
            [self animateSouthWest];
            break;
            
        case 108:
            [self animateSouth];
            break;
        
        case 109:
            [self animateSouthEast];
            break;
            
        case 110:
            [self animateZoomIn];
            break;
            
        case 111:
            [self animateZoomOut];
            break;
            
        default:
            break;
    }
}

-(void)animateCenter
{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
//        self.Ballimage.frame=CGRectMake(self.Ballimage.frame.origin.x, self.Ballimage.frame.origin.y, self.Ballimage.frame.size.width, self.Ballimage.frame.size.height);
      //  self.Ballimage.center=self.view.center;
        self.Ballimage.frame=self.ballFrame;
        
    }completion:^(BOOL finished)
     {
         NSLog(@"Center animation Finished");
     }];
    
}


-(void)animateNorth
{
    if(self.Ballimage.frame.origin.y>5)
    {
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.Ballimage.frame=CGRectMake(self.Ballimage.frame.origin.x, self.Ballimage.frame.origin.y-100, self.Ballimage.frame.size.width, self.Ballimage.frame.size.height);
        
    }completion:^(BOOL finished)
    {
        NSLog(@"Up animation Finished");
    }];
}
else
{
    NSLog(@"UP animation not possible");
}

}

-(void)animateSouth
{
    if(self.Ballimage.frame.origin.y<500)
    {
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.Ballimage.frame=CGRectMake(self.Ballimage.frame.origin.x, self.Ballimage.frame.origin.y+100, self.Ballimage.frame.size.width, self.Ballimage.frame.size.height);
        
    }completion:^(BOOL finished)
     {
         NSLog(@"Down animation Finished");
     }];
    }
    else
    {
        NSLog(@"Down animation not possible");

    }
}

-(void)animateWest
{
    if(self.Ballimage.frame.origin.x>5)
    {
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.Ballimage.frame=CGRectMake(self.Ballimage.frame.origin.x-100, self.Ballimage.frame.origin.y, self.Ballimage.frame.size.width, self.Ballimage.frame.size.height);
        
    }completion:^(BOOL finished)
     {
         NSLog(@"West animation Finished");
     }];
}
else
{
     NSLog(@"West animation not possible");
}

}

-(void)animateEast
{
    if(self.Ballimage.frame.origin.x<300)
    {
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.Ballimage.frame=CGRectMake(self.Ballimage.frame.origin.x+100, self.Ballimage.frame.origin.y, self.Ballimage.frame.size.width, self.Ballimage.frame.size.height);
        
    }completion:^(BOOL finished)
     {
         NSLog(@"East animation Finished");
     }];
    }
    else
    {
        NSLog(@"East animation not possible");
    }

}

-(void)animateNorthEast
{
    if(self.Ballimage.frame.origin.x<300&&self.Ballimage.frame.origin.y>5)
    {
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.Ballimage.frame=CGRectMake(self.Ballimage.frame.origin.x+100, self.Ballimage.frame.origin.y-100, self.Ballimage.frame.size.width, self.Ballimage.frame.size.height);
        
    }completion:^(BOOL finished)
     {
         NSLog(@"NorthEast animation Finished");
     }];
    }
    else
    {
        NSLog(@"NorthEast animation not possible");
    }
    
}

-(void)animateNorthWest
{
    if(self.Ballimage.frame.origin.x>5&&self.Ballimage.frame.origin.y>5)
    {
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.Ballimage.frame=CGRectMake(self.Ballimage.frame.origin.x-100, self.Ballimage.frame.origin.y-100, self.Ballimage.frame.size.width, self.Ballimage.frame.size.height);
        
    }completion:^(BOOL finished)
     {
         NSLog(@"NorthEast animation Finished");
     }];
}
else
{
    NSLog(@"NorthWest animation not possible");
}

}

-(void)animateSouthEast
{
    if(self.Ballimage.frame.origin.y<500&&self.Ballimage.frame.origin.x<300)
    {

    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.Ballimage.frame=CGRectMake(self.Ballimage.frame.origin.x+100, self.Ballimage.frame.origin.y+100, self.Ballimage.frame.size.width, self.Ballimage.frame.size.height);
        
    }completion:^(BOOL finished)
     {
         NSLog(@"SouthEast animation Finished");
     }];
    }
    else
    {
        NSLog(@"SouthEast animation not possible");
    }

}

-(void)animateSouthWest
{
    if(self.Ballimage.frame.origin.y<500&&self.Ballimage.frame.origin.x>5)
       {

    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.Ballimage.frame=CGRectMake(self.Ballimage.frame.origin.x-100, self.Ballimage.frame.origin.y+100, self.Ballimage.frame.size.width, self.Ballimage.frame.size.height);
        
    }completion:^(BOOL finished)
     {
         NSLog(@"SouthWest animation Finished");
     }];
}
else
{
    NSLog(@"SouthWest animation not possible");
}


}

-(void)animateZoomIn
{
    if(self.Ballimage.frame.size.width<=277&&self.Ballimage.frame.size.height<=272)
    {
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.Ballimage.frame=CGRectMake(self.Ballimage.frame.origin.x-20, self.Ballimage.frame.origin.y-20, self.Ballimage.frame.size.width+50, self.Ballimage.frame.size.height+50);
        
    }completion:^(BOOL finished)
     {
         NSLog(@"Zooming in Finished");
     }];
    }
    else
    {
        NSLog(@"Zooming in limit exceed");
    }
    
}

-(void)animateZoomOut
{
    if(self.Ballimage.frame.size.width>=37&&self.Ballimage.frame.size.height>=32)
    {

    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.Ballimage.frame=CGRectMake(self.Ballimage.frame.origin.x, self.Ballimage.frame.origin.y, self.Ballimage.frame.size.width-30, self.Ballimage.frame.size.height-30);
        
    }completion:^(BOOL finished)
     {
         NSLog(@"Zooming out Finished");
     }];
}
else
{
    NSLog(@"Zooming out limit exceed");
}


}


@end

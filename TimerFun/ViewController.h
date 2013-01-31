//
//  ViewController.h
//  TimerFun
//
//  Created by Jay Versluis on 31/01/2013.
//  Copyright (c) 2013 Jay Versluis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *countingLabel;
@property int counter;
@property (strong, nonatomic) NSTimer *myTimer;

- (IBAction)startTimer:(id)sender;
- (IBAction)stopTimer:(id)sender;

@end

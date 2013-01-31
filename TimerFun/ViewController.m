//
//  ViewController.m
//  TimerFun
//
//  Created by Jay Versluis on 31/01/2013.
//  Copyright (c) 2013 Jay Versluis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startTimer:(id)sender {
    
    // initialize our counter
    self.counter = 0;

    // setup the timer with a 0.1 second repeat
    
    self.myTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateLabel) userInfo:nil repeats:YES];

}

- (IBAction)stopTimer:(id)sender {
    
    // stop the timer
    [self.myTimer invalidate];

    
}

- (void)updateLabel {
    
    // increase out counter by 1
    self.counter++;
    
    // and update our label
    NSString *myNumber = [[NSString alloc]initWithFormat:@"%d", self.counter];
    self.countingLabel.text = myNumber;
    
}

@end

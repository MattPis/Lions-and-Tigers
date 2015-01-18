//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Matt on 1/16/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

#import "HUDViewController.h"
#import "RootViewController.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
#pragma mark actions

- (IBAction)lionsButtonTapped:(id)sender {
    [self.delegate changeToLions];

}
- (IBAction)tigersButtonTapped:(id)sender {
    [self.delegate changeToTigers];

}



@end

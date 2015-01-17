//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Matt on 1/16/15.
//  Copyright (c) 2015 Matt. All rights reserved.
#import "TopViewController.h"
#import "ViewController.h"

@interface ViewController ()<TopDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftPin;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightpin;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topPin;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)topRevealButtonTapped{

    if (self.leftPin.constant==-16) {
        self.leftPin.constant = 130;
        self.rightpin.constant = -160;
        self.topPin.constant = -20;
        [UIView animateWithDuration:0.5 animations:^{[self.view layoutIfNeeded];}];

    }
    else{
        self.leftPin.constant = -16;
        self.rightpin.constant = -16;
        self.topPin.constant = 0;
        [UIView animateWithDuration:0.5 animations:^{[self.view layoutIfNeeded];}];

    }
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"TopSegue"]) {
        UINavigationController *navC = segue.destinationViewController;
        TopViewController *tvc = navC.childViewControllers[0];
        tvc.delegate= self;
    }
}

@end

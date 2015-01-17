//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Matt on 1/16/15.
//  Copyright (c) 2015 Matt. All rights reserved.
#import "TopViewController.h"
#import "HUDViewController.h"
#import "RootViewController.h"

@interface RootViewController ()<TopDelegate, HudViewControllerDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftPin;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightpin;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topPin;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
# pragma mark TopViewController delegate
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
        NSLog(@"topSegue");
    }
    else if ([segue.identifier isEqualToString:@"HUDSegue"]){
        NSLog(@"bottomSegue");
        HUDViewController *hVC = segue.destinationViewController;
        hVC.delegate = self;
    }
    
}
#pragma mark HUDViewController delegate;
-(void)changeToLions{
    TopViewController *Tvc = [[TopViewController alloc]init];
    [Tvc displayLions];

}
-(void)changeToTigers{
    TopViewController *Tvc = [[TopViewController alloc]init];
    [Tvc displayTigers];
}


@end

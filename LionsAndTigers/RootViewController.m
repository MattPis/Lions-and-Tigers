//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Matt on 1/16/15.
//  Copyright (c) 2015 Matt. All rights reserved.
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
        self.leftPin.constant = 180;
        self.rightpin.constant = -220;
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
#pragma mark HUDViewController delegate;
-(void)changeToLions{
    [self.topViewController displayLions];


}
-(void)changeToTigers{
    [self.topViewController displayTigers];

}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"TopSegue"]) {
        UINavigationController *navController = segue.destinationViewController;
        self.topViewController = [navController.childViewControllers objectAtIndex:0];
        self.topViewController.delegate = self;

    }
    else if ([segue.identifier isEqualToString:@"HUDSegue"]){
        HUDViewController *hudViewController = segue.destinationViewController;
        hudViewController.delegate = self;
    }

}


@end

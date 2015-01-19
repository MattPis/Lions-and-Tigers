//
//  CustomCollectionViewCell.m
//  LionsAndTigers
//
//  Created by Matt on 1/17/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

#import "CustomCollectionViewCell.h"

@implementation CustomCollectionViewCell


-(void)animate{
    NSLog(@"animate");
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:2];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.imageView cache:YES];
    [UIView commitAnimations];

}

@end

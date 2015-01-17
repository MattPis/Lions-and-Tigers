//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Matt on 1/16/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

#import "ViewController.h"

@protocol TopDelegate

-(void)topRevealButtonTapped;

@end


@interface TopViewController : ViewController
@property id<TopDelegate>delegate;


@end

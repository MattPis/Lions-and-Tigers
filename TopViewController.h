//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Matt on 1/16/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

#import "RootViewController.h"

@protocol TopDelegate

@optional
-(void)topRevealButtonTapped;


@end

@interface TopViewController : RootViewController{
    NSMutableArray *animalsArray;
}

@property id<TopDelegate>delegate;

-(void)displayLions;
-(void)displayTigers;
@end

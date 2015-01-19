//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Matt on 1/16/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomCollectionViewCell.h"

@protocol TopDelegate

@optional
-(void)topRevealButtonTapped;

@end

@interface TopViewController : UIViewController
@property id<TopDelegate>delegate;
@property CustomCollectionViewCell *cell;

-(void)displayTigers;
-(void)displayLions;
@end

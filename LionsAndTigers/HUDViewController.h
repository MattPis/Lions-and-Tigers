//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Matt on 1/16/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HudViewControllerDelegate <NSObject>

@optional
-(void)changeToLions;
-(void)changeToTigers;

@end



@interface HUDViewController : UIViewController
@property id<HudViewControllerDelegate>delegate;


@end

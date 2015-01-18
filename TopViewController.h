//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Matt on 1/16/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol TopDelegate

@optional
-(void)topRevealButtonTapped;


@end

@interface TopViewController : UIViewController
@property(weak, nonatomic) id<TopDelegate>delegate;


@end

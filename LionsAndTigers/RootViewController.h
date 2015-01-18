//
//  ViewController.h
//  LionsAndTigers
//
//  Created by Matt on 1/16/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RootDelegate <NSObject>

@optional
-(void)loadTigers;
-(void)loadLions;
@end
@interface RootViewController : UIViewController

@property (weak) id<RootDelegate>delegate;

@end


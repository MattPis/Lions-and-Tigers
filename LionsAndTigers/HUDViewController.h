//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Matt on 1/16/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

#import "ViewController.h"

@protocol HUDDelegate <NSObject>

@end

@interface HUDViewController : ViewController

@property id<HUDDelegate>delegate;

@end

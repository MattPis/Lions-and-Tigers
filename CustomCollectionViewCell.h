//
//  CustomCollectionViewCell.h
//  LionsAndTigers
//
//  Created by Matt on 1/17/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol cellDelegate <NSObject>

@optional


@end

@interface CustomCollectionViewCell : UICollectionViewCell
@property (weak) id<cellDelegate>delegate;
@property IBOutlet UIImageView *imageView;


-(void)animate;


@end
